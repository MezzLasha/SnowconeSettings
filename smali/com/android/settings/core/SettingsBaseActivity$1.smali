.class Lcom/android/settings/core/SettingsBaseActivity$1;
.super Ljava/lang/Object;
.source "SettingsBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/core/SettingsBaseActivity;->initCollapsingToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/core/SettingsBaseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/core/SettingsBaseActivity;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$1;->this$0:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 203
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 204
    iget-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$1;->this$0:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-static {p1}, Lcom/android/settings/core/SettingsBaseActivity;->access$100(Lcom/android/settings/core/SettingsBaseActivity;)I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_0

    .line 206
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity$1;->this$0:Lcom/android/settings/core/SettingsBaseActivity;

    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    sget p1, Lcom/android/settings/R$style;->ToolbarText_MoreThanTwoLines:I

    .line 207
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setExpandedTitleTextAppearance(I)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity$1;->this$0:Lcom/android/settings/core/SettingsBaseActivity;

    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    sget p1, Lcom/android/settings/R$style;->ToolbarText:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setExpandedTitleTextAppearance(I)V

    :goto_0
    return-void
.end method
