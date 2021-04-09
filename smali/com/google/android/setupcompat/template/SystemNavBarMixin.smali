.class public Lcom/google/android/setupcompat/template/SystemNavBarMixin;
.super Ljava/lang/Object;
.source "SystemNavBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field final applyPartnerResources:Z

.field private sucSystemNavBarBackgroundColor:I

.field private final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

.field private final windowOfActivity:Landroid/view/Window;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/view/Window;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->sucSystemNavBarBackgroundColor:I

    .line 59
    iput-object p1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 60
    iput-object p2, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    .line 61
    instance-of p2, p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    .line 63
    invoke-virtual {p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->applyPartnerResources:Z

    return-void
.end method


# virtual methods
.method public applyPartnerCustomizations(Landroid/util/AttributeSet;I)V
    .locals 4

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 78
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/R$styleable;->SucSystemNavBarMixin:[I

    const/4 v3, 0x0

    .line 79
    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 80
    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucSystemNavBarMixin_sucSystemNavBarBackgroundColor:I

    .line 81
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->sucSystemNavBarBackgroundColor:I

    .line 82
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->setSystemNavBarBackground(I)V

    .line 83
    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucSystemNavBarMixin_sucLightSystemNavBar:I

    .line 85
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->isLightSystemNavBar()Z

    move-result v1

    .line 84
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 83
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->setLightSystemNavBar(Z)V

    const/16 p2, 0x1c

    if-lt v0, p2, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v0, 0x101056d

    aput v0, p2, v3

    .line 91
    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 92
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 93
    invoke-virtual {p2, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 94
    sget v1, Lcom/google/android/setupcompat/R$styleable;->SucSystemNavBarMixin_sucSystemNavBarDividerColor:I

    .line 95
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 96
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->setSystemNavBarDividerColor(I)V

    .line 97
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method public isLightSystemNavBar()Z
    .locals 3

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    iget-object p0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    if-eqz p0, :cond_1

    .line 167
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public setLightSystemNavBar(Z)V
    .locals 3

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    if-eqz v0, :cond_2

    .line 139
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->applyPartnerResources:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object p1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 142
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LIGHT_NAVIGATION_BAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/4 v2, 0x0

    .line 143
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z

    move-result p1

    :cond_0
    if-eqz p1, :cond_1

    .line 146
    iget-object p1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    .line 147
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    .line 149
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit8 p0, p0, 0x10

    .line 148
    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    .line 153
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    .line 155
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    and-int/lit8 p0, p0, -0x11

    .line 154
    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSystemNavBarBackground(I)V
    .locals 2

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 111
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->applyPartnerResources:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object p1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 114
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_NAVIGATION_BAR_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 115
    invoke-virtual {v0, p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p1

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1
    return-void
.end method

.method public setSystemNavBarDividerColor(I)V
    .locals 3

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 182
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->applyPartnerResources:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_NAVIGATION_BAR_DIVIDER_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 186
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p1

    .line 189
    invoke-virtual {p1, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p1

    .line 192
    :cond_0
    iget-object p0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarDividerColor(I)V

    :cond_1
    return-void
.end method
