.class public final Lcom/google/android/setupdesign/util/HeaderAreaStyler;
.super Ljava/lang/Object;
.source "HeaderAreaStyler.java"


# static fields
.field static final WARN_TO_USE_DRAWABLE:Ljava/lang/String; = "To achieve scaling icon in SetupDesign lib, should use vector drawable icon!!"


# direct methods
.method public static applyPartnerCustomizationDescriptionHeavyStyle(Landroid/widget/TextView;)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance v8, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_LINK_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_TEXT_MARGIN_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_TEXT_MARGIN_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 95
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    move-result v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;-><init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V

    .line 86
    invoke-static {p0, v8}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    return-void
.end method

.method public static applyPartnerCustomizationDescriptionLightStyle(Landroid/widget/TextView;)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    .line 133
    :cond_0
    new-instance v8, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 142
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    move-result v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;-><init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V

    .line 133
    invoke-static {p0, v8}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationLightStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    return-void
.end method

.method public static applyPartnerCustomizationHeaderAreaStyle(Landroid/view/ViewGroup;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-static {p0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerHeavyThemeResource(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_AREA_BACKGROUND_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 162
    invoke-virtual {v1, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    .line 163
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 165
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 167
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 168
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 172
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_CONTAINER_MARGIN_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 173
    invoke-virtual {v3, v0, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v0

    float-to-int v0, v0

    .line 174
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 175
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static applyPartnerCustomizationHeaderHeavyStyle(Landroid/widget/TextView;)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    .line 63
    :cond_0
    new-instance v8, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_TEXT_MARGIN_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_TEXT_MARGIN_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 72
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    move-result v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;-><init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V

    .line 63
    invoke-static {p0, v8}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    return-void
.end method

.method public static applyPartnerCustomizationHeaderLightStyle(Landroid/widget/TextView;)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance v8, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 118
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    move-result v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;-><init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V

    .line 109
    invoke-static {p0, v8}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationLightStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    return-void
.end method

.method public static applyPartnerCustomizationIconStyle(Landroid/widget/ImageView;Lcom/google/android/setupcompat/internal/TemplateLayout;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-static {p1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 196
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 197
    invoke-static {p1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-static {p0, v0}, Lcom/google/android/setupdesign/util/HeaderAreaStyler;->setGravity(Landroid/widget/ImageView;I)V

    .line 202
    :cond_1
    invoke-static {p0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerHeavyThemeResource(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 206
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ICON_MARGIN_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 207
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_2

    .line 209
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 212
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    .line 213
    invoke-virtual {v3, p1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v2

    float-to-int v2, v2

    .line 214
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 217
    :cond_2
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ICON_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 218
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    invoke-static {p0}, Lcom/google/android/setupdesign/util/HeaderAreaStyler;->checkImageType(Landroid/widget/ImageView;)V

    .line 224
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 225
    invoke-virtual {v1, p1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p1, -0x2

    .line 226
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 227
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_3
    return-void
.end method

.method private static checkImageType(Landroid/widget/ImageView;)V
    .locals 2

    .line 234
    invoke-virtual {p0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 235
    new-instance v1, Lcom/google/android/setupdesign/util/HeaderAreaStyler$1;

    invoke-direct {v1, p0}, Lcom/google/android/setupdesign/util/HeaderAreaStyler$1;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private static setGravity(Landroid/widget/ImageView;I)V
    .locals 1

    .line 257
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 259
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 260
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
