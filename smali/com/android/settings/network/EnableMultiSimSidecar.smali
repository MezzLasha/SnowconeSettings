.class public Lcom/android/settings/network/EnableMultiSimSidecar;
.super Lcom/android/settings/AsyncTaskSidecar;
.source "EnableMultiSimSidecar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/AsyncTaskSidecar<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCarrierConfigChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mNumOfActiveSim:I

.field final mSimCardStateChangedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/android/settings/AsyncTaskSidecar;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mSimCardStateChangedLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mNumOfActiveSim:I

    .line 60
    new-instance v0, Lcom/android/settings/network/EnableMultiSimSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/EnableMultiSimSidecar$1;-><init>(Lcom/android/settings/network/EnableMultiSimSidecar;)V

    iput-object v0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mCarrierConfigChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/EnableMultiSimSidecar;)I
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/network/EnableMultiSimSidecar;->getReadySimsCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/EnableMultiSimSidecar;)I
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/network/EnableMultiSimSidecar;->getActiveSlotsCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/network/EnableMultiSimSidecar;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mNumOfActiveSim:I

    return p0
.end method

.method public static get(Landroid/app/FragmentManager;)Lcom/android/settings/network/EnableMultiSimSidecar;
    .locals 3

    .line 53
    const-class v0, Lcom/android/settings/network/EnableMultiSimSidecar;

    const-string v1, "EnableMultiSimSidecar"

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/settings/SidecarFragment;->get(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/android/settings/SidecarFragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/EnableMultiSimSidecar;

    return-object p0
.end method

.method private getActiveSlotsCount()I
    .locals 4

    .line 163
    iget-object p0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 168
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v3, p0, v0

    if-eqz v3, :cond_1

    .line 169
    invoke-virtual {v3}, Landroid/telephony/UiccSlotInfo;->getIsActive()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private getReadySimsCount()I
    .locals 6

    .line 146
    iget-object v0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/network/EnableMultiSimSidecar;->getActiveRemovableLogicalSlotIds()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 149
    iget-object v4, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private updateMultiSimConfig()Z
    .locals 6

    const-string v0, "EnableMultiSimSidecar"

    const/4 v1, 0x0

    .line 121
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mCarrierConfigChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    iget-object v2, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mNumOfActiveSim:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->switchMultiSimConfig(I)V

    .line 126
    iget-object v2, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mSimCardStateChangedLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v3, 0x9c40

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Multi SIM were successfully enabled."

    .line 128
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mCarrierConfigChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return v0

    :cond_0
    :try_start_1
    const-string v2, "Timeout for waiting SIM status."

    .line 131
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mCarrierConfigChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "Failed to enable multiple SIM due to InterruptedException"

    .line 135
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 138
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mCarrierConfigChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    throw v0
.end method


# virtual methods
.method protected doInBackground(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/network/EnableMultiSimSidecar;->updateMultiSimConfig()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/EnableMultiSimSidecar;->doInBackground(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getActiveRemovableLogicalSlotIds()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object p0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 182
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 183
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 184
    invoke-virtual {v3}, Landroid/telephony/UiccSlotInfo;->getIsActive()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    invoke-virtual {v3}, Landroid/telephony/UiccSlotInfo;->getLogicalSlotIdx()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SidecarFragment;->setState(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SidecarFragment;->setState(II)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/EnableMultiSimSidecar;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public run(I)V
    .locals 4

    .line 100
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 101
    iput p1, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mNumOfActiveSim:I

    .line 103
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "EnableMultiSimSidecar"

    if-le p1, v0, :cond_0

    const-string p1, "Requested number of active SIM is greater than supported modem count."

    .line 104
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/SidecarFragment;->setState(II)V

    return-void

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->doesSwitchMultiSimConfigTriggerReboot()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "The device does not support reboot free DSDS."

    .line 109
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/SidecarFragment;->setState(II)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/AsyncTaskSidecar;->run(Ljava/lang/Object;)V

    return-void
.end method
