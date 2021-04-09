.class public Lcom/android/settings/sim/receivers/SimSlotChangeHandler;
.super Ljava/lang/Object;
.source "SimSlotChangeHandler.java"


# static fields
.field private static volatile sSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSubMgr:Landroid/telephony/SubscriptionManager;

.field private mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/settings/sim/receivers/SimSlotChangeHandler;
    .locals 2

    .line 51
    sget-object v0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->sSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    if-nez v0, :cond_1

    .line 52
    const-class v0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->sSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    invoke-direct {v1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;-><init>()V

    sput-object v1, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->sSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    .line 56
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 58
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->sSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    return-object v0
.end method

.method private getGroupedEmbeddedSubscriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object p0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    .line 218
    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getSelectableSubscriptionInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 220
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 223
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/sim/receivers/-$$Lambda$SimSlotChangeHandler$_rIyJ7VmT1y9FwXu3qhT5LmGpIo;->INSTANCE:Lcom/android/settings/sim/receivers/-$$Lambda$SimSlotChangeHandler$_rIyJ7VmT1y9FwXu3qhT5LmGpIo;

    .line 224
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 225
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 222
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private getLastRemovableSimSlotState(Landroid/content/Context;)I
    .locals 1

    const-string p0, "euicc_prefs"

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "removable_slot_state"

    const/4 v0, 0x1

    .line 175
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getRemovableUiccSlotInfo()Landroid/telephony/UiccSlotInfo;
    .locals 5

    .line 185
    iget-object p0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "SimSlotChangeHandler"

    const-string v1, "slotInfos is null. Unable to get slot infos."

    .line 187
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 190
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 191
    invoke-virtual {v3}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private handleSimInsert(Landroid/telephony/UiccSlotInfo;)V
    .locals 2

    const-string v0, "SimSlotChangeHandler"

    const-string v1, "Detect SIM inserted."

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->isSuwFinished(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Still in SUW. Handle SIM insertion after SUW is finished"

    .line 115
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->getIsActive()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "The removable slot is already active. Do nothing."

    .line 120
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->hasActiveEsimSubscription()Z

    move-result p1

    if-nez p1, :cond_3

    .line 125
    iget-object p0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Enabled profile exists. DSDS condition satisfied."

    .line 126
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "Enabled profile exists. DSDS condition not satisfied."

    .line 129
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    const-string p0, "No enabled eSIM profile. Ready to switch to removable slot and show notification."

    .line 136
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleSimRemove(Landroid/telephony/UiccSlotInfo;)V
    .locals 2

    const-string v0, "SimSlotChangeHandler"

    const-string v1, "Detect SIM removed."

    .line 144
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->isSuwFinished(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Still in SUW. Handle SIM removal after SUW is finished"

    .line 148
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->getGroupedEmbeddedSubscriptions()Ljava/util/List;

    move-result-object p0

    .line 154
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->getIsActive()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    const-string p0, "Only 1 eSIM profile found. Ask user\'s consent to switch."

    .line 162
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p0, "Multiple eSIM profiles found. Ask user which subscription to use."

    .line 169
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_0
    const-string p0, "eSIM slot is active or no subscriptions exist. Do nothing."

    .line 155
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hasActiveEsimSubscription()Z
    .locals 1

    .line 212
    iget-object p0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p0

    .line 213
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/sim/receivers/-$$Lambda$SfCkqdD9NsKa6vX0hGAzG4ODL54;->INSTANCE:Lcom/android/settings/sim/receivers/-$$Lambda$SfCkqdD9NsKa6vX0hGAzG4ODL54;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "telephony_subscription_service"

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 106
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 107
    iput-object p1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static isSuwFinished(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 203
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "device_provisioned"

    .line 202
    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string v1, "SimSlotChangeHandler"

    const-string v2, "Cannot get DEVICE_PROVISIONED from the device."

    .line 206
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method static synthetic lambda$getGroupedEmbeddedSubscriptions$0(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 224
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p0

    return p0
.end method

.method private setRemovableSimSlotState(Landroid/content/Context;I)V
    .locals 1

    const-string p0, "euicc_prefs"

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 180
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "removable_slot_state"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method onSlotsStatusChange(Landroid/content/Context;)V
    .locals 5

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->init(Landroid/content/Context;)V

    .line 68
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_4

    .line 72
    iget-object p1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p1

    const-string v0, "SimSlotChangeHandler"

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    const-string p0, "The device is already in DSDS mode. Do nothing."

    .line 73
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->getRemovableUiccSlotInfo()Landroid/telephony/UiccSlotInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "Unable to find the removable slot. Do nothing."

    .line 79
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->getLastRemovableSimSlotState(Landroid/content/Context;)I

    move-result v2

    .line 84
    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v3

    .line 87
    iget-object v4, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v3}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->setRemovableSimSlotState(Landroid/content/Context;I)V

    const/4 v4, 0x2

    if-ne v2, v1, :cond_2

    if-ne v3, v4, :cond_2

    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->handleSimInsert(Landroid/telephony/UiccSlotInfo;)V

    return-void

    :cond_2
    if-ne v2, v4, :cond_3

    if-ne v3, v1, :cond_3

    .line 96
    invoke-direct {p0, p1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->handleSimRemove(Landroid/telephony/UiccSlotInfo;)V

    return-void

    :cond_3
    const-string p0, "Do nothing on slot status changes."

    .line 99
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot be called from main thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
