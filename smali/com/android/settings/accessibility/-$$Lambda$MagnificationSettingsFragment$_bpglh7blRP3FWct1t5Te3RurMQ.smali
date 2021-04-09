.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$_bpglh7blRP3FWct1t5Te3RurMQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/MagnificationSettingsFragment;

.field public final synthetic f$1:Landroid/widget/CheckBox;

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/MagnificationSettingsFragment;Landroid/widget/CheckBox;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$_bpglh7blRP3FWct1t5Te3RurMQ;->f$0:Lcom/android/settings/accessibility/MagnificationSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$_bpglh7blRP3FWct1t5Te3RurMQ;->f$1:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$_bpglh7blRP3FWct1t5Te3RurMQ;->f$2:Landroid/view/View;

    iput-object p4, p0, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$_bpglh7blRP3FWct1t5Te3RurMQ;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$_bpglh7blRP3FWct1t5Te3RurMQ;->f$0:Lcom/android/settings/accessibility/MagnificationSettingsFragment;

    iget-object v1, p0, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$_bpglh7blRP3FWct1t5Te3RurMQ;->f$1:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$_bpglh7blRP3FWct1t5Te3RurMQ;->f$2:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$_bpglh7blRP3FWct1t5Te3RurMQ;->f$3:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->lambda$setTextAreasClickListener$2$MagnificationSettingsFragment(Landroid/widget/CheckBox;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
