.class public Lcom/android/settingslib/media/InfoMediaManager;
.super Lcom/android/settingslib/media/MediaManager;
.source "InfoMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

.field final mExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mMediaRouterCallback:Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mRouterManager:Landroid/media/MediaRouter2Manager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "InfoMediaManager"

    const/4 v1, 0x3

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/media/InfoMediaManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p3}, Lcom/android/settingslib/media/MediaManager;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 60
    new-instance p3, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;

    invoke-direct {p3, p0}, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;-><init>(Lcom/android/settingslib/media/InfoMediaManager;)V

    iput-object p3, p0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaRouterCallback:Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;

    .line 63
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settingslib/media/InfoMediaManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 76
    invoke-static {p1}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 77
    iput-object p4, p0, Lcom/android/settingslib/media/InfoMediaManager;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 78
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 79
    iput-object p2, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/media/InfoMediaManager;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/android/settingslib/media/InfoMediaManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settingslib/media/InfoMediaManager;)Lcom/android/settingslib/media/MediaDevice;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settingslib/media/InfoMediaManager;Lcom/android/settingslib/media/MediaDevice;)Lcom/android/settingslib/media/MediaDevice;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settingslib/media/InfoMediaManager;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settingslib/media/InfoMediaManager;->buildAllRoutes()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settingslib/media/InfoMediaManager;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settingslib/media/InfoMediaManager;->buildAvailableRoutes()V

    return-void
.end method

.method private buildAllRoutes()V
    .locals 4

    .line 406
    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 407
    sget-boolean v2, Lcom/android/settingslib/media/InfoMediaManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildAllRoutes() route : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", volume : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getVolume()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InfoMediaManager"

    .line 408
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    invoke-virtual {p0, v1}, Lcom/android/settingslib/media/InfoMediaManager;->addMediaDevice(Landroid/media/MediaRoute2Info;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private buildAvailableRoutes()V
    .locals 4

    .line 422
    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    iget-object v1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2Manager;->getAvailableRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 423
    sget-boolean v2, Lcom/android/settingslib/media/InfoMediaManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildAvailableRoutes() route : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", volume : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getVolume()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InfoMediaManager"

    .line 424
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settingslib/media/InfoMediaManager;->addMediaDevice(Landroid/media/MediaRoute2Info;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    .line 144
    invoke-virtual {v0, p0}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 146
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/RoutingSessionInfo;

    return-object p0
.end method

.method private refreshDevices()V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 397
    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/android/settingslib/media/InfoMediaManager;->buildAllRoutes()V

    goto :goto_0

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/media/InfoMediaManager;->buildAvailableRoutes()V

    .line 402
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaManager;->dispatchDeviceListAdded()V

    return-void
.end method


# virtual methods
.method addMediaDevice(Landroid/media/MediaRoute2Info;)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 433
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 472
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addMediaDevice() unknown device type : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InfoMediaManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 465
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 467
    new-instance v0, Lcom/android/settingslib/media/BluetoothMediaDevice;

    iget-object v3, p0, Lcom/android/settingslib/media/MediaManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    iget-object v7, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    move-object v2, v0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/settingslib/media/BluetoothMediaDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/media/MediaRouter2Manager;Landroid/media/MediaRoute2Info;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 457
    :cond_2
    :pswitch_0
    new-instance v0, Lcom/android/settingslib/media/PhoneMediaDevice;

    iget-object v1, p0, Lcom/android/settingslib/media/MediaManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    iget-object v3, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/settingslib/media/PhoneMediaDevice;-><init>(Landroid/content/Context;Landroid/media/MediaRouter2Manager;Landroid/media/MediaRoute2Info;Ljava/lang/String;)V

    goto :goto_1

    .line 441
    :cond_3
    new-instance v0, Lcom/android/settingslib/media/InfoMediaDevice;

    iget-object v1, p0, Lcom/android/settingslib/media/MediaManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    iget-object v3, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/settingslib/media/InfoMediaDevice;-><init>(Landroid/content/Context;Landroid/media/MediaRouter2Manager;Landroid/media/MediaRoute2Info;Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 444
    invoke-direct {p0}, Lcom/android/settingslib/media/InfoMediaManager;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    if-nez p1, :cond_4

    .line 446
    iput-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 478
    iget-object p0, p0, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method adjustSessionVolume(Landroid/media/RoutingSessionInfo;I)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "InfoMediaManager"

    const-string p1, "Unable to adjust session volume. RoutingSessionInfo is empty"

    .line 277
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 281
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->setSessionVolume(Landroid/media/RoutingSessionInfo;I)V

    return-void
.end method

.method connectDeviceWithoutPackageName(Lcom/android/settingslib/media/MediaDevice;)Z
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->getActiveSessions()Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 110
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RoutingSessionInfo;

    .line 111
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    iget-object p1, p1, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaRouter2Manager;->transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method getActiveMediaSession()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 418
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {p0}, Landroid/media/MediaRouter2Manager;->getActiveSessions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    return-object p0
.end method

.method shouldDisableMediaOutput(Ljava/lang/String;)Z
    .locals 5

    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "InfoMediaManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "shouldDisableMediaOutput() package name is null or empty!"

    .line 367
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 370
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getAvailableRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 371
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 372
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRoute2Info;

    .line 373
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v4, 0x7d0

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3e9

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3ea

    if-eq v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 386
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/settingslib/media/InfoMediaManager;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldDisableMediaOutput() MediaRoute2Info size : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", package name : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", shouldDisableMediaOutput : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2
.end method

.method public startScan()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    iget-object v1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaRouterCallback:Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter2Manager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2Manager$Callback;)V

    .line 87
    invoke-direct {p0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    return-void
.end method

.method public stopScan()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaRouterCallback:Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter2Manager;->unregisterCallback(Landroid/media/MediaRouter2Manager$Callback;)V

    return-void
.end method
