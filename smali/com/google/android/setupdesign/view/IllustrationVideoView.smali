.class public Lcom/google/android/setupdesign/view/IllustrationVideoView;
.super Landroid/view/TextureView;
.source "IllustrationVideoView.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private aspectRatio:F

.field private isMediaPlayerLoading:Z

.field protected mediaPlayer:Landroid/media/MediaPlayer;

.field private prepared:Z

.field private shouldPauseVideoWhenFinished:Z

.field surface:Landroid/view/Surface;

.field private videoResId:I

.field private videoResPackageName:Ljava/lang/String;

.field private visibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 67
    iput v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->aspectRatio:F

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResId:I

    const/4 v1, 0x1

    .line 80
    iput-boolean v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->shouldPauseVideoWhenFinished:Z

    .line 86
    iput v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->visibility:I

    .line 94
    iput-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->isMediaPlayerLoading:Z

    .line 98
    sget-object v2, Lcom/google/android/setupdesign/R$styleable;->SudIllustrationVideoView:[I

    .line 99
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 100
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudIllustrationVideoView_sudVideo:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 104
    invoke-static {}, Lcom/google/android/setupdesign/util/BuildCompatUtils;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget v0, Lcom/google/android/setupdesign/R$styleable;->SudIllustrationVideoView_sudPauseVideoWhenFinished:I

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 107
    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setPauseVideoWhenFinished(Z)V

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVideoResource(I)V

    const p1, 0x3f7ffffe    # 0.9999999f

    .line 116
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setScaleX(F)V

    .line 117
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setScaleX(F)V

    .line 119
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private initVideo()V
    .locals 1

    .line 305
    invoke-virtual {p0}, Landroid/view/TextureView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->createSurface()V

    .line 309
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->createMediaPlayer()V

    goto :goto_0

    :cond_1
    const-string p0, "IllustrationVideoView"

    const-string v0, "Surface is null"

    .line 313
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private reattach()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->initVideo()V

    :cond_0
    return-void
.end method

.method private setIsMediaPlayerLoading(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->isMediaPlayerLoading:Z

    .line 272
    iget p1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->visibility:I

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    return-void
.end method

.method private setVideoResourceInternal(ILjava/lang/String;)V
    .locals 3

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 232
    iget-object p0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 234
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to set video data source: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IllustrationVideoView"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected createMediaPlayer()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResId:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 217
    :cond_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 219
    iget-object v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 221
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 222
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 223
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 225
    iget v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResId:I

    iget-object v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVideoResourceInternal(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected createSurface()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    .line 244
    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 246
    invoke-direct {p0, v1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setIsMediaPlayerLoading(Z)V

    .line 247
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method protected getAspectRatio()F
    .locals 0

    .line 436
    iget p0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->aspectRatio:F

    return p0
.end method

.method public getCurrentPosition()I
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 0

    .line 432
    iget-object p0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method protected isPrepared()Z
    .locals 0

    .line 409
    iget-boolean p0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->prepared:Z

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 414
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "MediaPlayer error. what="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " extra="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IllustrationVideoView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 369
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setIsMediaPlayerLoading(Z)V

    .line 370
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->onRenderingStart()V

    :cond_0
    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 124
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 125
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v0, p2

    int-to-float v1, p1

    .line 127
    iget v2, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->aspectRatio:F

    mul-float v3, v1, v2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    div-float/2addr v0, v2

    float-to-int p1, v0

    goto :goto_0

    :cond_0
    mul-float/2addr v1, v2

    float-to-int p2, v1

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 136
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 137
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 135
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->prepared:Z

    .line 378
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->shouldLoop()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 381
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 382
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    goto :goto_0

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected video size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IllustrationVideoView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 386
    :goto_0
    iget p1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->aspectRatio:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_1

    .line 387
    iput v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->aspectRatio:F

    .line 388
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    .line 390
    :cond_1
    invoke-virtual {p0}, Landroid/view/TextureView;->getWindowVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 391
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->start()V

    :cond_2
    return-void
.end method

.method protected onRenderingStart()V
    .locals 0

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 397
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->isPrepared()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 398
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    :cond_0
    const-string p0, "IllustrationVideoView"

    const-string p1, "Seek complete but media player not prepared"

    .line 400
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const/4 p1, 0x1

    .line 323
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setIsMediaPlayerLoading(Z)V

    .line 324
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->initVideo()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 332
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->release()V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 197
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->start()V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->stop()V

    :goto_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 253
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->reattach()V

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->release()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 289
    iput-object v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->prepared:Z

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 294
    iput-object v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method public setPauseVideoWhenFinished(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->shouldPauseVideoWhenFinished:Z

    return-void
.end method

.method public setVideoResource(I)V
    .locals 1

    .line 183
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVideoResource(ILjava/lang/String;)V

    return-void
.end method

.method public setVideoResource(ILjava/lang/String;)V
    .locals 1

    .line 147
    iget v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResId:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResPackageName:Ljava/lang/String;

    .line 148
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    :cond_0
    iput p1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResId:I

    .line 150
    iput-object p2, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResPackageName:Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->createMediaPlayer()V

    :cond_1
    return-void
.end method

.method public setVideoResourceEntry(Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;)V
    .locals 1

    .line 174
    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVideoResource(ILjava/lang/String;)V

    return-void
.end method

.method public setVideoResourceEntry(Lcom/google/android/setupdesign/util/Partner$ResourceEntry;)V
    .locals 0

    const/4 p0, 0x0

    .line 163
    throw p0
.end method

.method public setVisibility(I)V
    .locals 1

    .line 263
    iput p1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->visibility:I

    .line 264
    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->isMediaPlayerLoading:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x4

    .line 267
    :cond_0
    invoke-super {p0, p1}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method

.method protected shouldLoop()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public start()V
    .locals 1

    .line 343
    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->prepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object p0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->shouldPauseVideoWhenFinished:Z

    if-eqz v0, :cond_0

    .line 351
    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->prepared:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    .line 352
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method
