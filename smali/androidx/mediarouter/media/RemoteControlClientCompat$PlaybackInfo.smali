.class public final Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;
.super Ljava/lang/Object;
.source "RemoteControlClientCompat.java"


# instance fields
.field public playbackStream:I

.field public playbackType:I

.field public volume:I

.field public volumeControlId:Ljava/lang/String;

.field public volumeHandling:I

.field public volumeMax:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    const/4 v0, 0x3

    .line 79
    iput v0, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->playbackStream:I

    const/4 v0, 0x1

    .line 80
    iput v0, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->playbackType:I

    return-void
.end method
