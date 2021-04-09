.class public Lcom/android/settings/network/SubscriptionsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SubscriptionsPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;
.implements Lcom/android/settings/network/MobileDataEnabledListener$Client;
.implements Lcom/android/settings/network/telephony/DataConnectivityListener$Client;
.implements Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;
.implements Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;,
        Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;
    }
.end annotation


# instance fields
.field private mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

.field private mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

.field private mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

.field final mDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private mPreferenceGroupKey:Ljava/lang/String;

.field private mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

.field private mStartOrder:I

.field private mSubsGearPref:Lcom/android/settings/widget/GearPreference;

.field private mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSubscriptionPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field private mTelephonyDisplayInfoListener:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUpdateListener:Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;

.field private mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;Ljava/lang/String;I)V
    .locals 2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Lcom/android/settings/network/SubscriptionsPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/SubscriptionsPreferenceController$1;-><init>(Lcom/android/settings/network/SubscriptionsPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    .line 115
    new-instance v0, Landroid/telephony/TelephonyDisplayInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    iput-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 145
    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mUpdateListener:Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;

    .line 146
    iput-object p4, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroupKey:Ljava/lang/String;

    .line 147
    iput p5, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mStartOrder:I

    .line 148
    const-class p3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 149
    const-class p3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/SubscriptionManager;

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 150
    new-instance p3, Landroidx/collection/ArrayMap;

    invoke-direct {p3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionPreferences:Ljava/util/Map;

    .line 151
    new-instance p3, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    .line 152
    new-instance p3, Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/MobileDataEnabledListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    .line 153
    new-instance p3, Lcom/android/settings/network/telephony/DataConnectivityListener;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/telephony/DataConnectivityListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/DataConnectivityListener$Client;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    .line 154
    new-instance p3, Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/telephony/SignalStrengthListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    .line 155
    new-instance p3, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$Callback;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfoListener:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    .line 156
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->createSubsPrefCtrlInjector()Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    .line 158
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->getConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/network/SubscriptionsPreferenceController;Lcom/android/settingslib/mobile/MobileMappings$Config;)Lcom/android/settingslib/mobile/MobileMappings$Config;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/network/SubscriptionsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/network/SubscriptionsPreferenceController;)Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/network/SubscriptionsPreferenceController;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method private getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 268
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    :goto_0
    const/4 v3, 0x5

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController;->shouldInflateSignalStrength(I)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x6

    .line 278
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p1

    .line 279
    iget-object v4, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 280
    invoke-virtual {v4, v5}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->isActiveCellularNetwork(Landroid/content/Context;)Z

    move-result v4

    .line 281
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    move v5, v2

    .line 283
    :goto_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 286
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v7, :cond_4

    goto :goto_2

    :cond_4
    move v7, v2

    .line 288
    :goto_2
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6, v1, v3, v2}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->getIcon(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v4, :cond_5

    .line 291
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object v0

    :cond_5
    if-eqz p1, :cond_6

    if-nez v5, :cond_7

    :cond_6
    if-nez p1, :cond_8

    if-nez v7, :cond_8

    :cond_7
    return-object v0

    .line 299
    :cond_8
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$drawable;->ic_signal_strength_zero_bar_no_internet:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getMobilePreferenceSummary(I)Ljava/lang/String;
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-object v3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->getNetworkType(Landroid/content/Context;Lcom/android/settingslib/mobile/MobileMappings$Config;Landroid/telephony/TelephonyDisplayInfo;I)Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->isActiveCellularNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->preference_summary_default_combination:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/android/settings/R$string;->mobile_data_connection_active:I

    .line 262
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 261
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private synthetic lambda$isAvailable$3(Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 443
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 442
    invoke-virtual {v0, p0, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->canSubscriptionBeDisplayed(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$updateForBase$2(ILandroidx/preference/Preference;)Z
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController;->startMobileNetworkActivity(Landroid/content/Context;I)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$updateForProvider$0(Landroidx/preference/Preference;)Z
    .locals 0

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->connectCarrierNetwork()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$updateForProvider$1(Landroid/telephony/SubscriptionInfo;Lcom/android/settings/widget/GearPreference;)V
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController;->startMobileNetworkActivity(Landroid/content/Context;I)V

    return-void
.end method

.method private registerDataSubscriptionChangedReceiver()V
    .locals 2

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static startMobileNetworkActivity(Landroid/content/Context;I)V
    .locals 2

    .line 348
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/network/telephony/MobileNetworkActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.provider.extra.SUB_ID"

    .line 349
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private unRegisterDataSubscriptionChangedReceiver()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 169
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private update()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/GearPreference;

    if-eqz v0, :cond_1

    .line 207
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionPreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 210
    iget-object v2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionPreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 214
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/SignalStrengthListener;->updateSubscriptionIds(Ljava/util/Set;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfoListener:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->updateSubscriptionIds(Ljava/util/Set;)V

    .line 216
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mUpdateListener:Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;

    invoke-interface {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;->onChildrenUpdated()V

    return-void

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->updateForProvider()V

    goto :goto_1

    .line 223
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->updateForBase()V

    :goto_1
    return-void
.end method

.method private updateForBase()V
    .locals 9

    .line 304
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionPreferences:Ljava/util/Map;

    .line 305
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionPreferences:Ljava/util/Map;

    .line 307
    iget v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mStartOrder:I

    .line 308
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 309
    iget-object v3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    invoke-virtual {v3}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 311
    iget-object v4, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v4}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 312
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    .line 316
    iget-object v7, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object v8, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v6}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->canSubscriptionBeDisplayed(Landroid/content/Context;I)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/preference/Preference;

    if-nez v7, :cond_1

    .line 322
    new-instance v7, Landroidx/preference/Preference;

    iget-object v8, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 323
    iget-object v8, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 325
    :cond_1
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    if-ne v6, v3, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 327
    :goto_1
    invoke-virtual {p0, v6, v5}, Lcom/android/settings/network/SubscriptionsPreferenceController;->getSummary(IZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {p0, v7, v6, v5}, Lcom/android/settings/network/SubscriptionsPreferenceController;->setIcon(Landroidx/preference/Preference;IZ)V

    add-int/lit8 v5, v1, 0x1

    .line 329
    invoke-virtual {v7, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 331
    new-instance v1, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$7PntMOFrV58kYBD-7lADEcSAsO0;

    invoke-direct {v1, p0, v6}, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$7PntMOFrV58kYBD-7lADEcSAsO0;-><init>(Lcom/android/settings/network/SubscriptionsPreferenceController;I)V

    invoke-virtual {v7, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 336
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionPreferences:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v5

    goto :goto_0

    .line 338
    :cond_3
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/SignalStrengthListener;->updateSubscriptionIds(Ljava/util/Set;)V

    .line 341
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 342
    iget-object v2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 344
    :cond_4
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mUpdateListener:Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;

    invoke-interface {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;->onChildrenUpdated()V

    return-void
.end method

.method private updateForProvider()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 230
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/GearPreference;

    if-nez v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 235
    new-instance v1, Lcom/android/settings/widget/GearPreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/settings/widget/GearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/GearPreference;

    .line 236
    new-instance v2, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$xVqzKoGWO8aXu4iDN_AV8A_8OEQ;

    invoke-direct {v2, p0}, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$xVqzKoGWO8aXu4iDN_AV8A_8OEQ;-><init>(Lcom/android/settings/network/SubscriptionsPreferenceController;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 240
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/GearPreference;

    new-instance v2, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$A1_z2VDzmE6EoIV-m7V6sN--jGc;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$A1_z2VDzmE6EoIV-m7V6sN--jGc;-><init>(Lcom/android/settings/network/SubscriptionsPreferenceController;Landroid/telephony/SubscriptionInfo;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/GearPreference;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/GearPreference;

    iget v2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mStartOrder:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 246
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/GearPreference;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/SubscriptionsPreferenceController;->getMobilePreferenceSummary(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/GearPreference;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/SubscriptionsPreferenceController;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsGearPref:Lcom/android/settings/widget/GearPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 250
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 251
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/SignalStrengthListener;->updateSubscriptionIds(Ljava/util/Set;)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfoListener:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->updateSubscriptionIds(Ljava/util/Set;)V

    .line 254
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mUpdateListener:Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;

    invoke-interface {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;->onChildrenUpdated()V

    return-void
.end method


# virtual methods
.method canSubscriptionBeDisplayed(Landroid/content/Context;I)Z
    .locals 0

    .line 492
    invoke-static {p1}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p0

    .line 491
    invoke-static {p1, p0, p2}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscription(Landroid/content/Context;Lcom/android/settings/network/ProxySubscriptionManager;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public connectCarrierNetwork()V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isMobileDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 504
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 505
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->connectCarrierNetwork(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)Z

    :cond_1
    return-void
.end method

.method createSubsPrefCtrlInjector()Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;
    .locals 0

    .line 510
    new-instance p0, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;-><init>()V

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 198
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getSummary(IZ)Ljava/lang/String;
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 387
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    invoke-virtual {v1}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->getDefaultSmsSubscriptionId()I

    move-result v1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->default_for_calls_and_sms:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->default_for_calls:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 395
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->default_for_sms:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-eqz p2, :cond_5

    .line 400
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 401
    invoke-virtual {p2, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 402
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 403
    iget-object p2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->isActiveCellularNetwork(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 404
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->mobile_data_active:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    .line 406
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->mobile_data_off:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 408
    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->default_for_mobile_data:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 413
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/CharSequence;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    const/4 p2, 0x1

    aput-object v2, p1, p2

    invoke-static {p0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    if-eqz v2, :cond_8

    return-object v2

    .line 419
    :cond_8
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->subscription_available:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 6

    .line 429
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->isAirplaneModeOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 433
    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 437
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$20zCOF0F2NnmPrjXUdDwHsV-WbM;

    invoke-direct {v2, p0}, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$20zCOF0F2NnmPrjXUdDwHsV-WbM;-><init>(Lcom/android/settings/network/SubscriptionsPreferenceController;)V

    .line 441
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 444
    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    move p0, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    :goto_0
    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-ltz p0, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method public synthetic lambda$isAvailable$3$SubscriptionsPreferenceController(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController;->lambda$isAvailable$3(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$updateForBase$2$SubscriptionsPreferenceController(ILandroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/SubscriptionsPreferenceController;->lambda$updateForBase$2(ILandroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$updateForProvider$0$SubscriptionsPreferenceController(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController;->lambda$updateForProvider$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$updateForProvider$1$SubscriptionsPreferenceController(Landroid/telephony/SubscriptionInfo;Lcom/android/settings/widget/GearPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/SubscriptionsPreferenceController;->lambda$updateForProvider$1(Landroid/telephony/SubscriptionInfo;Lcom/android/settings/widget/GearPreference;)V

    return-void
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    .line 454
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public onDataConnectivityChange()V
    .locals 0

    .line 475
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public onMobileDataEnabledChange()V
    .locals 0

    .line 470
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    .line 188
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    .line 189
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/DataConnectivityListener;->stop()V

    .line 190
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/SignalStrengthListener;->pause()V

    .line 191
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfoListener:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->pause()V

    .line 192
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->unRegisterDataSubscriptionChangedReceiver()V

    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 177
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    invoke-virtual {v1}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/DataConnectivityListener;->start()V

    .line 179
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/SignalStrengthListener;->resume()V

    .line 180
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfoListener:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->resume()V

    .line 181
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->registerDataSubscriptionChangedReceiver()V

    .line 182
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public onSignalStrengthChanged()V
    .locals 0

    .line 480
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 461
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v1}, Lcom/android/settings/network/MobileDataEnabledListener;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v1}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    .line 463
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v1, v0}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    .line 465
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public onTelephonyDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 486
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method setIcon(Landroidx/preference/Preference;IZ)V
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 361
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    :goto_0
    const/4 v3, 0x5

    .line 365
    invoke-virtual {p0, p2}, Lcom/android/settings/network/SubscriptionsPreferenceController;->shouldInflateSignalStrength(I)Z

    move-result p2

    if-eqz p2, :cond_1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x6

    :cond_1
    if-eqz p3, :cond_2

    .line 370
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 371
    :cond_3
    iget-object p2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, v1, v3, v2}, Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;->getIcon(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setWifiPickerTrackerHelper(Lcom/android/settings/wifi/WifiPickerTrackerHelper;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    return-void
.end method

.method shouldInflateSignalStrength(I)Z
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settingslib/net/SignalStrengthUtil;->shouldInflateSignalStrength(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method
