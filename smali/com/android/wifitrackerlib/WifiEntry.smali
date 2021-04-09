.class public Lcom/android/wifitrackerlib/WifiEntry;
.super Ljava/lang/Object;
.source "WifiEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifitrackerlib/WifiEntry$ManageSubscriptionAction;,
        Lcom/android/wifitrackerlib/WifiEntry$ForgetActionListener;,
        Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;,
        Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;,
        Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;,
        Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;,
        Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;,
        Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;,
        Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/wifitrackerlib/WifiEntry;",
        ">;"
    }
.end annotation


# instance fields
.field protected mCallbackHandler:Landroid/os/Handler;

.field protected mCalledConnect:Z

.field protected mCalledDisconnect:Z

.field protected mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

.field protected mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

.field protected mDisconnectCallback:Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;

.field final mForSavedNetworksPage:Z

.field protected mForgetCallback:Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;

.field private mIsDefaultNetwork:Z

.field protected mIsLowQuality:Z

.field private mIsValidated:Z

.field protected mLevel:I

.field private mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;

.field private mManageSubscriptionAction:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wifitrackerlib/WifiEntry$ManageSubscriptionAction;",
            ">;"
        }
    .end annotation
.end field

.field protected mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field protected mNetworkInfo:Landroid/net/NetworkInfo;

.field protected mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field protected mSpeed:I

.field protected mWifiInfo:Landroid/net/wifi/WifiInfo;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 225
    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    const/4 v0, 0x0

    .line 226
    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    .line 237
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledConnect:Z

    .line 238
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledDisconnect:Z

    .line 244
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mManageSubscriptionAction:Ljava/util/Optional;

    const-string v0, "Cannot construct with null handler!"

    .line 249
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct with null WifiManager!"

    .line 250
    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    .line 252
    iput-boolean p4, p0, Lcom/android/wifitrackerlib/WifiEntry;->mForSavedNetworksPage:Z

    .line 253
    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 254
    iput-object p3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    return-void
.end method

.method private synthetic lambda$notifyOnUpdated$0()V
    .locals 0

    .line 633
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;

    invoke-interface {p0}, Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;->onUpdated()V

    return-void
.end method

