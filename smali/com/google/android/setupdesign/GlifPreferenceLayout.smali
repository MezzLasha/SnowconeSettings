.class public Lcom/google/android/setupdesign/GlifPreferenceLayout;
.super Lcom/google/android/setupdesign/GlifRecyclerLayout;
.source "GlifPreferenceLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifRecyclerLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifRecyclerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifRecyclerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    .line 88
    sget p1, Lcom/google/android/setupdesign/R$id;->sud_layout_content:I

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/RecyclerMixin;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_1

    .line 104
    invoke-static {}, Lcom/google/android/setupdesign/util/BuildCompatUtils;->isAtLeastS()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 105
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_preference_template_s:I

    goto :goto_0

    .line 107
    :cond_0
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_preference_template:I

    .line 110
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onTemplateInflated()V
    .locals 3

    .line 117
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 121
    invoke-static {}, Lcom/google/android/setupdesign/util/BuildCompatUtils;->isAtLeastS()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 122
    sget v1, Lcom/google/android/setupdesign/R$layout;->sud_glif_preference_recycler_view_s:I

    .line 124
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    .line 126
    :cond_0
    sget v1, Lcom/google/android/setupdesign/R$layout;->sud_glif_preference_recycler_view:I

    .line 127
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 129
    :goto_0
    new-instance v1, Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-direct {v1, p0, v0}, Lcom/google/android/setupdesign/template/RecyclerMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    return-void
.end method
