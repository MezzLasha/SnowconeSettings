.class Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;
.super Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
.source "MediaRoute2Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRoute2Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupRouteController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController$ReceiveHandler;
    }
.end annotation


# instance fields
.field private final mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

.field final mControllerHandler:Landroid/os/Handler;

.field final mInitialMemberRouteId:Ljava/lang/String;

.field mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

.field mOptimisticVolume:I

.field final mPendingCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mReceiveMessenger:Landroid/os/Messenger;

.field final mRoutingController:Landroid/media/MediaRouter2$RoutingController;

.field final mServiceMessenger:Landroid/os/Messenger;

.field final synthetic this$0:Landroidx/mediarouter/media/MediaRoute2Provider;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRoute2Provider;Landroid/media/MediaRouter2$RoutingController;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "routingController",
            "initialMemberRouteId"
        }
    .end annotation

    .line 469
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;-><init>()V

    .line 460
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 462
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 464
    new-instance p1, Landroidx/mediarouter/media/-$$Lambda$MediaRoute2Provider$GroupRouteController$40ZKNaXHWQD6e-__eeMxhJoprt0;

    invoke-direct {p1, p0}, Landroidx/mediarouter/media/-$$Lambda$MediaRoute2Provider$GroupRouteController$40ZKNaXHWQD6e-__eeMxhJoprt0;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;)V

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const/4 p1, -0x1

    .line 466
    iput p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mOptimisticVolume:I

    .line 470
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mRoutingController:Landroid/media/MediaRouter2$RoutingController;

    .line 471
    iput-object p3, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mInitialMemberRouteId:Ljava/lang/String;

    .line 472
    invoke-static {p2}, Landroidx/mediarouter/media/MediaRoute2Provider;->getMessengerFromRoutingController(Landroid/media/MediaRouter2$RoutingController;)Landroid/os/Messenger;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mServiceMessenger:Landroid/os/Messenger;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 474
    :cond_0
    new-instance p1, Landroid/os/Messenger;

    new-instance p2, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController$ReceiveHandler;

    invoke-direct {p2, p0}, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController$ReceiveHandler;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;)V

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    :goto_0
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mReceiveMessenger:Landroid/os/Messenger;

    .line 475
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mControllerHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, -0x1

    .line 464
    iput v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mOptimisticVolume:I

    return-void
.end method

.method private scheduleClearOptimisticVolume()V
    .locals 3

    .line 585
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mControllerHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 586
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mControllerHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$MediaRoute2Provider$GroupRouteController()V
    .locals 0

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->lambda$new$0()V

    return-void
.end method

.method public onAddMemberRoute(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routeId"
        }
    .end annotation

    const-string v0, "MR2Provider"

    if-eqz p1, :cond_2

    .line 554
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 559
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    invoke-virtual {v1, p1}, Landroidx/mediarouter/media/MediaRoute2Provider;->getRouteById(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object v1

    if-nez v1, :cond_1

    .line 561
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddMemberRoute: Specified route not found. routeId="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 565
    :cond_1
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mRoutingController:Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {p0, v1}, Landroid/media/MediaRouter2$RoutingController;->selectRoute(Landroid/media/MediaRoute2Info;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "onAddMemberRoute: Ignoring null or empty routeId."

    .line 555
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRelease()V
    .locals 0

    .line 531
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mRoutingController:Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->release()V

    return-void
.end method

.method public onRemoveMemberRoute(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routeId"
        }
    .end annotation

    const-string v0, "MR2Provider"

    if-eqz p1, :cond_2

    .line 570
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 575
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    invoke-virtual {v1, p1}, Landroidx/mediarouter/media/MediaRoute2Provider;->getRouteById(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object v1

    if-nez v1, :cond_1

    .line 577
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoveMemberRoute: Specified route not found. routeId="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 581
    :cond_1
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mRoutingController:Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {p0, v1}, Landroid/media/MediaRouter2$RoutingController;->deselectRoute(Landroid/media/MediaRoute2Info;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "onRemoveMemberRoute: Ignoring null or empty routeId."

    .line 571
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSetVolume(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mRoutingController:Landroid/media/MediaRouter2$RoutingController;

    if-nez v0, :cond_0

    return-void

    .line 483
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RoutingController;->setVolume(I)V

    .line 484
    iput p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mOptimisticVolume:I

    .line 485
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->scheduleClearOptimisticVolume()V

    return-void
.end method

.method public onUpdateMemberRoutes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routeIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MR2Provider"

    if-eqz p1, :cond_2

    .line 537
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 542
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 543
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    invoke-virtual {v1, p1}, Landroidx/mediarouter/media/MediaRoute2Provider;->getRouteById(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object v1

    if-nez v1, :cond_1

    .line 545
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateMemberRoutes: Specified route not found. routeId="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 549
    :cond_1
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    invoke-virtual {p0, v1}, Landroid/media/MediaRouter2;->transferTo(Landroid/media/MediaRoute2Info;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "onUpdateMemberRoutes: Ignoring null or empty routeIds."

    .line 538
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delta"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mRoutingController:Landroid/media/MediaRouter2$RoutingController;

    if-nez v0, :cond_0

    return-void

    .line 493
    :cond_0
    iget v1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mOptimisticVolume:I

    if-gez v1, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaRouter2$RoutingController;->getVolume()I

    move-result v1

    :cond_1
    const/4 v0, 0x0

    add-int/2addr v1, p1

    .line 495
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mRoutingController:Landroid/media/MediaRouter2$RoutingController;

    .line 496
    invoke-virtual {p1}, Landroid/media/MediaRouter2$RoutingController;->getVolumeMax()I

    move-result p1

    .line 495
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mOptimisticVolume:I

    .line 497
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mRoutingController:Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RoutingController;->setVolume(I)V

    .line 498
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->scheduleClearOptimisticVolume()V

    return-void
.end method

.method setMemberRouteVolume(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "memberRouteOriginalId",
            "volume"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 592
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x7

    .line 593
    iput v2, v1, Landroid/os/Message;->what:I

    .line 594
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 596
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "volume"

    .line 597
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "routeId"

    .line 598
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 601
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mReceiveMessenger:Landroid/os/Messenger;

    iput-object p1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 603
    :try_start_0
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MR2Provider"

    const-string p2, "Could not send control request to service."

    .line 607
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :goto_0
    return-void
.end method

.method updateMemberRouteVolume(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "memberRouteOriginalId",
            "delta"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 613
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x8

    .line 614
    iput v2, v1, Landroid/os/Message;->what:I

    .line 615
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 617
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "volume"

    .line 618
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "routeId"

    .line 619
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 622
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mReceiveMessenger:Landroid/os/Messenger;

    iput-object p1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 624
    :try_start_0
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MR2Provider"

    const-string p2, "Could not send control request to service."

    .line 628
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :goto_0
    return-void
.end method
