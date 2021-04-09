.class final Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;
.implements Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GlobalMediaRouter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;,
        Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;,
        Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$Mr2ProviderCallback;,
        Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$ProviderCallback;
    }
.end annotation


# instance fields
.field private mActiveScanThrottlingHelper:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

.field final mApplicationContext:Landroid/content/Context;

.field private mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field private mCallbackCount:I

.field final mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

.field private mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field private mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

.field private mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

.field private final mDisplayManager:Landroidx/core/hardware/display/DisplayManagerCompat;

.field mDynamicRoutesListener:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;

.field private final mLowRam:Z

.field final mMediaTransferEnabled:Z

.field final mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

.field mOnPrepareTransferListener:Landroidx/mediarouter/media/MediaRouter$OnPrepareTransferListener;

.field final mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

.field private final mProviderCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/MediaRouter$ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRegisteredProviderWatcher:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

.field private final mRemoteControlClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

.field final mRouteControllerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/mediarouter/media/MediaRouteProvider$RouteController;",
            ">;"
        }
    .end annotation
.end field

.field private mRouterParams:Landroidx/mediarouter/media/MediaRouterParams;

.field final mRouters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/mediarouter/media/MediaRouter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

.field private mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

.field final mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

.field mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

.field private final mUniqueIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor",
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "applicationContext"
        }
    .end annotation

    .line 2414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    .line 2357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    .line 2358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    .line 2359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    .line 2360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    .line 2362
    new-instance v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    invoke-direct {v0}, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    .line 2364
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$ProviderCallback;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviderCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

    .line 2365
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    .line 2369
    new-instance v0, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

    new-instance v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    invoke-direct {v1, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;)V

    invoke-direct {v0, v1}, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mActiveScanThrottlingHelper:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

    .line 2390
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    .line 2399
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

    .line 3291
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$3;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$3;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDynamicRoutesListener:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;

    .line 2415
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 2416
    invoke-static {p1}, Landroidx/core/hardware/display/DisplayManagerCompat;->getInstance(Landroid/content/Context;)Landroidx/core/hardware/display/DisplayManagerCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDisplayManager:Landroidx/core/hardware/display/DisplayManagerCompat;

    const-string v0, "activity"

    .line 2418
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2417
    invoke-static {v0}, Landroidx/core/app/ActivityManagerCompat;->isLowRamDevice(Landroid/app/ActivityManager;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    .line 2421
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2422
    invoke-static {p1}, Landroidx/mediarouter/media/MediaTransferReceiver;->isDeclared(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMediaTransferEnabled:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2424
    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMediaTransferEnabled:Z

    .line 2427
    :goto_0
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMediaTransferEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2428
    new-instance v0, Landroidx/mediarouter/media/MediaRoute2Provider;

    new-instance v2, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$Mr2ProviderCallback;

    invoke-direct {v2, p0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$Mr2ProviderCallback;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$1;)V

    invoke-direct {v0, p1, v2}, Landroidx/mediarouter/media/MediaRoute2Provider;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRoute2Provider$Callback;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    goto :goto_1

    .line 2431
    :cond_1
    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 2436
    :goto_1
    invoke-static {p1, p0}, Landroidx/mediarouter/media/SystemMediaRouteProvider;->obtain(Landroid/content/Context;Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;)Landroidx/mediarouter/media/SystemMediaRouteProvider;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    return-void
.end method

.method static synthetic access$100(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 0

    .line 2350
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    return-object p0
.end method

.method private findProviderInfo(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "providerInstance"
        }
    .end annotation

    .line 2884
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2886
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroidx/mediarouter/media/MediaRouteProvider;

    if-ne v2, p1, :cond_0

    .line 2887
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private findRouteByUniqueId(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uniqueId"
        }
    .end annotation

    .line 3061
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3063
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private isSystemDefaultRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "route"
        }
    .end annotation

    .line 3144
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    if-ne v0, p0, :cond_0

    iget-object p0, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    const-string p1, "DEFAULT_ROUTE"

    .line 3145
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSystemLiveAudioOnlyRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "route"
        }
    .end annotation

    .line 3138
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    if-ne v0, p0, :cond_0

    const-string p0, "android.media.intent.category.LIVE_AUDIO"

    .line 3139
    invoke-virtual {p1, p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "android.media.intent.category.LIVE_VIDEO"

    .line 3140
    invoke-virtual {p1, p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateMr2ProviderDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteSelector;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selector",
            "activeScan"
        }
    .end annotation

    .line 2783
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->isMediaTransferEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2787
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    if-eqz v0, :cond_1

    .line 2788
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 2789
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v0

    if-ne v0, p2, :cond_1

    return-void

    .line 2792
    :cond_1
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 2794
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 2797
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    goto :goto_0

    .line 2800
    :cond_3
    new-instance v0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-direct {v0, p1, p2}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;-><init>(Landroidx/mediarouter/media/MediaRouteSelector;Z)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 2803
    :goto_0
    sget-boolean p1, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz p1, :cond_4

    .line 2804
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Updated MediaRoute2Provider\'s discovery request: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaRouter"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    :cond_4
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-virtual {p1, p0}, Landroidx/mediarouter/media/MediaRouteProvider;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    return-void
.end method

.method private updateProviderContents(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "provider",
            "providerDescriptor"
        }
    .end annotation

    .line 2895
    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->updateDescriptor(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "MediaRouter"

    if-eqz p2, :cond_e

    .line 2903
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    .line 2904
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteProvider;->getDescriptor()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v3

    if-ne p2, v3, :cond_e

    .line 2905
    :cond_1
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object p2

    .line 2908
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2909
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2910
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v5, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "Route added: "

    const/16 v8, 0x101

    if-eqz v6, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/mediarouter/media/MediaRouteDescriptor;

    if-eqz v6, :cond_9

    .line 2912
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouteDescriptor;->isValid()Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_3

    .line 2917
    :cond_2
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v9

    .line 2918
    invoke-virtual {p1, v9}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->findRouteIndexByDescriptorId(Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_5

    .line 2922
    invoke-virtual {p0, p1, v9}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->assignRouteUniqueId(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2923
    new-instance v11, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-direct {v11, p1, v9, v10}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;-><init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 2925
    iget-object v9, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    add-int/lit8 v10, v0, 0x1

    invoke-interface {v9, v0, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2926
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2928
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getGroupMemberIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2929
    new-instance v0, Landroidx/core/util/Pair;

    invoke-direct {v0, v11, v6}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2931
    :cond_3
    invoke-virtual {v11, v6}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 2933
    sget-boolean v0, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 2934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    :cond_4
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    invoke-virtual {v0, v8, v11}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    :goto_1
    move v0, v10

    goto :goto_0

    :cond_5
    if-ge v10, v0, :cond_6

    .line 2939
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring route descriptor with duplicate id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2942
    :cond_6
    iget-object v7, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2944
    iget-object v8, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    add-int/lit8 v9, v0, 0x1

    invoke-static {v8, v10, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 2946
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getGroupMemberIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 2947
    new-instance v0, Landroidx/core/util/Pair;

    invoke-direct {v0, v7, v6}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2950
    :cond_7
    invoke-virtual {p0, v7, v6}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateRouteDescriptorAndNotify(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    move-result v0

    if-eqz v0, :cond_8

    .line 2951
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne v7, v0, :cond_8

    move v5, v1

    :cond_8
    :goto_2
    move v0, v9

    goto/16 :goto_0

    .line 2913
    :cond_9
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring invalid system route descriptor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2959
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/util/Pair;

    .line 2960
    iget-object v6, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2961
    iget-object v3, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-virtual {v6, v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 2962
    sget-boolean v3, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v3, :cond_b

    .line 2963
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    :cond_b
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    invoke-virtual {v3, v8, v6}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    goto :goto_4

    .line 2967
    :cond_c
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/util/Pair;

    .line 2968
    iget-object v4, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2969
    iget-object v3, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-virtual {p0, v4, v3}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateRouteDescriptorAndNotify(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    move-result v3

    if-eqz v3, :cond_d

    .line 2970
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne v4, v3, :cond_d

    move v5, v1

    goto :goto_5

    .line 2976
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring invalid provider descriptor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v0

    .line 2980
    :cond_f
    iget-object p2, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_6
    if-lt p2, v0, :cond_10

    .line 2982
    iget-object v3, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    const/4 v4, 0x0

    .line 2983
    invoke-virtual {v3, v4}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 2985
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    .line 2989
    :cond_10
    invoke-virtual {p0, v5}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateSelectedRouteIfNeeded(Z)V

    .line 2996
    iget-object p2, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_7
    if-lt p2, v0, :cond_12

    .line 2997
    iget-object v1, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2998
    sget-boolean v3, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v3, :cond_11

    .line 2999
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Route removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    :cond_11
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v4, 0x102

    invoke-virtual {v3, v4, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    .line 3005
    :cond_12
    sget-boolean p2, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz p2, :cond_13

    .line 3006
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Provider changed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    :cond_13
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 p2, 0x203

    invoke-virtual {p0, p2, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method addMemberToDynamicGroup(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "route"
        }
    .end annotation

    .line 2600
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    instance-of v0, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    if-eqz v0, :cond_2

    .line 2604
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;

    move-result-object v0

    .line 2605
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 2606
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->isGroupable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2611
    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    check-cast p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 2612
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDescriptorId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->onAddMemberRoute(Ljava/lang/String;)V

    return-void

    .line 2607
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring attempt to add a non-groupable route to dynamic group : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaRouter"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2601
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There is no currently selected dynamic group route."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addProvider(Landroidx/mediarouter/media/MediaRouteProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "providerInstance"
        }
    .end annotation

    .line 2828
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2830
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    invoke-direct {v0, p1}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;-><init>(Landroidx/mediarouter/media/MediaRouteProvider;)V

    .line 2831
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2832
    sget-boolean v1, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaRouter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v2, 0x201

    invoke-virtual {v1, v2, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2837
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteProvider;->getDescriptor()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateProviderContents(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 2839
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviderCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouteProvider;->setCallback(Landroidx/mediarouter/media/MediaRouteProvider$Callback;)V

    .line 2841
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-virtual {p1, p0}, Landroidx/mediarouter/media/MediaRouteProvider;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    :cond_1
    return-void
.end method

.method assignRouteUniqueId(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "provider",
            "routeDescriptorId"
        }
    .end annotation

    .line 3043
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    .line 3044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3045
    invoke-direct {p0, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->findRouteByUniqueId(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 3046
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    new-instance v1, Landroidx/core/util/Pair;

    invoke-direct {v1, p1, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 3049
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Either "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t unique in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or we\'re trying to assign a unique ID for an already added route"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaRouter"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    move v2, v1

    .line 3052
    :goto_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "%s_%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3053
    invoke-direct {p0, v3}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->findRouteByUniqueId(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    .line 3054
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    new-instance v0, Landroidx/core/util/Pair;

    invoke-direct {v0, p1, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method chooseFallbackRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 3

    .line 3127
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3128
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eq v1, v2, :cond_0

    .line 3129
    invoke-direct {p0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->isSystemLiveAudioOnlyRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3130
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 3134
    :cond_1
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    return-object p0
.end method

.method getCallbackCount()I
    .locals 0

    .line 2812
    iget p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackCount:I

    return p0
.end method

.method getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 1

    .line 2569
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz p0, :cond_0

    return-object p0

    .line 2573
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "There is no default route.  The media router has not yet been fully initialized."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "route"
        }
    .end annotation

    .line 2596
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;

    move-result-object p0

    return-object p0
.end method

.method public getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 0

    .line 3392
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz p0, :cond_0

    .line 3393
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRoute(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uniqueId"
        }
    .end annotation

    .line 2528
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2529
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRouter(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 2454
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 2455
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter;

    if-nez v1, :cond_1

    .line 2457
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2458
    :cond_1
    iget-object v2, v1, Landroidx/mediarouter/media/MediaRouter;->mContext:Landroid/content/Context;

    if-ne v2, p1, :cond_0

    return-object v1

    .line 2462
    :cond_2
    new-instance v0, Landroidx/mediarouter/media/MediaRouter;

    invoke-direct {v0, p1}, Landroidx/mediarouter/media/MediaRouter;-><init>(Landroid/content/Context;)V

    .line 2463
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method getRouterParams()Landroidx/mediarouter/media/MediaRouterParams;
    .locals 0

    .line 2542
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouterParams:Landroidx/mediarouter/media/MediaRouterParams;

    return-object p0
.end method

.method public getRoutes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .line 2537
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    return-object p0
.end method

.method getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 1

    .line 2584
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz p0, :cond_0

    return-object p0

    .line 2588
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "There is no currently selected route.  The media router has not yet been fully initialized."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getUniqueId(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "provider",
            "routeDescriptorId"
        }
    .end annotation

    .line 3071
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    .line 3072
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    new-instance v0, Landroidx/core/util/Pair;

    invoke-direct {v0, p1, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method isMediaTransferEnabled()Z
    .locals 0

    .line 2816
    iget-boolean p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMediaTransferEnabled:Z

    return p0
.end method

.method public isRouteAvailable(Landroidx/mediarouter/media/MediaRouteSelector;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selector",
            "flags"
        }
    .end annotation

    .line 2669
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2674
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    if-eqz v0, :cond_1

    return v2

    .line 2679
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_4

    .line 2681
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_2

    .line 2683
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 2686
    :cond_2
    invoke-virtual {v4, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method isTransferToLocalEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method maybeUpdateMemberRouteControllers()V
    .locals 5

    .line 3232
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3235
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    move-result-object v0

    .line 3237
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3238
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3239
    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3242
    :cond_1
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    .line 3243
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3244
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3245
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3246
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3247
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    const/4 v4, 0x0

    .line 3248
    invoke-virtual {v3, v4}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 3249
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 3250
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 3254
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3255
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    iget-object v3, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3256
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v2

    iget-object v3, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v4, v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 3257
    invoke-virtual {v2, v3, v4}, Landroidx/mediarouter/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object v2

    .line 3259
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 3260
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    return-void
.end method

.method notifyTransfer(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "router",
            "route",
            "routeController",
            "reason",
            "requestedRoute",
            "memberRoutes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            "Landroidx/mediarouter/media/MediaRouteProvider$RouteController;",
            "I",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            "Ljava/util/Collection<",
            "Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 3269
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    if-eqz v0, :cond_0

    .line 3270
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->cancel()V

    const/4 v0, 0x0

    .line 3271
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 3273
    :cond_0
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 3276
    iget p1, v0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mReason:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mOnPrepareTransferListener:Landroidx/mediarouter/media/MediaRouter$OnPrepareTransferListener;

    if-nez p1, :cond_1

    goto :goto_0

    .line 3280
    :cond_1
    iget-object p2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object p3, v0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3281
    invoke-interface {p1, p2, p3}, Landroidx/mediarouter/media/MediaRouter$OnPrepareTransferListener;->onPrepareTransfer(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    if-nez p1, :cond_2

    .line 3284
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->finishTransfer()V

    goto :goto_1

    .line 3286
    :cond_2
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)V

    goto :goto_1

    .line 3278
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->finishTransfer()V

    :goto_1
    return-void
.end method

.method public onSystemRouteSelectedByDescriptorId(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 3330
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v1, 0x106

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3331
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    invoke-direct {p0, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3333
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->findRouteByDescriptorId(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3335
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->select()V

    :cond_0
    return-void
.end method

.method public releaseProviderController(Landroidx/mediarouter/media/RegisteredMediaRouteProvider;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "provider",
            "controller"
        }
    .end annotation

    .line 2867
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-ne p1, p2, :cond_0

    .line 2868
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->chooseFallbackRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    :cond_0
    return-void
.end method

.method removeMemberFromDynamicGroup(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "route"
        }
    .end annotation

    .line 2616
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    instance-of v0, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    if-eqz v0, :cond_3

    .line 2620
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;

    move-result-object v0

    .line 2621
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MediaRouter"

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 2622
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->isUnselectable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2627
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    const-string p0, "Ignoring attempt to remove the last member route."

    .line 2628
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2631
    :cond_1
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    check-cast p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 2632
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDescriptorId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->onRemoveMemberRoute(Ljava/lang/String;)V

    return-void

    .line 2623
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring attempt to remove a non-unselectable member route : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2617
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There is no currently selected dynamic group route."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeProvider(Landroidx/mediarouter/media/MediaRouteProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "providerInstance"
        }
    .end annotation

    .line 2847
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2850
    invoke-virtual {p1, v1}, Landroidx/mediarouter/media/MediaRouteProvider;->setCallback(Landroidx/mediarouter/media/MediaRouteProvider$Callback;)V

    .line 2852
    invoke-virtual {p1, v1}, Landroidx/mediarouter/media/MediaRouteProvider;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    .line 2854
    invoke-direct {p0, v0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateProviderContents(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 2856
    sget-boolean p1, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 2857
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider removed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaRouter"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    :cond_0
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v1, 0x202

    invoke-virtual {p1, v1, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2860
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public requestSetVolume(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "route",
            "volume"
        }
    .end annotation

    .line 2506
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_0

    .line 2507
    invoke-virtual {v0, p2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    goto :goto_0

    .line 2508
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2509
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz p0, :cond_1

    .line 2511
    invoke-virtual {p0, p2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestUpdateVolume(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "route",
            "delta"
        }
    .end annotation

    .line 2517
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_0

    .line 2518
    invoke-virtual {v0, p2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUpdateVolume(I)V

    goto :goto_0

    .line 2519
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2520
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz p0, :cond_1

    .line 2522
    invoke-virtual {p0, p2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUpdateVolume(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "route",
            "unselectReason"
        }
    .end annotation

    .line 2650
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MediaRouter"

    if-nez v0, :cond_0

    .line 2651
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring attempt to select removed route: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2654
    :cond_0
    iget-boolean v0, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    if-nez v0, :cond_1

    .line 2655
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring attempt to select disabled route: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2659
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 2660
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eq v0, p1, :cond_2

    .line 2662
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDescriptorId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/mediarouter/media/MediaRoute2Provider;->transferTo(Ljava/lang/String;)V

    return-void

    .line 2665
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->selectRouteInternal(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    return-void
.end method

.method selectRouteInternal(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "route",
            "unselectReason"
        }
    .end annotation

    .line 3152
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    const/4 v1, 0x3

    const-string v2, "MediaRouter"

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3153
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 3154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v1

    .line 3156
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 3157
    aget-object v5, v0, v4

    .line 3158
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    .line 3159
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3160
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    .line 3161
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3162
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  "

    .line 3163
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3165
    :cond_1
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    const-string v4, ", callers="

    if-nez v0, :cond_2

    .line 3166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSelectedRouteInternal is called while sGlobal is null: pkgName="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 3167
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3166
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3169
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default route is selected while a BT route is available: pkgName="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 3170
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3169
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne v0, p1, :cond_4

    return-void

    .line 3179
    :cond_4
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 3180
    iput-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3181
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_5

    .line 3182
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 3183
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 3184
    iput-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 3189
    :cond_5
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->isMediaTransferEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProvider()Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->supportsDynamicGroup()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3191
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    iget-object v1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouteProvider;->onCreateDynamicGroupRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3195
    iget-object p2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 3196
    invoke-static {p2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p2

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDynamicRoutesListener:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;

    .line 3195
    invoke-virtual {v0, p2, v1}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->setOnDynamicRoutesChangedListener(Ljava/util/concurrent/Executor;Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;)V

    .line 3198
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3199
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 3200
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSelect()V

    return-void

    .line 3203
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectedRouteInternal: Failed to create dynamic group route controller. route="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    :cond_7
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    iget-object v1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 3211
    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 3214
    :cond_8
    sget-boolean v0, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 3215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Route selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    :cond_9
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_a

    .line 3220
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3221
    iput-object v7, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 3222
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v0, 0x106

    new-instance v1, Landroidx/core/util/Pair;

    invoke-direct {v1, v3, p1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1, p2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;I)V

    return-void

    :cond_a
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p0

    move-object v6, p1

    move v8, p2

    .line 3226
    invoke-virtual/range {v4 .. v10}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->notifyTransfer(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 2440
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->addProvider(Landroidx/mediarouter/media/MediaRouteProvider;)V

    .line 2441
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    if-eqz v0, :cond_0

    .line 2442
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->addProvider(Landroidx/mediarouter/media/MediaRouteProvider;)V

    .line 2447
    :cond_0
    new-instance v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRegisteredProviderWatcher:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    .line 2449
    invoke-virtual {v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->start()V

    return-void
.end method

.method transferToRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "route"
        }
    .end annotation

    .line 2636
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    instance-of v0, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    if-eqz v0, :cond_2

    .line 2640
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2641
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->isTransferable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2645
    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    check-cast p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 2646
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDescriptorId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->onUpdateMemberRoutes(Ljava/util/List;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "MediaRouter"

    const-string p1, "Ignoring attempt to transfer to a non-transferable route."

    .line 2642
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2637
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There is no currently selected dynamic group route."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateDiscoveryRequest()V
    .locals 14

    .line 2698
    new-instance v0, Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    invoke-direct {v0}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;-><init>()V

    .line 2699
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mActiveScanThrottlingHelper:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->reset()V

    .line 2702
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    .line 2703
    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/mediarouter/media/MediaRouter;

    if-nez v5, :cond_1

    .line 2705
    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2707
    :cond_1
    iget-object v6, v5, Landroidx/mediarouter/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v3, v6

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_0

    .line 2710
    iget-object v8, v5, Landroidx/mediarouter/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;

    .line 2711
    iget-object v9, v8, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0, v9}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->addSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    .line 2712
    iget v9, v8, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mFlags:I

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    move v9, v10

    goto :goto_2

    :cond_2
    move v9, v2

    .line 2714
    :goto_2
    iget-object v11, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mActiveScanThrottlingHelper:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

    iget-wide v12, v8, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mTimestamp:J

    invoke-virtual {v11, v9, v12, v13}, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->requestActiveScan(ZJ)V

    if-eqz v9, :cond_3

    move v4, v10

    .line 2720
    :cond_3
    iget v8, v8, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mFlags:I

    and-int/lit8 v9, v8, 0x4

    if-eqz v9, :cond_4

    .line 2721
    iget-boolean v9, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    if-nez v9, :cond_4

    move v4, v10

    :cond_4
    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_5

    move v4, v10

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2732
    :cond_6
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mActiveScanThrottlingHelper:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

    .line 2734
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->finalizeActiveScanAndScheduleSuppressActiveScanRunnable()Z

    move-result v1

    .line 2736
    iput v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackCount:I

    if-eqz v4, :cond_7

    .line 2737
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->build()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v3

    goto :goto_3

    :cond_7
    sget-object v3, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 2741
    :goto_3
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->build()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateMr2ProviderDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteSelector;Z)V

    .line 2744
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    if-eqz v0, :cond_8

    .line 2745
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 2746
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v0

    if-ne v0, v1, :cond_8

    return-void

    .line 2749
    :cond_8
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez v1, :cond_a

    .line 2751
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 2754
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    goto :goto_4

    .line 2757
    :cond_a
    new-instance v0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-direct {v0, v3, v1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;-><init>(Landroidx/mediarouter/media/MediaRouteSelector;Z)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 2759
    :goto_4
    sget-boolean v0, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    const-string v3, "MediaRouter"

    if-eqz v0, :cond_b

    .line 2760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updated discovery request: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz v4, :cond_c

    if-nez v1, :cond_c

    .line 2762
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    if-eqz v0, :cond_c

    const-string v0, "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY."

    .line 2763
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    :cond_c
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_5
    if-ge v2, v0, :cond_e

    .line 2772
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroidx/mediarouter/media/MediaRouteProvider;

    .line 2773
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    if-ne v1, v3, :cond_d

    goto :goto_6

    .line 2777
    :cond_d
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v1, v3}, Landroidx/mediarouter/media/MediaRouteProvider;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    return-void
.end method

.method updatePlaybackInfoFromSelectedRoute()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 3411
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_1

    .line 3412
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    iput v0, v1, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volume:I

    .line 3413
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    iput v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeMax:I

    .line 3414
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v1

    iput v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    .line 3415
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getPlaybackStream()I

    move-result v1

    iput v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->playbackStream:I

    .line 3416
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v1

    iput v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->playbackType:I

    .line 3417
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMediaTransferEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3418
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    if-ne v0, v1, :cond_0

    .line 3419
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 3420
    invoke-static {v1}, Landroidx/mediarouter/media/MediaRoute2Provider;->getSessionIdForRouteController(Landroidx/mediarouter/media/MediaRouteProvider$RouteController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeControlId:Ljava/lang/String;

    goto :goto_0

    .line 3422
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeControlId:Ljava/lang/String;

    .line 3425
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 3427
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;

    .line 3428
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->updatePlaybackInfo()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method updateProviderDescriptor(Landroidx/mediarouter/media/MediaRouteProvider;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "providerInstance",
            "descriptor"
        }
    .end annotation

    .line 2876
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2879
    invoke-direct {p0, p1, p2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateProviderContents(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    :cond_0
    return-void
.end method

.method updateRouteDescriptorAndNotify(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "route",
            "routeDescriptor"
        }
    .end annotation

    .line 3013
    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    move-result p2

    if-eqz p2, :cond_5

    and-int/lit8 v0, p2, 0x1

    const-string v1, "MediaRouter"

    if-eqz v0, :cond_1

    .line 3016
    sget-boolean v0, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route changed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v2, 0x103

    invoke-virtual {v0, v2, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_3

    .line 3022
    sget-boolean v0, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 3023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route volume changed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    :cond_2
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v2, 0x104

    invoke-virtual {v0, v2, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    :cond_3
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_5

    .line 3028
    sget-boolean v0, Landroidx/mediarouter/media/MediaRouter;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 3029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route presentation display changed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    :cond_4
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v0, 0x105

    invoke-virtual {p0, v0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    :cond_5
    return p2
.end method

.method updateSelectedRouteIfNeeded(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedRouteDescriptorChanged"
        }
    .end annotation

    .line 3077
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    const/4 v1, 0x0

    const-string v2, "MediaRouter"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing the default route because it is no longer selectable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3082
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3083
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3084
    invoke-direct {p0, v3}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->isSystemDefaultRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3085
    iput-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found default route: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    :cond_2
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing the bluetooth route because it is no longer selectable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3098
    :cond_3
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3099
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3100
    invoke-direct {p0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->isSystemLiveAudioOnlyRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3101
    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found bluetooth route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_8

    .line 3117
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->maybeUpdateMemberRouteControllers()V

    .line 3118
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    goto :goto_1

    .line 3110
    :cond_7
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unselecting the current route because it is no longer selectable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->chooseFallbackRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->selectRouteInternal(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    :cond_8
    :goto_1
    return-void
.end method
