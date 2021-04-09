.class public Lcom/android/wifitrackerlib/MergedCarrierEntry;
.super Lcom/android/wifitrackerlib/WifiEntry;
.source "MergedCarrierEntry.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKey:Ljava/lang/String;

.field private final mSubscriptionId:I


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiNetworkScoreCache;ZLandroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wifitrackerlib/WifiEntry;-><init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    .line 54
    iput-object p5, p0, Lcom/android/wifitrackerlib/MergedCarrierEntry;->mContext:Landroid/content/Context;

    .line 55
    iput p6, p0, Lcom/android/wifitrackerlib/MergedCarrierEntry;->mSubscriptionId:I

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MergedCarrierEntry:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wifitrackerlib/MergedCarrierEntry;->mKey:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$connect$0()V
    .locals 1

    .line 108
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;->onConnectResult(I)V

    return-void
.end method

.method private synthetic lambda$disconnect$1()V
    .locals 1

    .line 124
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDisconnectCallback:Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;->onDisconnectResult(I)V

    return-void
.end method


# virtual methods
.method public canConnect()Z
    .locals 0

    .line 99
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

.method public canDisconnect()Z
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 1

    .line 104
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    .line 105
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v0, p0, Lcom/android/wifitrackerlib/MergedCarrierEntry;->mSubscriptionId:I

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->startTemporarilyDisablingAllNonCarrierMergedWifi(I)V

    .line 106
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wifitrackerlib/-$$Lambda$MergedCarrierEntry$652duHUExh76A8D5snaum4Snz2A;

    invoke-direct {v0, p0}, Lcom/android/wifitrackerlib/-$$Lambda$MergedCarrierEntry$652duHUExh76A8D5snaum4Snz2A;-><init>(Lcom/android/wifitrackerlib/MergedCarrierEntry;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected connectionInfoMatches(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 0

    .line 132
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isCarrierMerged()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p0, p0, Lcom/android/wifitrackerlib/MergedCarrierEntry;->mSubscriptionId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSubscriptionId()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V
    .locals 1

    .line 120
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDisconnectCallback:Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;

    .line 121
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->stopTemporarilyDisablingAllNonCarrierMergedWifi()V

    .line 122
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDisconnectCallback:Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wifitrackerlib/-$$Lambda$MergedCarrierEntry$92auVAzW_qnDb71mIGBHMGvm5rw;

    invoke-direct {v0, p0}, Lcom/android/wifitrackerlib/-$$Lambda$MergedCarrierEntry$92auVAzW_qnDb71mIGBHMGvm5rw;-><init>(Lcom/android/wifitrackerlib/MergedCarrierEntry;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/wifitrackerlib/MergedCarrierEntry;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "02:00:00:00:00:00"

    .line 90
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getSubscriptionId()I
    .locals 0

    .line 144
    iget p0, p0, Lcom/android/wifitrackerlib/MergedCarrierEntry;->mSubscriptionId:I

    return p0
.end method

.method public getSummary(Z)Ljava/lang/String;
    .locals 3

    .line 66
    new-instance v0, Ljava/util/StringJoiner;

    iget-object v1, p0, Lcom/android/wifitrackerlib/MergedCarrierEntry;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_summary_separator:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_0

    .line 69
    invoke-static {p0}, Lcom/android/wifitrackerlib/Utils;->getVerboseLoggingDescription(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 71
    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 74
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$connect$0$MergedCarrierEntry()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/MergedCarrierEntry;->lambda$connect$0()V

    return-void
.end method

.method public synthetic lambda$disconnect$1$MergedCarrierEntry()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/MergedCarrierEntry;->lambda$disconnect$1()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v1, p0, Lcom/android/wifitrackerlib/MergedCarrierEntry;->mSubscriptionId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Landroid/net/wifi/WifiManager;->setCarrierNetworkOffloadEnabled(IZZ)V

    if-nez p1, :cond_0

    .line 139
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->stopTemporarilyDisablingAllNonCarrierMergedWifi()V

    :cond_0
    return-void
.end method
