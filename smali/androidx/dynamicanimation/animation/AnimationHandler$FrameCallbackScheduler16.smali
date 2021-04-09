.class final Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameCallbackScheduler16"
.end annotation


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->mChoreographer:Landroid/view/Choreographer;

    .line 257
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method static synthetic lambda$postFrameCallback$0(Ljava/lang/Runnable;J)V
    .locals 0

    .line 261
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public isCurrentThread()Z
    .locals 1

    .line 266
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->mLooper:Landroid/os/Looper;

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public postFrameCallback(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameCallback"
        }
    .end annotation

    .line 261
    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->mChoreographer:Landroid/view/Choreographer;

    new-instance v0, Landroidx/dynamicanimation/animation/-$$Lambda$AnimationHandler$FrameCallbackScheduler16$K1fsod5wSogyfAjedC12ENrpgmA;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/-$$Lambda$AnimationHandler$FrameCallbackScheduler16$K1fsod5wSogyfAjedC12ENrpgmA;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
