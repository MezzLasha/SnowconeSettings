.class public Lcom/android/wifitrackerlib/BaseWifiTracker;
.super Ljava/lang/Object;
.source "BaseWifiTracker.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;,
        Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;
    }
.end annotation


# static fields
.field private static sVerboseLogging:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected final mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected final mContext:Landroid/content/Context;

.field private final mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected mIsCellDefaultRoute:Z

.field protected mIsWifiDefaultRoute:Z

.field protected mIsWifiValidated:Z

.field private final mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

.field protected final mMainHandler:Landroid/os/Handler;

.field protected final mMaxScanAgeMillis:J

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field protected final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mRequestedScoreKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation
.end field

.field protected final mScanIntervalMillis:J

.field protected final mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

.field private final mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

.field private final mTag:Ljava/lang/String;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;

.field protected final mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field protected final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p7

    move-wide/from16 v3, p9

    move-wide/from16 v5, p11

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v7, Lcom/android/wifitrackerlib/BaseWifiTracker$1;

    invoke-direct {v7, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$1;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mRequestedScoreKeys:Ljava/util/Set;

    .line 145
    new-instance v7, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v7}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 146
    invoke-virtual {v7}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v7

    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 148
    new-instance v7, Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    invoke-direct {v7, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$2;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 173
    new-instance v7, Lcom/android/wifitrackerlib/BaseWifiTracker$3;

    invoke-direct {v7, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$3;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    move-object v7, p1

    .line 228
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 229
    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    move-object v7, p3

    .line 230
    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v8, p4

    .line 231
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v8, p5

    .line 232
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    move-object v8, p6

    .line 233
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 234
    iput-object v2, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    .line 235
    iput-wide v3, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMaxScanAgeMillis:J

    .line 236
    iput-wide v5, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanIntervalMillis:J

    move-object/from16 v8, p13

    .line 237
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

    move-object/from16 v8, p14

    .line 238
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    .line 240
    new-instance v8, Lcom/android/wifitrackerlib/ScanResultUpdater;

    add-long/2addr v3, v5

    move-object/from16 v5, p8

    invoke-direct {v8, v5, v3, v4}, Lcom/android/wifitrackerlib/ScanResultUpdater;-><init>(Ljava/time/Clock;J)V

    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    .line 242
    new-instance v3, Landroid/net/wifi/WifiNetworkScoreCache;

    new-instance v4, Lcom/android/wifitrackerlib/BaseWifiTracker$4;

    invoke-direct {v4, p0, v2}, Lcom/android/wifitrackerlib/BaseWifiTracker$4;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Handler;)V

    invoke-direct {v3, p2, v4}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    iput-object v3, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 249
    new-instance v1, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-virtual/range {p7 .. p7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Looper;Lcom/android/wifitrackerlib/BaseWifiTracker$1;)V

    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    .line 250
    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->isVerboseLoggingEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/wifitrackerlib/BaseWifiTracker;)Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/wifitrackerlib/BaseWifiTracker;)Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/wifitrackerlib/BaseWifiTracker;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->notifyOnWifiStateChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/wifitrackerlib/BaseWifiTracker;)Ljava/util/Set;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mRequestedScoreKeys:Ljava/util/Set;

    return-object p0
.end method

.method public static isVerboseLoggingEnabled()Z
    .locals 1

    .line 88
    sget-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    return v0
.end method

.method static synthetic lambda$onStop$0(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V
    .locals 0

    .line 298
    invoke-static {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->access$300(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    return-void
.end method

.method private notifyOnWifiStateChanged()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

    if-eqz v0, :cond_0

    .line 457
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wifitrackerlib/-$$Lambda$HP3AHKtlgwV_7cc2QU0oy_7hsVg;

    invoke-direct {v1, v0}, Lcom/android/wifitrackerlib/-$$Lambda$HP3AHKtlgwV_7cc2QU0oy_7hsVg;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getWifiState()I
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    return p0
.end method

.method protected handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected handleDefaultRouteChanged()V
    .locals 0

    return-void
.end method

.method protected handleLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    .locals 0

    return-void
.end method

.method protected handleNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    .locals 0

    return-void
.end method

.method protected handleNetworkScoreCacheUpdated()V
    .locals 0

    return-void
.end method

.method protected handleNetworkStateChangedAction(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected handleOnStart()V
    .locals 0

    return-void
.end method

.method protected handleRssiChangedAction()V
    .locals 0

    return-void
.end method

.method protected handleScanResultsAvailableAction(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected handleWifiStateChangedAction()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 5
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 259
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    .line 264
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 267
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 269
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 271
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 272
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiDefaultRoute:Z

    .line 275
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsCellDefaultRoute:Z

    goto :goto_0

    .line 277
    :cond_0
    iput-boolean v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiDefaultRoute:Z

    .line 278
    iput-boolean v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsCellDefaultRoute:Z

    .line 280
    :goto_0
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wifi is the default route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiDefaultRoute:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cell is the default route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsCellDefaultRoute:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 289
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wifitrackerlib/-$$Lambda$pU1S4zRpbo8eRHcPAV3B5ZXRyfo;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/-$$Lambda$pU1S4zRpbo8eRHcPAV3B5ZXRyfo;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStop()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/wifitrackerlib/-$$Lambda$BaseWifiTracker$KbGRSjO1cGYkFvB5h4MUtnDz3dU;

    invoke-direct {v2, v1}, Lcom/android/wifitrackerlib/-$$Lambda$BaseWifiTracker$KbGRSjO1cGYkFvB5h4MUtnDz3dU;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 300
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 301
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 302
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/net/NetworkScoreManager;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 304
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mRequestedScoreKeys:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wifitrackerlib/-$$Lambda$DfBMJVHEAZHlus6uOxEUavCXNI4;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/-$$Lambda$DfBMJVHEAZHlus6uOxEUavCXNI4;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
