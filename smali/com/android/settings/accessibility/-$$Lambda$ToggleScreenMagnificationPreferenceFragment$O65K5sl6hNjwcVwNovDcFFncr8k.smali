.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenMagnificationPreferenceFragment$O65K5sl6hNjwcVwNovDcFFncr8k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenMagnificationPreferenceFragment$O65K5sl6hNjwcVwNovDcFFncr8k;->f$0:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenMagnificationPreferenceFragment$O65K5sl6hNjwcVwNovDcFFncr8k;->f$0:Landroid/widget/CheckBox;

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->lambda$setDialogTextAreaClickListener$1(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method
