.class Lcom/android/wifitrackerlib/OsuWifiEntry;
.super Lcom/android/wifitrackerlib/WifiEntry;
.source "OsuWifiEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAlreadyProvisioned:Z

.field private final mKey:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

.field private mOsuStatusString:Ljava/lang/String;

.field private mSsid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 76
    invoke-direct {p0, p2, p4, p5, p6}, Lcom/android/wifitrackerlib/WifiEntry;-><init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    .line 56
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mLock:Ljava/lang/Object;

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mCurrentScanResults:Ljava/util/List;

    const/4 p2, 0x0

    .line 66
    iput-boolean p2, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mIsAlreadyProvisioned:Z

    const-string p2, "Cannot construct with null osuProvider!"

    .line 78
    invoke-static {p3, p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mContext:Landroid/content/Context;

    .line 81
    iput-object p3, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    .line 82
    invoke-static {p3}, Lcom/android/wifitrackerlib/OsuWifiEntry;->osuProviderToOsuWifiEntryKey(Landroid/net/wifi/hotspot2/OsuProvider;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wifitrackerlib/OsuWifiEntry;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuStatusString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/wifitrackerlib/OsuWifiEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuStatusString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/wifitrackerlib/OsuWifiEntry;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wifitrackerlib/OsuWifiEntry;)Landroid/net/wifi/hotspot2/OsuProvider;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    return-object p0
.end method

.method static osuProviderToOsuWifiEntryKey(Landroid/net/wifi/hotspot2/OsuProvider;)Ljava/lang/String;
    .locals 2

    const-string v0, "Cannot create key with null OsuProvider!"

    .line 169
    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OsuWifiEntry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/OsuProvider;->getServerUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canConnect()Z
    .locals 2

    .line 133
    iget v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 3

    .line 139
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    .line 140
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->stopTemporarilyDisablingAllNonCarrierMergedWifi()V

    .line 141
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    iget-object v1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;

    invoke-direct {v2, p0}, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;-><init>(Lcom/android/wifitrackerlib/OsuWifiEntry;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/wifi/WifiManager;->startSubscriptionProvisioning(Landroid/net/wifi/hotspot2/OsuProvider;Ljava/util/concurrent/Executor;Landroid/net/wifi/hotspot2/ProvisioningCallback;)V

    return-void
.end method

.method protected connectionInfoMatches(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 0

    .line 178
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 179
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    move-result-object p0

    .line 178
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method getOsuProvider()Landroid/net/wifi/hotspot2/OsuProvider;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    return-object p0
.end method

.method protected getScanResultDescription()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method public getSummary(Z)Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuStatusString:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/OsuWifiEntry;->isAlreadyProvisioned()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 112
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_passpoint_expired:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 113
    :cond_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_tap_to_renew_subscription_and_connect:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 116
    :cond_2
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_tap_to_sign_up:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mSsid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mSsid:Ljava/lang/String;

    return-object p0

    .line 99
    :cond_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/OsuProvider;->getServerUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 101
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method isAlreadyProvisioned()Z
    .locals 0

    .line 193
    iget-boolean p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mIsAlreadyProvisioned:Z

    return p0
.end method

.method setAlreadyProvisioned(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mIsAlreadyProvisioned:Z

    return-void
.end method

.method updateScanResultInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mCurrentScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 152
    iget-object v1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mCurrentScanResults:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-static {p1}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 157
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mSsid:Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    move-result p1

    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 162
    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 164
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void

    :catchall_0
    move-exception p0

    .line 153
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
