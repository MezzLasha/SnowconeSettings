.class public Lcom/google/android/setupdesign/template/HeaderMixin;
.super Ljava/lang/Object;
.source "HeaderMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field autoTextSizeEnabled:Z

.field private headerAutoSizeLineExtraSpacingInPx:F

.field private headerAutoSizeMaxLineOfMaxSize:I

.field private headerAutoSizeMaxTextSizeInPx:F

.field private headerAutoSizeMinTextSizeInPx:F

.field private final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    .line 67
    iput-object p1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 71
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SucHeaderMixin:[I

    .line 72
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SucHeaderMixin_sucHeaderText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 75
    sget p3, Lcom/google/android/setupdesign/R$styleable;->SucHeaderMixin_sucHeaderTextColor:I

    .line 76
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->updateAutoTextSizeWithPartnerConfig()V

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/template/HeaderMixin;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 89
    invoke-virtual {p0, p3}, Lcom/google/android/setupdesign/template/HeaderMixin;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/setupdesign/template/HeaderMixin;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMaxLineOfMaxSize:I

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/setupdesign/template/HeaderMixin;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMinTextSizeInPx:F

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/setupdesign/template/HeaderMixin;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeLineExtraSpacingInPx:F

    return p0
.end method

.method private autoAdjustTextSize(Landroid/widget/TextView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 212
    iget v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMaxTextSizeInPx:F

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 214
    iget v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeLineExtraSpacingInPx:F

    iget v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMaxTextSizeInPx:F

    add-float/2addr v0, v1

    .line 215
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 214
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLineHeight(I)V

    :cond_1
    const/4 v0, 0x6

    .line 217
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 221
    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/google/android/setupdesign/template/HeaderMixin$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/setupdesign/template/HeaderMixin$1;-><init>(Lcom/google/android/setupdesign/template/HeaderMixin;Landroid/widget/TextView;)V

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private updateAutoTextSizeWithPartnerConfig()V
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-static {v1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->isPartnerHeavyThemeLayout(Lcom/google/android/setupcompat/internal/TemplateLayout;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 96
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 101
    :cond_0
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_AUTO_SIZE_ENABLED:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 102
    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    iget-boolean v4, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    .line 105
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    .line 108
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    if-nez v1, :cond_2

    return-void

    .line 112
    :cond_2
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_AUTO_SIZE_MAX_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 113
    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 116
    invoke-virtual {v1, v0, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v1

    iput v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMaxTextSizeInPx:F

    .line 118
    :cond_3
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_AUTO_SIZE_MIN_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 119
    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v0, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v1

    iput v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMinTextSizeInPx:F

    .line 124
    :cond_4
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_AUTO_SIZE_LINE_SPACING_EXTRA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 125
    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 127
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 128
    invoke-virtual {v1, v0, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v1

    iput v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeLineExtraSpacingInPx:F

    .line 130
    :cond_5
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_AUTO_SIZE_MAX_LINE_OF_MAX_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 131
    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 133
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 134
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getInteger(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMaxLineOfMaxSize:I

    .line 136
    :cond_6
    iget v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMaxLineOfMaxSize:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMinTextSizeInPx:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_7

    iget v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMaxTextSizeInPx:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_8

    :cond_7
    const-string v0, "HeaderMixin"

    const-string v1, "Invalid configs, disable auto text size."

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput-boolean v2, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    :cond_8
    return-void

    .line 97
    :cond_9
    :goto_0
    iput-boolean v2, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 0

    .line 247
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 289
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 172
    iget-object p0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v0, Lcom/google/android/setupdesign/R$id;->suc_layout_title:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public setText(I)V
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    iget-boolean v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    if-eqz v1, :cond_0

    .line 185
    invoke-direct {p0, v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->autoAdjustTextSize(Landroid/widget/TextView;)V

    .line 187
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 197
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    iget-boolean v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    if-eqz v1, :cond_0

    .line 201
    invoke-direct {p0, v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->autoAdjustTextSize(Landroid/widget/TextView;)V

    .line 203
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 266
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 268
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public tryApplyPartnerCustomizationStyle()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v1, Lcom/google/android/setupdesign/R$id;->suc_layout_title:I

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    iget-object v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-static {v1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->isPartnerLightThemeLayout(Lcom/google/android/setupcompat/internal/TemplateLayout;)Z

    move-result v1

    .line 153
    iget-object v2, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-static {v2}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->isPartnerHeavyThemeLayout(Lcom/google/android/setupcompat/internal/TemplateLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    iget-object v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v2, Lcom/google/android/setupdesign/R$id;->sud_layout_header:I

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    .line 156
    invoke-static {v0}, Lcom/google/android/setupdesign/util/HeaderAreaStyler;->applyPartnerCustomizationHeaderHeavyStyle(Landroid/widget/TextView;)V

    .line 157
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/google/android/setupdesign/util/HeaderAreaStyler;->applyPartnerCustomizationHeaderAreaStyle(Landroid/view/ViewGroup;)V

    .line 158
    invoke-static {v1}, Lcom/google/android/setupdesign/util/LayoutStyler;->applyPartnerCustomizationExtraPaddingStyle(Landroid/view/View;)V

    .line 160
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->updateAutoTextSizeWithPartnerConfig()V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 162
    invoke-static {v0}, Lcom/google/android/setupdesign/util/HeaderAreaStyler;->applyPartnerCustomizationHeaderLightStyle(Landroid/widget/TextView;)V

    .line 164
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin;->autoTextSizeEnabled:Z

    if-eqz v1, :cond_2

    .line 166
    invoke-direct {p0, v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->autoAdjustTextSize(Landroid/widget/TextView;)V

    :cond_2
    return-void
.end method
