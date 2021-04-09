.class Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularIndeterminateAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->maybeInitializeAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 127
    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    iget-boolean p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorCompleteEndRequested:Z

    if-eqz p1, :cond_0

    .line 128
    invoke-static {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->access$000(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f8a3d71    # 1.08f
    .end array-data
.end method
