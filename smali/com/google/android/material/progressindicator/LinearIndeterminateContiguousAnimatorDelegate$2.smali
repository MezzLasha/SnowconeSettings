.class Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LinearIndeterminateContiguousAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->maybeInitializeAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$2;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 105
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$2;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->access$200(Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$2;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->access$200(Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 106
    iget-object p0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$2;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    invoke-static {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->access$100(Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;)V

    :cond_0
    return-void
.end method
