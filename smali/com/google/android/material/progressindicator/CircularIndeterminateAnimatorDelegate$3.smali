.class final Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$3;
.super Landroid/util/Property;
.source "CircularIndeterminateAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 336
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)Ljava/lang/Integer;
    .locals 0

    .line 339
    invoke-static {p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->access$100(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 336
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$3;->get(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;Ljava/lang/Integer;)V
    .locals 0

    .line 344
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->access$200(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;I)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 336
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$3;->set(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;Ljava/lang/Integer;)V

    return-void
.end method
