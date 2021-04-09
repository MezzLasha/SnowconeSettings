.class public Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimSlotChangeReceiver.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    invoke-static {}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->get()Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->mSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private findUiccCardInfoBySlot(Landroid/telephony/TelephonyManager;I)Landroid/telephony/UiccCardInfo;
    .locals 1

    .line 130
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 134
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/sim/receivers/-$$Lambda$SimSlotChangeReceiver$Ht9mrKk4mH-knbN_XUFMXpJwwfM;

    invoke-direct {v0, p2}, Lcom/android/settings/sim/receivers/-$$Lambda$SimSlotChangeReceiver$Ht9mrKk4mH-knbN_XUFMXpJwwfM;-><init>(I)V

    .line 135
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 136
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 137
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/UiccCardInfo;

    return-object p0
.end method

.method private isSimSlotStateValid(Landroid/content/Context;)Z
    .locals 9

    .line 84
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 85
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v0

    const-string v1, "SlotChangeReceiver"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "slotInfos is null. Unable to get slot infos."

    .line 87
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    .line 92
    :goto_0
    array-length v6, v0

    if-ge v4, v6, :cond_7

    .line 93
    aget-object v6, v0, v4

    if-nez v6, :cond_1

    return v2

    .line 102
    :cond_1
    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_6

    .line 103
    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    goto :goto_2

    .line 108
    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->findUiccCardInfoBySlot(Landroid/telephony/TelephonyManager;I)Landroid/telephony/UiccCardInfo;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_1

    .line 112
    :cond_3
    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getCardId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 113
    invoke-virtual {v7}, Landroid/telephony/UiccCardInfo;->getIccId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    move v5, v2

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 104
    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The SIM state is in an error. Drop the event. SIM info: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7
    if-eqz v5, :cond_8

    const-string p0, "All UICC card strings are empty. Drop this event."

    .line 121
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8
    return v3
.end method

.method static synthetic lambda$findUiccCardInfoBySlot$1(ILandroid/telephony/UiccCardInfo;)Z
    .locals 0

    .line 135
    invoke-virtual {p1}, Landroid/telephony/UiccCardInfo;->getSlotIndex()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Context;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->shouldHandleSlotChange(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    monitor-exit v0

    return-void

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->mSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    invoke-virtual {p0, p1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->onSlotsStatusChange(Landroid/content/Context;)V

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private shouldHandleSlotChange(Landroid/content/Context;)Z
    .locals 4

    .line 63
    const-class v0, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    const/4 v1, 0x0

    const-string v2, "SlotChangeReceiver"

    if-eqz v0, :cond_3

    .line 64
    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->getOtaStatus()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string p0, "Ignore slot changes because eSIM OTA is in progress."

    .line 70
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 74
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->isSimSlotStateValid(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Ignore slot changes because SIM states are not valid."

    .line 75
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    return v3

    :cond_3
    :goto_0
    const-string p0, "Ignore slot changes because EuiccManager is disabled."

    .line 65
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$SimSlotChangeReceiver(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->lambda$onReceive$0(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.telephony.action.SIM_SLOT_STATUS_CHANGED"

    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignore slot changes due to unexpected action: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlotChangeReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 50
    :cond_0
    new-instance p2, Lcom/android/settings/sim/receivers/-$$Lambda$SimSlotChangeReceiver$ir57kHC3LXh2VH-TZFW_ZF7SphM;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/sim/receivers/-$$Lambda$SimSlotChangeReceiver$ir57kHC3LXh2VH-TZFW_ZF7SphM;-><init>(Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
