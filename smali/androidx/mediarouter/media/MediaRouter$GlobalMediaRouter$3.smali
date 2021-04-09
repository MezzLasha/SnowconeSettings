.class Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$3;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 3292
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$3;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoutesChanged(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "controller",
            "groupRouteDescriptor",
            "routes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;",
            "Landroidx/mediarouter/media/MediaRouteDescriptor;",
            "Ljava/util/Collection<",
            "Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 3299
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$3;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    .line 3301
    iget-object p1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProvider()Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object p1

    .line 3302
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v0

    .line 3304
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$3;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v1, p1, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->assignRouteUniqueId(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3305
    new-instance v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-direct {v4, p1, v0, v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;-><init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 3306
    invoke-virtual {v4, p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 3308
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$3;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object p1, v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eq p1, v4, :cond_0

    return-void

    .line 3312
    :cond_0
    iget-object v5, v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    const/4 v6, 0x3

    iget-object v7, v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-object v2, v3

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->notifyTransfer(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/Collection;)V

    .line 3315
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$3;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3316
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    goto :goto_0

    .line 3317
    :cond_1
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_2

    .line 3319
    iget-object p1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p1, p2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateRouteDescriptorAndNotify(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 3322
    :cond_2
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$3;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->updateDynamicDescriptors(Ljava/util/Collection;)V

    :cond_3
    :goto_0
    return-void
.end method
