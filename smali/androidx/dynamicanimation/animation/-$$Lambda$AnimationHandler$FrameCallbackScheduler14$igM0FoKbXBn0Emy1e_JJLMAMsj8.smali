.class public final synthetic Landroidx/dynamicanimation/animation/-$$Lambda$AnimationHandler$FrameCallbackScheduler14$igM0FoKbXBn0Emy1e_JJLMAMsj8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/-$$Lambda$AnimationHandler$FrameCallbackScheduler14$igM0FoKbXBn0Emy1e_JJLMAMsj8;->f$0:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14;

    iput-object p2, p0, Landroidx/dynamicanimation/animation/-$$Lambda$AnimationHandler$FrameCallbackScheduler14$igM0FoKbXBn0Emy1e_JJLMAMsj8;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/-$$Lambda$AnimationHandler$FrameCallbackScheduler14$igM0FoKbXBn0Emy1e_JJLMAMsj8;->f$0:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14;

    iget-object p0, p0, Landroidx/dynamicanimation/animation/-$$Lambda$AnimationHandler$FrameCallbackScheduler14$igM0FoKbXBn0Emy1e_JJLMAMsj8;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14;->lambda$postFrameCallback$0$AnimationHandler$FrameCallbackScheduler14(Ljava/lang/Runnable;)V

    return-void
.end method
