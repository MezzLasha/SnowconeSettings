.class Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeChangeListener"
.end annotation


# instance fields
.field private final mStopTrackingTouch:Ljava/lang/Runnable;

.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1237
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1225
    new-instance p1, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener$1;

    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener$1;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;)V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;->mStopTrackingTouch:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seekBar",
            "progress",
            "fromUser"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1259
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 1260
    sget-boolean p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 1261
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onProgressChanged(): calling MediaRouter.RouteInfo.requestSetVolume("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MediaRouteCtrlDialog"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    .line 1242
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouteInVolumeSliderTouched:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v1, :cond_0

    .line 1243
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;->mStopTrackingTouch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1245
    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouteInVolumeSliderTouched:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    .line 1253
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;->mStopTrackingTouch:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
