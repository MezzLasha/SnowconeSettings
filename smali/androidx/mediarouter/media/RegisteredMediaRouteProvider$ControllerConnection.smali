.class interface abstract Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/RegisteredMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ControllerConnection"
.end annotation


# virtual methods
.method public abstract attachConnection(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connection"
        }
    .end annotation
.end method

.method public abstract detachConnection()V
.end method

.method public abstract getControllerId()I
.end method
