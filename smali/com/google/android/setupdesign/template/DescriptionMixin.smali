.class public Lcom/google/android/setupdesign/template/DescriptionMixin;
.super Ljava/lang/Object;
.source "DescriptionMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field private final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/setupdesign/template/DescriptionMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 58
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudDescriptionMixin:[I

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 62
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudDescriptionMixin_sudDescriptionText:I

    .line 63
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/template/DescriptionMixin;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudDescriptionMixin_sudDescriptionTextColor:I

    .line 69
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 71
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/template/DescriptionMixin;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 74
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 99
    iget-object p0, p0, Lcom/google/android/setupdesign/template/DescriptionMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v0, Lcom/google/android/setupdesign/R$id;->sud_layout_subtitle:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public setText(I)V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const/4 p1, 0x0

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/DescriptionMixin;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/DescriptionMixin;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 153
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 138
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 140
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public tryApplyPartnerCustomizationStyle()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/google/android/setupdesign/template/DescriptionMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v1, Lcom/google/android/setupdesign/R$id;->sud_layout_subtitle:I

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lcom/google/android/setupdesign/template/DescriptionMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-static {v1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->isPartnerHeavyThemeLayout(Lcom/google/android/setupcompat/internal/TemplateLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 87
    invoke-static {v0}, Lcom/google/android/setupdesign/util/HeaderAreaStyler;->applyPartnerCustomizationDescriptionHeavyStyle(Landroid/widget/TextView;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/google/android/setupdesign/template/DescriptionMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    instance-of v1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    .line 90
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    .line 92
    invoke-static {v0}, Lcom/google/android/setupdesign/util/HeaderAreaStyler;->applyPartnerCustomizationDescriptionLightStyle(Landroid/widget/TextView;)V

    :cond_1
    :goto_0
    return-void
.end method
