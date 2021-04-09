.class final Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;
.super Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;
.source "LinearIndeterminateDisjointAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
        "Landroid/animation/AnimatorSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final LINE_1_HEAD_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final LINE_1_TAIL_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final LINE_2_HEAD_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final LINE_2_TAIL_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field animatorCompleteEndRequested:Z

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private final baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

.field private final context:Landroid/content/Context;

.field private displayedSegmentColorIndex:I

.field private line1HeadFraction:F

.field private line1TailFraction:F

.field private line2HeadFraction:F

.field private line2TailFraction:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 269
    const-class v0, Ljava/lang/Float;

    new-instance v1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$2;

    const-string v2, "line1HeadFraction"

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->LINE_1_HEAD_FRACTION:Landroid/util/Property;

    .line 289
    new-instance v1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$3;

    const-string v2, "line1TailFraction"

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->LINE_1_TAIL_FRACTION:Landroid/util/Property;

    .line 309
    new-instance v1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$4;

    const-string v2, "line2HeadFraction"

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->LINE_2_HEAD_FRACTION:Landroid/util/Property;

    .line 329
    new-instance v1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$5;

    const-string v2, "line2TailFraction"

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->LINE_2_TAIL_FRACTION:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 1

    const/4 v0, 0x2

    .line 71
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;-><init>(I)V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->animatorCompleteEndRequested:Z

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 73
    iput-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->context:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;)F
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->getLine1HeadFraction()F

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;)F
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->getLine1TailFraction()F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;)F
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->getLine2HeadFraction()F

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;)F
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->getLine2TailFraction()F

    move-result p0

    return p0
.end method

.method private getLine1HeadFraction()F
    .locals 0

    .line 218
    iget p0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->line1HeadFraction:F

    return p0
.end method

.method private getLine1TailFraction()F
    .locals 0

    .line 229
    iget p0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->line1TailFraction:F

    return p0
.end method

.method private getLine2HeadFraction()F
    .locals 0

    .line 240
    iget p0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->line2HeadFraction:F

    return p0
.end method

.method private getLine2TailFraction()F
    .locals 0

    .line 251
    iget p0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->line2TailFraction:F

    return p0
.end method

.method private maybeInitializeAnimators()V
    .locals 8

    .line 87
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->LINE_1_HEAD_FRACTION:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x2ee

    .line 90
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 91
    iget-object v2, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/material/R$animator;->linear_indeterminate_line1_head_interpolator:I

    .line 92
    invoke-static {v2, v3}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 91
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    sget-object v2, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->LINE_1_TAIL_FRACTION:Landroid/util/Property;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x14d

    .line 96
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v3, 0x352

    .line 97
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 98
    iget-object v3, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->context:Landroid/content/Context;

    sget v4, Lcom/google/android/material/R$animator;->linear_indeterminate_line1_tail_interpolator:I

    .line 99
    invoke-static {v3, v4}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 102
    sget-object v3, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->LINE_2_HEAD_FRACTION:Landroid/util/Property;

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    .line 103
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v4, 0x237

    .line 104
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 105
    iget-object v4, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->context:Landroid/content/Context;

    sget v5, Lcom/google/android/material/R$animator;->linear_indeterminate_line2_head_interpolator:I

    .line 106
    invoke-static {v4, v5}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 105
    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 109
    sget-object v4, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->LINE_2_TAIL_FRACTION:Landroid/util/Property;

    new-array v5, v1, [F

    fill-array-data v5, :array_3

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x4f3

    .line 110
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v5, 0x215

    .line 111
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 112
    iget-object v5, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->context:Landroid/content/Context;

    sget v6, Lcom/google/android/material/R$animator;->linear_indeterminate_line2_tail_interpolator:I

    .line 113
    invoke-static {v5, v6}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 112
    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 116
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v2, v6, v0

    aput-object v3, v6, v1

    const/4 v0, 0x3

    aput-object v4, v6, v0

    .line 117
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$1;-><init>(Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private resetSegmentColors()V
    .locals 3

    const/4 v0, 0x0

    .line 208
    iput v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->displayedSegmentColorIndex:I

    .line 209
    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentColors:[I

    iget-object v2, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v0, v2, v0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 212
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result p0

    .line 211
    invoke-static {v0, p0}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result p0

    .line 209
    invoke-static {v1, p0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private rotateSegmentColors()V
    .locals 3

    .line 199
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->displayedSegmentColorIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v2, v1

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->displayedSegmentColorIndex:I

    .line 200
    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentColors:[I

    aget v0, v1, v0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 203
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result p0

    .line 202
    invoke-static {v0, p0}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result p0

    .line 200
    invoke-static {v2, p0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method


# virtual methods
.method public cancelAnimatorImmediately()V
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public invalidateSpecValues()V
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->resetSegmentColors()V

    return-void
.end method

.method public registerAnimatorsCompleteCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method

.method public requestCancelAnimatorAfterCurrentCycle()V
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->animatorCompleteEndRequested:Z

    if-eqz v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->cancelAnimatorImmediately()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->animatorCompleteEndRequested:Z

    return-void
.end method

.method public resetPropertiesForNewStart()V
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->resetPropertiesForNextCycle()V

    .line 146
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->resetSegmentColors()V

    return-void
.end method

.method public resetPropertiesForNextCycle()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->setLine1HeadFraction(F)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->setLine1TailFraction(F)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->setLine2HeadFraction(F)V

    .line 154
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->setLine2TailFraction(F)V

    .line 155
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->rotateSegmentColors()V

    return-void
.end method

.method setLine1HeadFraction(F)V
    .locals 2

    .line 223
    iput p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->line1HeadFraction:F

    .line 224
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentPositions:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 225
    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setLine1TailFraction(F)V
    .locals 2

    .line 234
    iput p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->line1TailFraction:F

    .line 235
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentPositions:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 236
    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setLine2HeadFraction(F)V
    .locals 2

    .line 245
    iput p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->line2HeadFraction:F

    .line 246
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentPositions:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 247
    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setLine2TailFraction(F)V
    .locals 2

    .line 256
    iput p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->line2TailFraction:F

    .line 257
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentPositions:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 258
    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public startAnimator()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->maybeInitializeAnimators()V

    .line 83
    iget-object p0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public unregisterAnimatorsCompleteCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method
