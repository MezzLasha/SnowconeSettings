.class final Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$5;
.super Landroid/util/Property;
.source "LinearIndeterminateDisjointAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 331
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;)Ljava/lang/Float;
    .locals 0

    .line 334
    invoke-static {p1}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->access$300(Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 331
    check-cast p1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$5;->get(Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;Ljava/lang/Float;)V
    .locals 0

    .line 339
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->setLine2TailFraction(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 331
    check-cast p1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$5;->set(Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;Ljava/lang/Float;)V

    return-void
.end method