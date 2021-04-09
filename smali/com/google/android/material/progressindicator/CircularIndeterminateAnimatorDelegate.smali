.class final Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;
.super Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;
.source "CircularIndeterminateAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
        "Landroid/animation/AnimatorSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISPLAYED_INDICATOR_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final INDICATOR_HEAD_CHANGE_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final INDICATOR_IN_CYCLE_OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final INDICATOR_TAIL_CHANGE_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;",
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

.field private colorFadingAnimator:Landroid/animation/ObjectAnimator;

.field private displayedIndicatorColor:I

.field private indicatorCollapsingAnimator:Landroid/animation/ObjectAnimator;

.field private indicatorColorIndex:I

.field private indicatorHeadChangeFraction:F

.field private indicatorInCycleOffset:F

.field private indicatorStartOffset:F

.field private indicatorTailChangeFraction:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 334
    const-class v0, Ljava/lang/Float;

    new-instance v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$3;

    const-class v2, Ljava/lang/Integer;

    const-string v3, "displayedIndicatorColor"

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DISPLAYED_INDICATOR_COLOR:Landroid/util/Property;

    .line 353
    new-instance v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$4;

    const-string v2, "indicatorInCycleOffset"

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->INDICATOR_IN_CYCLE_OFFSET:Landroid/util/Property;

    .line 372
    new-instance v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$5;

    const-string v2, "indicatorHeadChangeFraction"

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->INDICATOR_HEAD_CHANGE_FRACTION:Landroid/util/Property;

    .line 391
    new-instance v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$6;

    const-string v2, "indicatorTailChangeFraction"

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->INDICATOR_TAIL_CHANGE_FRACTION:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;-><init>(I)V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorCompleteEndRequested:Z

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 73
    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorCollapsingAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)I
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getDisplayedIndicatorColor()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->setDisplayedIndicatorColor(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)F
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getIndicatorInCycleOffset()F

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)F
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getIndicatorHeadChangeFraction()F

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)F
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getIndicatorTailChangeFraction()F

    move-result p0

    return p0
.end method

.method private getDisplayedIndicatorColor()I
    .locals 0

    .line 277
    iget p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->displayedIndicatorColor:I

    return p0
.end method

.method private getIndicatorHeadChangeFraction()F
    .locals 0

    .line 309
    iget p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorHeadChangeFraction:F

    return p0
.end method

.method private getIndicatorInCycleOffset()F
    .locals 0

    .line 298
    iget p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorInCycleOffset:F

    return p0
.end method

.method private getIndicatorStartOffset()F
    .locals 0

    .line 287
    iget p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorStartOffset:F

    return p0
.end method

.method private getIndicatorTailChangeFraction()F
    .locals 0

    .line 320
    iget p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorTailChangeFraction:F

    return p0
.end method

.method private getNextIndicatorColorIndex()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object p0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length p0, p0

    rem-int/2addr v0, p0

    return v0
.end method

