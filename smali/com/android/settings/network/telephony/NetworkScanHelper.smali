.class public Lcom/android/settings/network/telephony/NetworkScanHelper;
.super Ljava/lang/Object;
.source "NetworkScanHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanSyncTask;,
        Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl;,
        Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;
    }
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mInternalNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

.field private final mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

.field private mNetworkScanFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNetworkScanRequester:Landroid/telephony/NetworkScan;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 131
    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    .line 132
    new-instance p1, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl;-><init>(Lcom/android/settings/network/telephony/NetworkScanHelper;Lcom/android/settings/network/telephony/NetworkScanHelper$1;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mInternalNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 133
    iput-object p3, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/NetworkScanHelper;Ljava/util/List;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkScanHelper;->onResults(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/network/telephony/NetworkScanHelper;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->onComplete()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/network/telephony/NetworkScanHelper;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkScanHelper;->onError(I)V

    return-void
.end method

.method static synthetic access$400(I)I
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->convertToScanErrorCode(I)I

    move-result p0

    return p0
.end method

.method private static convertToScanErrorCode(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x2710

    return p0
.end method

.method private createNetworkScanForPreferredAccessNetworks()Landroid/telephony/NetworkScanRequest;
    .locals 14

    .line 137
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPreferredNetworkTypeBitmask()J

    move-result-wide v0

    const-wide/32 v2, 0xdd387

    and-long/2addr v0, v2

    .line 140
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-wide/32 v6, 0x804b

    and-long/2addr v6, v0

    cmp-long v6, v6, v2

    if-eqz v6, :cond_1

    .line 146
    :cond_0
    new-instance v6, Landroid/telephony/RadioAccessSpecifier;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5, v5}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v4, :cond_2

    const-wide/32 v6, 0x16bb4

    and-long/2addr v6, v0

    cmp-long v6, v6, v2

    if-eqz v6, :cond_3

    .line 151
    :cond_2
    new-instance v6, Landroid/telephony/RadioAccessSpecifier;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v5, v5}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v4, :cond_4

    const-wide/32 v6, 0x61000

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 156
    :cond_4
    new-instance v0, Landroid/telephony/RadioAccessSpecifier;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v5, v5}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_5
    new-instance v0, Landroid/telephony/NetworkScanRequest;

    const/4 v7, 0x0

    .line 176
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/telephony/RadioAccessSpecifier;

    .line 175
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, [Landroid/telephony/RadioAccessSpecifier;

    const/4 v9, 0x5

    const/16 v10, 0x12c

    const/4 v11, 0x1

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Landroid/telephony/NetworkScanRequest;-><init>(I[Landroid/telephony/RadioAccessSpecifier;IIZILjava/util/ArrayList;)V

    return-object v0
.end method

.method private onComplete()V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    invoke-interface {p0}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;->onComplete()V

    return-void
.end method

.method private onError(I)V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    invoke-interface {p0, p1}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;->onError(I)V

    return-void
.end method

.method private onResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 245
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    invoke-interface {p0, p1}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;->onResults(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public startNetworkScan(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 194
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 195
    new-instance v0, Lcom/android/settings/network/telephony/NetworkScanHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/NetworkScanHelper$1;-><init>(Lcom/android/settings/network/telephony/NetworkScanHelper;)V

    .line 210
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 195
    invoke-static {p1, v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 211
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanSyncTask;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    check-cast p0, Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanSyncTask;-><init>(Landroid/telephony/TelephonyManager;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 214
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanRequester:Landroid/telephony/NetworkScan;

    if-eqz p1, :cond_1

    return-void

    .line 217
    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 218
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->createNetworkScanForPreferredAccessNetworks()Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mInternalNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 217
    invoke-virtual {p1, v0, v1, v2}, Landroid/telephony/TelephonyManager;->requestNetworkScan(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanRequester:Landroid/telephony/NetworkScan;

    if-nez p1, :cond_2

    const/16 p1, 0x2710

    .line 222
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkScanHelper;->onError(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopNetworkQuery()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanRequester:Landroid/telephony/NetworkScan;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Landroid/telephony/NetworkScan;->stopScan()V

    .line 235
    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanRequester:Landroid/telephony/NetworkScan;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 239
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 240
    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_1
    return-void
.end method
