.class Lcom/android/settings/network/EraseEuiccDataDialogFragment$1;
.super Ljava/lang/Object;
.source "EraseEuiccDataDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/EraseEuiccDataDialogFragment;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/EraseEuiccDataDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/network/EraseEuiccDataDialogFragment;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/settings/network/EraseEuiccDataDialogFragment$1;->this$0:Lcom/android/settings/network/EraseEuiccDataDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 79
    iget-object p0, p0, Lcom/android/settings/network/EraseEuiccDataDialogFragment$1;->this$0:Lcom/android/settings/network/EraseEuiccDataDialogFragment;

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.android.settings.network"

    .line 79
    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
