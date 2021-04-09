.class final Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;
.super Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;
.source "LinearIndeterminateContiguousAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
        "Landroid/animation/AnimatorSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final LINE_CONNECT_POINT_1_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final LINE_CONNECT_POINT_2_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private final baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

.field private lineConnectPoint1Fraction:F

.field private lineConnectPoint2Fraction:F

.field private referenceSegmentColorIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 239
    const-class v0, Ljava/lang/Float;

    new-instance v1, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$3;

    const-string v2, "lineConnectPoint1Fraction"

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->LINE_CONNECT_POINT_1_FRACTION:Landroid/util/Property;

    .line 261
    new-instance v1, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$4;

    const-string v2, "lineConnectPoint2Fraction"

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->LINE_CONNECT_POINT_2_FRACTION:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 1

    const/4 v0, 0x3

    .line 56
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;-><init>(I)V

    .line 58
    iput-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;)F
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->getLineConnectPoint2Fraction()F

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->shiftSegmentColors()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;)F
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->getLineConnectPoint1Fraction()F

    move-result p0

    return p0
.end method

.method private getLineConnectPoint1Fraction()F
    .locals 0

    .line 208
    iget p0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->lineConnectPoint1Fraction:F

    return p0
.end method

.method private getLineConnectPoint2Fraction()F
    .locals 0

    .line 219
    iget p0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->lineConnectPoint2Fraction:F

    return p0
.end method

.method private maybeInitializeAnimators()V
    .locals 11

    .line 71
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->LINE_CONNECT_POINT_1_FRACTION:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    .line 74
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x29b

    .line 75
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 76
    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v5, -0x1

    .line 77
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v6, 0x1

    .line 78
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 79
    new-instance v7, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$1;

    invoke-direct {v7, p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$1;-><init>(Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;)V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 90
    sget-object v7, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->LINE_CONNECT_POINT_2_FRACTION:Landroid/util/Property;

    new-array v8, v1, [F

    fill-array-data v8, :array_1

    .line 91
    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v9, 0x14d

    .line 92
    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v9, v1, [F

    .line 94
    fill-array-data v9, :array_2

    .line 95
    invoke-static {p0, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 96
    invoke-virtual {v7, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 97
    invoke-virtual {v7, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 98
    invoke-virtual {v7, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 99
    invoke-virtual {v7, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 100
    new-instance v2, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$2;

    invoke-direct {v2, p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$2;-><init>(Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;)V

    invoke-virtual {v7, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 111
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    aput-object v7, v3, v6

    .line 112
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 115
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    new-array p0, v1, [Landroid/animation/Animator;

    aput-object v0, p0, v4

    aput-object v2, p0, v6

    .line 116
    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

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
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private resetSegmentColors()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->referenceSegmentColorIndex:I

    .line 170
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->updateSegmentColors()V

    return-void
.end method

.method private shiftSegmentColors()V
    .locals 2

    .line 163
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->referenceSegmentColorIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->referenceSegmentColorIndex:I

    .line 164
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->updateSegmentColors()V

    return-void
.end method

.method private updateSegmentColors()V
    .locals 6

    .line 175
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->referenceSegmentColorIndex:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v2, v2

    .line 176
    invoke-static {v0, v2}, Lcom/google/android/material/math/MathUtils;->floorMod(II)I

    move-result v0

    .line 177
    iget v2, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->referenceSegmentColorIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget-object v4, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v4, v4, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v4, v4

    .line 178
    invoke-static {v2, v4}, Lcom/google/android/material/math/MathUtils;->floorMod(II)I

    move-result v2

    .line 179
    iget-object v4, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentColors:[I

    iget-object v5, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v5, v5, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v0, v5, v0

    iget-object v5, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 181
    invoke-virtual {v5}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v5

    .line 180
    invoke-static {v0, v5}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v0

    const/4 v5, 0x0

    aput v0, v4, v5

    .line 182
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentColors:[I

    iget-object v4, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v4, v4, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v2, v4, v2

    iget-object v4, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 184
    invoke-virtual {v4}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v4

    .line 183
    invoke-static {v2, v4}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v2

    aput v2, v0, v3

    .line 185
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentColors:[I

    iget-object v2, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    iget v3, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->referenceSegmentColorIndex:I

    aget v2, v2, v3

    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 187
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result p0

    .line 186
    invoke-static {v2, p0}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result p0

    aput p0, v0, v1

    return-void
.end method

.method private updateSegmentPositions()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentPositions:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 198
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->getLineConnectPoint1Fraction()F

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->getLineConnectPoint2Fraction()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 199
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentPositions:[F

    .line 201
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->getLineConnectPoint1Fraction()F

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->getLineConnectPoint2Fraction()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 202
    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentPositions:[F

    const/4 v0, 0x5

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    return-void
.end method


# virtual methods
.method public cancelAnimatorImmediately()V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public invalidateSpecValues()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->resetSegmentColors()V

    return-void
.end method

.method public registerAnimatorsCompleteCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0

    return-void
.end method

.method public requestCancelAnimatorAfterCurrentCycle()V
    .locals 0

    return-void
.end method

.method public resetPropertiesForNewStart()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->setLineConnectPoint1Fraction(F)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->setLineConnectPoint2Fraction(F)V

    .line 124
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->resetSegmentColors()V

    return-void
.end method

.method setLineConnectPoint1Fraction(F)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->lineConnectPoint1Fraction:F

    .line 214
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->updateSegmentPositions()V

    .line 215
    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setLineConnectPoint2Fraction(F)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->lineConnectPoint2Fraction:F

    .line 225
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->updateSegmentPositions()V

    .line 226
    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public startAnimator()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->maybeInitializeAnimators()V

    .line 67
    iget-object p0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public unregisterAnimatorsCompleteCallback()V
    .locals 0

    return-void
.end method
