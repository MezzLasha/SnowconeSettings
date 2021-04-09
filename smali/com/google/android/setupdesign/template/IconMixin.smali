.class public Lcom/google/android/setupdesign/template/IconMixin;
.super Ljava/lang/Object;
.source "IconMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field private final originalHeight:I

.field private final originalScaleType:Landroid/widget/ImageView$ScaleType;

.field private final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/setupdesign/template/IconMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 56
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 58
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 61
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/google/android/setupdesign/template/IconMixin;->originalHeight:I

    .line 62
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupdesign/template/IconMixin;->originalScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 64
    :cond_0
    iput v1, p0, Lcom/google/android/setupdesign/template/IconMixin;->originalHeight:I

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/google/android/setupdesign/template/IconMixin;->originalScaleType:Landroid/widget/ImageView$ScaleType;

    .line 68
    :goto_0
    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudIconMixin:[I

    .line 69
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 72
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudIconMixin_android_icon:I

    .line 73
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_1

    .line 75
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/template/IconMixin;->setIcon(I)V

    .line 78
    :cond_1
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudIconMixin_sudUpscaleIcon:I

    .line 79
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 80
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/template/IconMixin;->setUpscaleIcon(Z)V

    .line 82
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudIconMixin_sudIconTint:I

    .line 83
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    if-eqz p2, :cond_2

    .line 85
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/template/IconMixin;->setIconTint(I)V

    .line 88
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected getView()Landroid/widget/ImageView;
    .locals 1

    .line 195
    iget-object p0, p0, Lcom/google/android/setupdesign/template/IconMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v0, Lcom/google/android/setupdesign/R$id;->sud_layout_icon:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public setIcon(I)V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 119
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 120
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 104
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 105
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setIconTint(I)V
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 159
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-void
.end method

.method public setUpscaleIcon(Z)V
    .locals 4

    .line 137
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 140
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v2

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/setupdesign/R$dimen;->sud_glif_icon_max_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 145
    :cond_1
    iget v2, p0, Lcom/google/android/setupdesign/template/IconMixin;->originalHeight:I

    :goto_1
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_2

    .line 147
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/google/android/setupdesign/template/IconMixin;->originalScaleType:Landroid/widget/ImageView$ScaleType;

    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_3
    return-void
.end method

.method public tryApplyPartnerCustomizationStyle()V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/setupdesign/template/IconMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-static {v0, p0}, Lcom/google/android/setupdesign/util/HeaderAreaStyler;->applyPartnerCustomizationIconStyle(Landroid/widget/ImageView;Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    return-void
.end method
