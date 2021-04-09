.class final Lcom/google/android/setupdesign/util/TextViewPartnerStyler;
.super Ljava/lang/Object;
.source "TextViewPartnerStyler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;
    }
.end annotation


# direct methods
.method public static applyPartnerCustomizationLightStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextGravity()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static applyPartnerCustomizationStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V
    .locals 6

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 44
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextLinkedColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 53
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextLinkedColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 60
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextSizeConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 62
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 63
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextSizeConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v1

    cmpl-float v3, v1, v4

    if-lez v3, :cond_3

    .line 65
    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 69
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextFontFamilyConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 71
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextFontFamilyConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 75
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    :cond_4
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 80
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextMarginTop()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    if-nez v1, :cond_5

    .line 81
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextMarginBottom()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 84
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 85
    instance-of v2, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_8

    .line 86
    move-object v2, v1

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 87
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextMarginTop()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 90
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    .line 91
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextMarginTop()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    .line 93
    :cond_6
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 96
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextMarginBottom()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 99
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    .line 100
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextMarginBottom()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_1

    .line 102
    :cond_7
    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 104
    :goto_1
    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v4, v3, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 105
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextGravity()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_9
    :goto_2
    return-void
.end method
