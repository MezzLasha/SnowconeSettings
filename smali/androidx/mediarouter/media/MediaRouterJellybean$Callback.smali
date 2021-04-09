.class public interface abstract Landroidx/mediarouter/media/MediaRouterJellybean$Callback;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onRouteAdded(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routeObj"
        }
    .end annotation
.end method

.method public abstract onRouteChanged(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routeObj"
        }
    .end annotation
.end method

.method public abstract onRouteGrouped(Ljava/lang/Object;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "routeObj",
            "groupObj",
            "index"
        }
    .end annotation
.end method

.method public abstract onRouteRemoved(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routeObj"
        }
    .end annotation
.end method

.method public abstract onRouteSelected(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "routeObj"
        }
    .end annotation
.end method

.method public abstract onRouteUngrouped(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "routeObj",
            "groupObj"
        }
    .end annotation
.end method

.method public abstract onRouteUnselected(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "routeObj"
        }
    .end annotation
.end method

.method public abstract onRouteVolumeChanged(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routeObj"
        }
    .end annotation
.end method
