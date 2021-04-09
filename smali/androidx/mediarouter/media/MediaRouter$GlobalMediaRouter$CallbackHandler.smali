.class final Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;
.super Landroid/os/Handler;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackHandler"
.end annotation


# instance fields
.field private final mDynamicGroupRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempCallbackRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/MediaRouter$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 3647
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3626
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    .line 3628
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mDynamicGroupRoutes:Ljava/util/List;

    return-void
.end method

.method private invokeCallback(Landroidx/mediarouter/media/MediaRouter$CallbackRecord;ILjava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "record",
            "what",
            "obj",
            "arg"
        }
    .end annotation

    .line 3733
    iget-object p0, p1, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 3734
    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    const v1, 0xff00

    and-int/2addr v1, p2

    const/16 v2, 0x100

    if-eq v1, v2, :cond_1

    const/16 p1, 0x200

    if-eq v1, p1, :cond_0

    goto/16 :goto_4

    .line 3776
    :cond_0
    check-cast p3, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    .line 3785
    :pswitch_0
    invoke-virtual {v0, p0, p3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onProviderChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$ProviderInfo;)V

    goto :goto_4

    .line 3782
    :pswitch_1
    invoke-virtual {v0, p0, p3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onProviderRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$ProviderInfo;)V

    goto :goto_4

    .line 3779
    :pswitch_2
    invoke-virtual {v0, p0, p3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onProviderAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$ProviderInfo;)V

    goto :goto_4

    :cond_1
    const/16 v1, 0x106

    const/16 v2, 0x108

    if-eq p2, v2, :cond_3

    if-ne p2, v1, :cond_2

    goto :goto_0

    .line 3739
    :cond_2
    move-object v3, p3

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    goto :goto_1

    :cond_3
    :goto_0
    move-object v3, p3

    check-cast v3, Landroidx/core/util/Pair;

    iget-object v3, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    :goto_1
    if-eq p2, v2, :cond_5

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    goto :goto_3

    .line 3742
    :cond_5
    :goto_2
    check-cast p3, Landroidx/core/util/Pair;

    iget-object p3, p3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    :goto_3
    if-eqz v3, :cond_7

    .line 3743
    invoke-virtual {p1, v3, p2, p3, p4}, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->filterRouteEvent(Landroidx/mediarouter/media/MediaRouter$RouteInfo;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;I)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    packed-switch p2, :pswitch_data_1

    goto :goto_4

    .line 3770
    :pswitch_3
    invoke-virtual {v0, p0, v3, p4, p3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    goto :goto_4

    .line 3767
    :pswitch_4
    invoke-virtual {v0, p0, v3, p4}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteUnselected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    goto :goto_4

    .line 3764
    :pswitch_5
    invoke-virtual {v0, p0, v3, p4, v3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    goto :goto_4

    .line 3761
    :pswitch_6
    invoke-virtual {v0, p0, v3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRoutePresentationDisplayChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    goto :goto_4

    .line 3758
    :pswitch_7
    invoke-virtual {v0, p0, v3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteVolumeChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    goto :goto_4

    .line 3755
    :pswitch_8
    invoke-virtual {v0, p0, v3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    goto :goto_4

    .line 3752
    :pswitch_9
    invoke-virtual {v0, p0, v3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    goto :goto_4

    .line 3749
    :pswitch_a
    invoke-virtual {v0, p0, v3}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    :cond_7
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private syncWithSystemProvider(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "what",
            "obj"
        }
    .end annotation

    const/16 v0, 0x106

    if-eq p1, v0, :cond_1

    const/16 v0, 0x108

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 3707
    :pswitch_0
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    check-cast p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p2}, Landroidx/mediarouter/media/SystemMediaRouteProvider;->onSyncRouteChanged(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    goto :goto_1

    .line 3704
    :pswitch_1
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    check-cast p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p2}, Landroidx/mediarouter/media/SystemMediaRouteProvider;->onSyncRouteRemoved(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    goto :goto_1

    .line 3701
    :pswitch_2
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    check-cast p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p2}, Landroidx/mediarouter/media/SystemMediaRouteProvider;->onSyncRouteAdded(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    goto :goto_1

    .line 3722
    :cond_0
    check-cast p2, Landroidx/core/util/Pair;

    iget-object p1, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3723
    iget-object p2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mDynamicGroupRoutes:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3724
    iget-object p2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object p2, p2, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    invoke-virtual {p2, p1}, Landroidx/mediarouter/media/SystemMediaRouteProvider;->onSyncRouteAdded(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 3725
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/SystemMediaRouteProvider;->onSyncRouteSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    goto :goto_1

    .line 3710
    :cond_1
    check-cast p2, Landroidx/core/util/Pair;

    iget-object p1, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3711
    iget-object p2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object p2, p2, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    invoke-virtual {p2, p1}, Landroidx/mediarouter/media/SystemMediaRouteProvider;->onSyncRouteSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 3713
    iget-object p2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-static {p2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->access$100(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3714
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mDynamicGroupRoutes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3715
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider;

    invoke-virtual {v0, p2}, Landroidx/mediarouter/media/SystemMediaRouteProvider;->onSyncRouteRemoved(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 3717
    :cond_2
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mDynamicGroupRoutes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 3662
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3663
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3664
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x103

    if-ne v0, v2, :cond_0

    .line 3666
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 3667
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3668
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateSelectedRouteIfNeeded(Z)V

    .line 3672
    :cond_0
    invoke-direct {p0, v0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->syncWithSystemProvider(ILjava/lang/Object;)V

    .line 3678
    :try_start_0
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 3679
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouter;

    if-nez v3, :cond_1

    .line 3681
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3683
    :cond_1
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 3687
    :cond_2
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 3689
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;

    invoke-direct {p0, v4, v0, v1, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->invokeCallback(Landroidx/mediarouter/media/MediaRouter$CallbackRecord;ILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3692
    :cond_3
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 3693
    throw p1
.end method

.method public post(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msg",
            "obj"
        }
    .end annotation

    .line 3651
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public post(ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "obj",
            "arg"
        }
    .end annotation

    .line 3655
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 3656
    iput p3, p0, Landroid/os/Message;->arg1:I

    .line 3657
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