.method private maybeInitializeAnimators()V
    .locals 8

    .line 108
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    .line 110
    sget-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->INDICATOR_IN_CYCLE_OFFSET:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    .line 111
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x535

    .line 113
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    .line 115
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 117
    sget-object v2, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->INDICATOR_HEAD_CHANGE_FRACTION:Landroid/util/Property;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    .line 118
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x29a

    .line 119
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 120
    sget-object v5, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 121
    new-instance v6, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;

    invoke-direct {v6, p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;-><init>(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 134
    sget-object v6, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->INDICATOR_TAIL_CHANGE_FRACTION:Landroid/util/Property;

    new-array v7, v1, [F

    fill-array-data v7, :array_2

    .line 135
    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorCollapsingAnimator:Landroid/animation/ObjectAnimator;

    .line 136
    invoke-virtual {v6, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 137
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorCollapsingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 139
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 140
    iget-object v2, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorCollapsingAnimator:Landroid/animation/ObjectAnimator;

    const/4 v5, 0x1

    aput-object v2, v1, v5

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 141
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 142
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->colorFadingAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$2;-><init>(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
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
.end method

.method private resetSegmentColors()V
    .locals 5

    const/4 v0, 0x0

    .line 263
    iput v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndex:I

    .line 264
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 266
    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v2

    .line 265
    invoke-static {v1, v2}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v1

    .line 267
    iget-object v2, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 269
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getNextIndicatorColorIndex()I

    move-result v3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v3

    .line 268
    invoke-static {v2, v3}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v2

    .line 270
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->colorFadingAnimator:Landroid/animation/ObjectAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v1, v4, v0

    const/4 v0, 0x1

    aput v2, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 271
    invoke-direct {p0, v1}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->setDisplayedIndicatorColor(I)V

    return-void
.end method

.method private setDisplayedIndicatorColor(I)V
    .locals 2

    .line 281
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->displayedIndicatorColor:I

    .line 282
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentColors:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 283
    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private shiftSegmentColors()V
    .locals 5

    .line 250
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getNextIndicatorColorIndex()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndex:I

    .line 251
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v0, v1, v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 253
    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v1

    .line 252
    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 256
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getNextIndicatorColorIndex()I

    move-result v2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v2

    .line 255
    invoke-static {v1, v2}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v1

    .line 257
    iget-object v2, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->colorFadingAnimator:Landroid/animation/ObjectAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 258
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->setDisplayedIndicatorColor(I)V

    return-void
.end method

.method private updateSegmentPositions()V
    .locals 5

    .line 235
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentPositions:[F

    .line 236
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getIndicatorStartOffset()F

    move-result v1

    .line 237
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getIndicatorInCycleOffset()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v1, v2

    .line 239
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getIndicatorTailChangeFraction()F

    move-result v2

    const/high16 v3, 0x437a0000    # 250.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    const/4 v4, 0x0

    aput v1, v0, v4

    .line 241
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentPositions:[F

    .line 242
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getIndicatorStartOffset()F

    move-result v1

    .line 243
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getIndicatorInCycleOffset()F

    move-result v4

    add-float/2addr v1, v4

    .line 244
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getIndicatorHeadChangeFraction()F

    move-result p0

    mul-float/2addr p0, v3

    add-float/2addr v1, p0

    div-float/2addr v1, v2

    const/4 p0, 0x1

    aput v1, v0, p0

    return-void
.end method


# virtual methods
.method cancelAnimatorImmediately()V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    .line 169
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public invalidateSpecValues()V
    .locals 0

    .line 213
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->resetSegmentColors()V

    return-void
.end method

.method public registerAnimatorsCompleteCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method

.method protected registerDrawable(Lcom/google/android/material/progressindicator/IndeterminateDrawable;)V
    .locals 6

    .line 78
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->registerDrawable(Lcom/google/android/material/progressindicator/IndeterminateDrawable;)V

    .line 80
    sget-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DISPLAYED_INDICATOR_COLOR:Landroid/util/Property;

    new-instance v1, Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    invoke-direct {v1}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    iget v4, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndex:I

    aget v3, v3, v4

    .line 86
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v4

    .line 85
    invoke-static {v3, v4}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 88
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getNextIndicatorColorIndex()I

    move-result v5

    aget v3, v3, v5

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result p1

    .line 87
    invoke-static {v3, p1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 81
    invoke-static {p0, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->colorFadingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x14d

    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 90
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->colorFadingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 91
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->colorFadingAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    new-array v0, v3, [Landroid/animation/Animator;

    .line 94
    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->colorFadingAnimator:Landroid/animation/ObjectAnimator;

    aput-object p0, v0, v4

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method requestCancelAnimatorAfterCurrentCycle()V
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorCompleteEndRequested:Z

    if-eqz v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorCompleteEndRequested:Z

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->cancelAnimatorImmediately()V

    :goto_0
    return-void
.end method

.method resetPropertiesForNewStart()V
    .locals 2

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->setIndicatorHeadChangeFraction(F)V

    .line 190
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->setIndicatorTailChangeFraction(F)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->setIndicatorStartOffset(F)V

    .line 192
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorCollapsingAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 193
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->resetSegmentColors()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method resetPropertiesForNextCycle()V
    .locals 2

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->setIndicatorHeadChangeFraction(F)V

    .line 201
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->setIndicatorTailChangeFraction(F)V

    .line 204
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getIndicatorStartOffset()F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x437a0000    # 250.0f

    add-float/2addr v0, v1

    const/16 v1, 0x168

    .line 203
    invoke-static {v0, v1}, Lcom/google/android/material/math/MathUtils;->floorMod(FI)F

    move-result v0

    .line 202
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->setIndicatorStartOffset(F)V

    .line 208
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->shiftSegmentColors()V

    return-void
.end method

.method setIndicatorHeadChangeFraction(F)V
    .locals 0

    .line 314
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorHeadChangeFraction:F

    .line 315
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->updateSegmentPositions()V

    .line 316
    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setIndicatorInCycleOffset(F)V
    .locals 0

    .line 303
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorInCycleOffset:F

    .line 304
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->updateSegmentPositions()V

    .line 305
    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setIndicatorStartOffset(F)V
    .locals 0

    .line 292
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorStartOffset:F

    .line 293
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->updateSegmentPositions()V

    .line 294
    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setIndicatorTailChangeFraction(F)V
    .locals 0

    .line 325
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorTailChangeFraction:F

    .line 326
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->updateSegmentPositions()V

    .line 327
    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method startAnimator()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->maybeInitializeAnimators()V

    .line 104
    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public unregisterAnimatorsCompleteCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method
