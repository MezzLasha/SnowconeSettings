.class public Lcom/android/settings/network/UiccSlotUtil;
.super Ljava/lang/Object;
.source "UiccSlotUtil.java"


# direct methods
.method public static getSlotInfos(Landroid/telephony/TelephonyManager;)Lcom/google/common/collect/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/telephony/UiccSlotInfo;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 69
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static performSwitchToRemovableSlot(ILandroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/settings/network/UiccSlotsException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 119
    :try_start_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 120
    new-instance v3, Lcom/android/settings/network/CarrierConfigChangedReceiver;

    invoke-direct {v3, v1}, Lcom/android/settings/network/CarrierConfigChangedReceiver;-><init>(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/settings/network/CarrierConfigChangedReceiver;->registerOn(Landroid/content/Context;)V

    new-array v0, v2, [I

    const/4 v2, 0x0

    aput p0, v0, v2

    .line 122
    invoke-static {p1, v0}, Lcom/android/settings/network/UiccSlotUtil;->switchSlots(Landroid/content/Context;[I)V

    const-wide/16 v4, 0x61a8

    .line 123
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    invoke-virtual {p1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 125
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const-string v1, "UiccSlotUtil"

    const-string v2, "Failed switching to physical slot."

    .line 126
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    :cond_1
    throw p0
.end method

.method private static varargs switchSlots(Landroid/content/Context;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/settings/network/UiccSlotsException;
        }
    .end annotation

    .line 143
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 144
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "UiccSlotUtil"

    const-string p1, "Multiple active slots supported. Not calling switchSlots."

    .line 146
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 149
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->switchSlots([I)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 150
    :cond_1
    new-instance p0, Lcom/android/settings/network/UiccSlotsException;

    const-string p1, "Failed to switch slots"

    invoke-direct {p0, p1}, Lcom/android/settings/network/UiccSlotsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized switchToRemovableSlot(ILandroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/settings/network/UiccSlotsException;
        }
    .end annotation

    const-class v0, Lcom/android/settings/network/UiccSlotUtil;

    monitor-enter v0

    .line 84
    :try_start_0
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_5

    .line 88
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 89
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "UiccSlotUtil"

    const-string p1, "Multiple active slots supported. Not calling switchSlots."

    .line 91
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit v0

    return-void

    .line 94
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v1

    const/4 v2, -0x1

    if-ne p0, v2, :cond_2

    const/4 p0, 0x0

    .line 96
    :goto_0
    array-length v2, v1

    if-ge p0, v2, :cond_3

    .line 97
    aget-object v2, v1, p0

    invoke-virtual {v2}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v1, p0

    .line 98
    invoke-virtual {v2}, Landroid/telephony/UiccSlotInfo;->getIsActive()Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, v1, p0

    .line 99
    invoke-virtual {v2}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    aget-object v2, v1, p0

    .line 100
    invoke-virtual {v2}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 101
    invoke-static {p0, p1}, Lcom/android/settings/network/UiccSlotUtil;->performSwitchToRemovableSlot(ILandroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 106
    :cond_2
    :try_start_2
    array-length v2, v1

    if-ge p0, v2, :cond_4

    aget-object v2, v1, p0

    invoke-virtual {v2}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 109
    aget-object v1, v1, p0

    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->getIsActive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 110
    invoke-static {p0, p1}, Lcom/android/settings/network/UiccSlotUtil;->performSwitchToRemovableSlot(ILandroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :cond_3
    monitor-exit v0

    return-void

    .line 107
    :cond_4
    :try_start_3
    new-instance p1, Lcom/android/settings/network/UiccSlotsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The given slotId is not a removable slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/network/UiccSlotsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_5
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "Do not call switchToRemovableSlot on the main thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