.method private synthetic lambda$updateConnectionInfo$1()V
    .locals 1

    .line 760
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 761
    invoke-interface {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;->onConnectResult(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateConnectionInfo$2()V
    .locals 1

    .line 783
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDisconnectCallback:Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 784
    invoke-interface {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;->onDisconnectResult(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canConnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canDisconnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canEasyConnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canForget()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canManageSubscription()Z
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mManageSubscriptionAction:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public canSetAutoJoinEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSetMeteredChoice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSetPrivacy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canShare()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSignIn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public compareTo(Lcom/android/wifitrackerlib/WifiEntry;)I
    .locals 4

    .line 930
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    .line 933
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    if-eq v0, v1, :cond_1

    return v2

    .line 937
    :cond_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 938
    :cond_2
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 940
    :cond_3
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 941
    :cond_4
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 943
    :cond_5
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 944
    :cond_6
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    .line 946
    :cond_7
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v3

    if-le v0, v3, :cond_8

    return v1

    .line 947
    :cond_8
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v1

    if-ge v0, v1, :cond_9

    return v2

    .line 949
    :cond_9
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 65
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->compareTo(Lcom/android/wifitrackerlib/WifiEntry;)I

    move-result p0

    return p0
.end method

.method public connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 0

    return-void
.end method

.method protected connectionInfoMatches(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 954
    instance-of v0, p1, Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 955
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V
    .locals 0

    return-void
.end method

.method public getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;
    .locals 2

    .line 402
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 406
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    return-object p0
.end method

.method public getConnectedState()I
    .locals 2

    .line 268
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 272
    :cond_0
    sget-object v1, Lcom/android/wifitrackerlib/WifiEntry$1;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHelpUriString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getLevel()I
    .locals 0

    .line 320
    iget p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    return p0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMeteredChoice()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getNetworkCapabilityDescription()Ljava/lang/String;
    .locals 3

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "isValidated:"

    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsValidated:Z

    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDefaultNetwork:"

    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLowQuality:"

    .line 594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsLowQuality:Z

    .line 595
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 597
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getNetworkSelectionDescription()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getPrivacy()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected getScanResultDescription()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSecondSummary()Ljava/lang/CharSequence;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSecurity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSpeed()I
    .locals 0

    .line 334
    iget p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    return p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 297
    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary(Z)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method getWifiInfoDescription()Ljava/lang/String;
    .locals 7

    .line 864
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 865
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_1

    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "f = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 867
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 869
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 871
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "standard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "score = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getScore()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 874
    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSuccessfulTxPacketsPerSecond()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, " tx=%.1f,"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-array v2, v1, [Ljava/lang/Object;

    .line 875
    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRetriedTxPacketsPerSecond()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "%.1f,"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-array v2, v1, [Ljava/lang/Object;

    .line 876
    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getLostTxPacketsPerSecond()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "%.1f "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-array v1, v1, [Ljava/lang/Object;

    .line 877
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSuccessfulRxPacketsPerSecond()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "rx=%.1f"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 879
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAutoJoinEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMetered()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSaved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSubscription()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSuggestion()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$notifyOnUpdated$0$WifiEntry()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiEntry;->lambda$notifyOnUpdated$0()V

    return-void
.end method

.method public synthetic lambda$updateConnectionInfo$1$WifiEntry()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiEntry;->lambda$updateConnectionInfo$1()V

    return-void
.end method

.method public synthetic lambda$updateConnectionInfo$2$WifiEntry()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiEntry;->lambda$updateConnectionInfo$2()V

    return-void
.end method

.method public manageSubscription()V
    .locals 1

    .line 558
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mManageSubscriptionAction:Ljava/util/Optional;

    sget-object v0, Lcom/android/wifitrackerlib/-$$Lambda$MnF1Pwpwfi-A7twnGlnDdK6phh8;->INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$MnF1Pwpwfi-A7twnGlnDdK6phh8;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected notifyOnUpdated()V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wifitrackerlib/-$$Lambda$WifiEntry$kmbO9H7mcWhXu3mRNT2ZQpalNUE;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/-$$Lambda$WifiEntry$kmbO9H7mcWhXu3mRNT2ZQpalNUE;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setAutoJoinEnabled(Z)V
    .locals 0

    return-void
.end method

.method setIsDefaultNetwork(Z)V
    .locals 0

    .line 842
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    .line 843
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void
.end method

.method setIsLowQuality(Z)V
    .locals 0

    .line 848
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsLowQuality:Z

    return-void
.end method

.method public setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;

    return-void
.end method

.method public setMeteredChoice(I)V
    .locals 0

    return-void
.end method

.method public setPrivacy(I)V
    .locals 0

    return-void
.end method

.method public shouldEditBeforeConnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldShowXLevelIcon()Z
    .locals 1

    .line 327
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsValidated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    if-nez v0, :cond_1

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public signIn(Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 961
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",title:"

    .line 962
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",summary:"

    .line 964
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isSaved:"

    .line 966
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isSubscription:"

    .line 968
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isSuggestion:"

    .line 970
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",level:"

    .line 972
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->shouldShowXLevelIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "X"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",security:"

    .line 975
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",connected:"

    .line 977
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "true"

    goto :goto_1

    :cond_1
    const-string v1, "false"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",connectedInfo:"

    .line 979
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",isValidated:"

    .line 981
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsValidated:Z

    .line 982
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isDefaultNetwork:"

    .line 983
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    .line 984
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 985
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 746
    invoke-virtual {p0, p1, p2}, Lcom/android/wifitrackerlib/WifiEntry;->connectionInfoMatches(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 749
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 750
    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 751
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p2

    const/16 v1, -0x7f

    if-eq p2, v1, :cond_0

    .line 753
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    move-result p2

    iput p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 754
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-static {p2, p1}, Lcom/android/wifitrackerlib/Utils;->getSpeedFromWifiInfo(Landroid/net/wifi/WifiNetworkScoreCache;Landroid/net/wifi/WifiInfo;)I

    move-result p2

    iput p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    .line 756
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 757
    iget-boolean p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledConnect:Z

    if-eqz p2, :cond_1

    .line 758
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledConnect:Z

    .line 759
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wifitrackerlib/-$$Lambda$WifiEntry$eqfWnISjXdKbW3zp4Le352nvlVY;

    invoke-direct {v0, p0}, Lcom/android/wifitrackerlib/-$$Lambda$WifiEntry$eqfWnISjXdKbW3zp4Le352nvlVY;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 767
    :cond_1
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    if-nez p2, :cond_2

    .line 768
    new-instance p2, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-direct {p2}, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;-><init>()V

    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 770
    :cond_2
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    iput v0, p2, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->frequencyMhz:I

    .line 771
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result p1

    iput p1, p2, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->linkSpeedMbps:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 774
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 775
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 776
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 777
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsValidated:Z

    .line 778
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    .line 779
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsLowQuality:Z

    .line 780
    iget-boolean p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledDisconnect:Z

    if-eqz p1, :cond_4

    .line 781
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledDisconnect:Z

    .line 782
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/wifitrackerlib/-$$Lambda$WifiEntry$YZzJvcD9N68jVndE-VlQDrkIhB0;

    invoke-direct {p2, p0}, Lcom/android/wifitrackerlib/-$$Lambda$WifiEntry$YZzJvcD9N68jVndE-VlQDrkIhB0;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 790
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void
.end method

.method updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 7

    if-eqz p1, :cond_7

    .line 796
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    if-nez v0, :cond_1

    .line 803
    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;-><init>()V

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 806
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 807
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 808
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_3

    .line 809
    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->ipAddress:Ljava/lang/String;

    const/4 v4, 0x4

    :try_start_0
    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    aput-byte v6, v4, v5

    aput-byte v6, v4, v1

    const/4 v5, 0x3

    aput-byte v6, v4, v5

    .line 811
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    .line 813
    iget-object v5, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 814
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    .line 813
    invoke-static {v4, v3}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v3

    .line 814
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->subnetMask:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 818
    :cond_3
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet6Address;

    if-eqz v4, :cond_2

    .line 819
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 822
    :cond_4
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    iput-object v0, v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->ipv6Addresses:Ljava/util/List;

    .line 825
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 826
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_5

    .line 827
    invoke-virtual {v1}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 828
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->gateway:Ljava/lang/String;

    .line 834
    :cond_6
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/android/wifitrackerlib/-$$Lambda$zfHsz3rXz82mO9Uzi73fmg6luoY;->INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$zfHsz3rXz82mO9Uzi73fmg6luoY;

    .line 835
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, v0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->dnsServers:Ljava/util/List;

    .line 837
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void

    :cond_7
    :goto_1
    const/4 p1, 0x0

    .line 797
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 798
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void
.end method

.method updateNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 854
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 855
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x10

    .line 859
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsValidated:Z

    .line 860
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void
.end method
