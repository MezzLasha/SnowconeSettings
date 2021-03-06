.class public Lcom/android/settings/widget/DonutView;
.super Landroid/view/View;
.source "DonutView.java"


# instance fields
.field private mBackgroundCircle:Landroid/graphics/Paint;

.field private mBigNumberPaint:Landroid/text/TextPaint;

.field private mFilledArc:Landroid/graphics/Paint;

.field private mFullString:Ljava/lang/String;

.field private mMeterBackgroundColor:I

.field private mMeterConsumedColor:I

.field private mPercent:D

.field private mPercentString:Ljava/lang/String;

.field private mShowPercentString:Z

.field private mStrokeWidth:F

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/android/settings/widget/DonutView;->mShowPercentString:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/android/settings/widget/DonutView;->mShowPercentString:Z

    .line 73
    sget v1, Lcom/android/settings/R$color;->meter_background_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/DonutView;->mMeterBackgroundColor:I

    .line 74
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$color;->meter_consumed_color:I

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/DonutView;->mMeterConsumedColor:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 78
    sget v2, Lcom/android/settings/R$dimen;->storage_donut_thickness:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    if-eqz p2, :cond_0

    .line 81
    sget-object v2, Lcom/android/settings/R$styleable;->DonutView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 82
    sget v2, Lcom/android/settings/R$styleable;->DonutView_meterBackgroundColor:I

    iget v3, p0, Lcom/android/settings/widget/DonutView;->mMeterBackgroundColor:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/DonutView;->mMeterBackgroundColor:I

    .line 84
    sget v2, Lcom/android/settings/R$styleable;->DonutView_meterConsumedColor:I

    iget v3, p0, Lcom/android/settings/widget/DonutView;->mMeterConsumedColor:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/DonutView;->mMeterConsumedColor:I

    .line 86
    sget v2, Lcom/android/settings/R$styleable;->DonutView_applyColorAccent:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 88
    sget v3, Lcom/android/settings/R$styleable;->DonutView_showPercentString:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/widget/DonutView;->mShowPercentString:Z

    .line 90
    sget v3, Lcom/android/settings/R$styleable;->DonutView_thickness:I

    iget v4, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    float-to-int v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    .line 92
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    move v2, v0

    .line 95
    :goto_0
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    .line 96
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object p2, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 98
    iget-object p2, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object p2, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    iget-object p2, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings/widget/DonutView;->mMeterBackgroundColor:I

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    .line 103
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object p2, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 105
    iget-object p2, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object p2, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    iget-object p2, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings/widget/DonutView;->mMeterConsumedColor:I

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v2, :cond_1

    .line 110
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x1010435

    .line 112
    invoke-static {p1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 114
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 115
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 118
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 119
    invoke-static {p2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v0

    .line 124
    :goto_1
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 126
    iget-object v3, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 127
    iget-object v3, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    sget v4, Lcom/android/settings/R$dimen;->storage_donut_view_label_text_size:I

    .line 128
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 127
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 129
    iget-object v3, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 130
    iget-object v3, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, p2}, Landroid/text/TextPaint;->setBidiFlags(I)V

    .line 132
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 134
    iget-object v3, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    sget v3, Lcom/android/settings/R$dimen;->storage_donut_view_percent_text_size:I

    .line 136
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 135
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    const v1, 0x1040226

    .line 138
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 140
    iget-object p0, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p2}, Landroid/text/TextPaint;->setBidiFlags(I)V

    return-void
.end method

.method private drawDonut(Landroid/graphics/Canvas;)V
    .locals 11

    .line 153
    iget v0, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    const/4 v1, 0x0

    add-float v3, v0, v1

    add-float v4, v0, v1

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    sub-float v5, v0, v2

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    sub-float v6, v0, v2

    iget-object v10, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    move-object v2, p1

    .line 153
    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 163
    iget v0, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    add-float v3, v0, v1

    add-float v4, v0, v1

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    sub-float v5, v0, v1

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    sub-float v6, v0, v1

    iget-wide v0, p0, Lcom/android/settings/widget/DonutView;->mPercent:D

    double-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v8, v0, v1

    iget-object v10, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    .line 163
    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawInnerText(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 177
    iget-object v4, v0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Lcom/android/settings/widget/DonutView;->getTextHeight(Landroid/text/TextPaint;)F

    move-result v4

    iget-object v5, v0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v5}, Lcom/android/settings/widget/DonutView;->getTextHeight(Landroid/text/TextPaint;)F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    add-float/2addr v3, v6

    .line 180
    new-instance v6, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v6}, Landroid/icu/text/DecimalFormatSymbols;-><init>()V

    invoke-virtual {v6}, Landroid/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 185
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, v0, Lcom/android/settings/widget/DonutView;->mPercentString:Ljava/lang/String;

    invoke-static {v7, v8, v6}, Lcom/android/settings/widget/DonutView;->getPercentageStringSpannable(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v10

    .line 186
    new-instance v6, Landroid/text/StaticLayout;

    iget-object v11, v0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v12

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v6

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v4

    div-float/2addr v7, v5

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 189
    invoke-virtual {v6, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 193
    iget-object v4, v0, Lcom/android/settings/widget/DonutView;->mFullString:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v0, v0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method static getPercentageStringSpannable(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 2

    .line 240
    sget v0, Lcom/android/settings/R$dimen;->storage_donut_view_percent_sign_size:I

    .line 241
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sget v1, Lcom/android/settings/R$dimen;->storage_donut_view_percent_text_size:I

    .line 242
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    div-float/2addr v0, p0

    .line 243
    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 245
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    .line 253
    :cond_0
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {p1, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v0, 0x22

    invoke-interface {p0, p1, v1, p2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method private getTextHeight(Landroid/text/TextPaint;)F
    .locals 0

    .line 263
    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    move-result p0

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result p1

    sub-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public getMeterBackgroundColor()I
    .locals 0

    .line 217
    iget p0, p0, Lcom/android/settings/widget/DonutView;->mMeterBackgroundColor:I

    return p0
.end method

.method public getMeterConsumedColor()I
    .locals 0

    .line 228
    iget p0, p0, Lcom/android/settings/widget/DonutView;->mMeterConsumedColor:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 145
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    invoke-direct {p0, p1}, Lcom/android/settings/widget/DonutView;->drawDonut(Landroid/graphics/Canvas;)V

    .line 147
    iget-boolean v0, p0, Lcom/android/settings/widget/DonutView;->mShowPercentString:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0, p1}, Lcom/android/settings/widget/DonutView;->drawInnerText(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setMeterBackgroundColor(I)V
    .locals 1

    .line 221
    iput p1, p0, Lcom/android/settings/widget/DonutView;->mMeterBackgroundColor:I

    .line 222
    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMeterConsumedColor(I)V
    .locals 1

    .line 232
    iput p1, p0, Lcom/android/settings/widget/DonutView;->mMeterConsumedColor:I

    .line 233
    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPercentage(D)V
    .locals 3

    .line 200
    iput-wide p1, p0, Lcom/android/settings/widget/DonutView;->mPercent:D

    .line 201
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/DonutView;->mPercentString:Ljava/lang/String;

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->storage_percent_full:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/DonutView;->mFullString:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_0

    .line 204
    iget-object p1, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 206
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->storage_donut_view_shrunken_label_text_size:I

    .line 207
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 204
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 210
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->join_two_unrelated_items:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mPercentString:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mFullString:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
