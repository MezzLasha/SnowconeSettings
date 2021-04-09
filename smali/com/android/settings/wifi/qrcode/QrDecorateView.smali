.class public Lcom/android/settings/wifi/qrcode/QrDecorateView;
.super Landroid/view/View;
.source "QrDecorateView.java"


# instance fields
.field private final mBackgroundColor:I

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mCornerColor:I

.field private mFocused:Z

.field private final mFocusedCornerColor:I

.field private mInnerFrame:Landroid/graphics/RectF;

.field private final mInnerRidus:F

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private mMaskCanvas:Landroid/graphics/Canvas;

.field private mOuterFrame:Landroid/graphics/RectF;

.field private final mRadius:F

.field private final mStrokePaint:Landroid/graphics/Paint;

.field private final mTransparentPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/qrcode/QrDecorateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/qrcode/QrDecorateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/wifi/qrcode/QrDecorateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 74
    iput-boolean p2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mFocused:Z

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 p3, 0x1

    const/high16 p4, 0x41800000    # 16.0f

    .line 75
    invoke-static {p3, p4, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mRadius:F

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p4, 0x41400000    # 12.0f

    .line 78
    invoke-static {p3, p4, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mInnerRidus:F

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/android/settings/R$color;->qr_corner_line_color:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mCornerColor:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/android/settings/R$color;->qr_focused_corner_line_color:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mFocusedCornerColor:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$color;->qr_background_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mBackgroundColor:I

    .line 85
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mStrokePaint:Landroid/graphics/Paint;

    .line 86
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mTransparentPaint:Landroid/graphics/Paint;

    .line 89
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x106000d

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 93
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 94
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private calculateFramePos()V
    .locals 7

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x43840000    # 264.0f

    .line 127
    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    .line 129
    invoke-static {v3, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 132
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v0, v0

    sub-float v5, v0, v2

    int-to-float v1, v1

    sub-float v6, v1, v2

    add-float/2addr v0, v2

    add-float/2addr v1, v2

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mOuterFrame:Landroid/graphics/RectF;

    .line 134
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mOuterFrame:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v3

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v3

    invoke-direct {v0, v2, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mInnerFrame:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mStrokePaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mFocused:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mFocusedCornerColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mCornerColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mMaskCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mMaskCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mOuterFrame:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mRadius:F

    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mMaskCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mInnerFrame:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mInnerRidus:F

    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mMaskBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 121
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 99
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 101
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 103
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mMaskCanvas:Landroid/graphics/Canvas;

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->calculateFramePos()V

    return-void
.end method

.method public setFocused(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/android/settings/wifi/qrcode/QrDecorateView;->mFocused:Z

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
