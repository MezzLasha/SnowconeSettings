.class final Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteControlClientRecord"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;


# virtual methods
.method public updatePlaybackInfo()V
    .locals 0

    .line 3607
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    const/4 p0, 0x0

    throw p0
.end method
