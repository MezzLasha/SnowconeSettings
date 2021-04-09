.class final Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "MediaRouteDynamicChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 263
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

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

    .line 268
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->refreshRoutes()V

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

    .line 278
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->refreshRoutes()V

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

    .line 273
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->refreshRoutes()V

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

    .line 283
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method
