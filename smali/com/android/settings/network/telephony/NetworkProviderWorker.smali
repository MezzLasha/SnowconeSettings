.class public Lcom/android/settings/network/telephony/NetworkProviderWorker;
.super Lcom/android/settings/wifi/slice/WifiScanWorker;
.source "NetworkProviderWorker.java"

# interfaces
.implements Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;
.implements Lcom/android/settings/network/MobileDataEnabledListener$Client;
.implements Lcom/android/settings/network/telephony/DataConnectivityListener$Client;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderPhoneStateListener;,
        Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;
    }
.end annotation


# instance fields
.field private mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

.field private mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

.field private final mContext:Landroid/content/Context;

.field private mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

.field private mDefaultDataSubid:I

.field private mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

.field final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

.field private mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/slice/WifiScanWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 p2, -0x1

    .line 61
    iput p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubid:I

    const/4 p2, 0x0

    .line 66
    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    .line 67
    new-instance p2, Landroid/telephony/TelephonyDisplayInfo;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 74
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 75
    new-instance v0, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    invoke-direct {v0, p0, p2, p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;-><init>(Lcom/android/settings/network/telephony/NetworkProviderWorker;Landroid/os/Handler;Lcom/android/settings/network/telephony/NetworkProviderWorker;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    .line 77
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->getDefaultDataSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubid:I

    .line 80
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubid:I

    .line 81
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 82
    new-instance v0, Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderPhoneStateListener;

    new-instance v1, Lcom/android/settings/network/telephony/-$$Lambda$xMC8M6LLEeW997bBmO6BCC6GGAM;

    invoke-direct {v1, p2}, Lcom/android/settings/network/telephony/-$$Lambda$xMC8M6LLEeW997bBmO6BCC6GGAM;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderPhoneStateListener;-><init>(Lcom/android/settings/network/telephony/NetworkProviderWorker;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 83
    new-instance p2, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    .line 84
    new-instance p2, Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/MobileDataEnabledListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    .line 85
    new-instance p2, Lcom/android/settings/network/telephony/DataConnectivityListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/telephony/DataConnectivityListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/DataConnectivityListener$Client;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    .line 86
    new-instance p2, Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/telephony/SignalStrengthListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->getConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/network/telephony/NetworkProviderWorker;Landroid/telephony/TelephonyDisplayInfo;)Landroid/telephony/TelephonyDisplayInfo;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    return-object p1
.end method

.method private updateNetworkTypeName(Landroid/content/Context;Lcom/android/settingslib/mobile/MobileMappings$Config;Landroid/telephony/TelephonyDisplayInfo;I)Ljava/lang/String;
    .locals 0

    .line 244
    invoke-static {p3}, Lcom/android/settingslib/mobile/MobileMappings;->getIconKey(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object p0

    .line 245
    invoke-static {p2}, Lcom/android/settingslib/mobile/MobileMappings;->mapIconSets(Lcom/android/settingslib/mobile/MobileMappings$Config;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget p0, p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    if-eqz p0, :cond_0

    .line 247
    invoke-static {p1, p4}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    .line 117
    invoke-super {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->close()V

    return-void
.end method

.method public getApRowCount()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method getConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;
    .locals 0

    .line 253
    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileMappings$Config;->readConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object p0

    return-object p0
.end method

.method getDefaultDataSubscriptionId()I
    .locals 0

    .line 238
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    return p0
.end method

.method public getNetworkTypeDescription()Ljava/lang/String;
    .locals 4

    .line 260
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iget v3, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubid:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateNetworkTypeName(Landroid/content/Context;Lcom/android/settingslib/mobile/MobileMappings$Config;Landroid/telephony/TelephonyDisplayInfo;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 1

    const-string p1, "NetworkProviderWorker"

    const-string v0, "onAirplaneModeChanged"

    .line 163
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateSlice()V

    return-void
.end method

.method public onDataConnectivityChange()V
    .locals 2

    const-string v0, "NetworkProviderWorker"

    const-string v1, "onDataConnectivityChange"

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateSlice()V

    return-void
.end method

.method public onMobileDataEnabledChange()V
    .locals 2

    const-string v0, "NetworkProviderWorker"

    const-string v1, "onMobileDataEnabledChange"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateSlice()V

    return-void
.end method

.method public onSignalStrengthChanged()V
    .locals 2

    const-string v0, "NetworkProviderWorker"

    const-string v1, "onSignalStrengthChanged"

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateSlice()V

    return-void
.end method

.method protected onSlicePinned()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;->register(Landroid/content/Context;I)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 94
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    iget v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubid:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/DataConnectivityListener;->start()V

    .line 96
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/SignalStrengthListener;->resume()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v2, 0x100001

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 100
    invoke-super {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->onSlicePinned()V

    return-void
.end method

.method protected onSliceUnpinned()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;->unregister(Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    .line 108
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/DataConnectivityListener;->stop()V

    .line 109
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/SignalStrengthListener;->pause()V

    .line 110
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 111
    invoke-super {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->onSliceUnpinned()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 4

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscriptionsChanged: defaultDataSubId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkProviderWorker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubid:I

    if-ne v1, v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;->unregister(Landroid/content/Context;)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/SignalStrengthListener;->updateSubscriptionIds(Ljava/util/Set;)V

    .line 144
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 145
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v2, 0x100001

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;->register(Landroid/content/Context;I)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->getConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/SignalStrengthListener;->updateSubscriptionIds(Ljava/util/Set;)V

    .line 152
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateSlice()V

    return-void
.end method

.method public updateSlice()V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method
