.class public Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollLayout;
.super Landroid/widget/LinearLayout;
.source "UdfpsEnrollLayout.java"


# instance fields
.field private final mAnimationDiameter:I

.field private final mSensorDiameter:I

.field private final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-class p2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 41
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollLayout;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 42
    iget p1, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollLayout;->mSensorDiameter:I

    mul-int/lit8 p1, p1, 0x2

    .line 45
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollLayout;->mAnimationDiameter:I

    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 0

    .line 50
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 52
    sget p1, Lcom/android/settings/R$id;->fingerprint_progress_bar:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 53
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Landroid/view/WindowManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 54
    invoke-interface {p2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p2

    .line 55
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 54
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 61
    iget-object p3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollLayout;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p3, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    sub-int/2addr p3, p2

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollLayout;->mAnimationDiameter:I

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p3, p0

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    sub-int/2addr p3, p0

    int-to-float p0, p3

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 70
    sget p1, Lcom/android/settings/R$id;->fingerprint_progress_bar:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 72
    iget p2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollLayout;->mAnimationDiameter:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollLayout;->mAnimationDiameter:I

    .line 73
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 72
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method
