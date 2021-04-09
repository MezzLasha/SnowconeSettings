.class Lcom/google/android/material/progressindicator/IndeterminateDrawable$1;
.super Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
.source "IndeterminateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setAnimatorDelegate(Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/progressindicator/IndeterminateDrawable;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/IndeterminateDrawable;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable$1;->this$0:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 176
    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object p1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable$1;->this$0:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->access$000(Lcom/google/android/material/progressindicator/IndeterminateDrawable;)Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->cancelAnimatorImmediately()V

    .line 178
    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable$1;->this$0:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-static {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->access$000(Lcom/google/android/material/progressindicator/IndeterminateDrawable;)Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->resetPropertiesForNewStart()V

    return-void
.end method
