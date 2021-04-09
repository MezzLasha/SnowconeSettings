.class final Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "MediaRouteChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteChooserDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 372
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "router",
            "info"
        }
    .end annotation

    .line 377
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->refreshRoutes()V

    return-void
.end method

.method public onRouteChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "router",
            "info"
        }
    .end annotation

    .line 387
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->refreshRoutes()V

    return-void
.end method

.method public onRouteRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "router",
            "info"
        }
    .end annotation

    .line 382
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->refreshRoutes()V

    return-void
.end method

.method public onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "router",
            "route"
        }
    .end annotation

    .line 392
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method
