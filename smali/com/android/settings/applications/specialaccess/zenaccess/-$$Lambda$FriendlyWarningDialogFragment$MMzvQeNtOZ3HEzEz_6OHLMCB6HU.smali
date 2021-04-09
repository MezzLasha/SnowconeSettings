.class public final synthetic Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$FriendlyWarningDialogFragment$MMzvQeNtOZ3HEzEz_6OHLMCB6HU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;Ljava/lang/String;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$FriendlyWarningDialogFragment$MMzvQeNtOZ3HEzEz_6OHLMCB6HU;->f$0:Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$FriendlyWarningDialogFragment$MMzvQeNtOZ3HEzEz_6OHLMCB6HU;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$FriendlyWarningDialogFragment$MMzvQeNtOZ3HEzEz_6OHLMCB6HU;->f$2:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$FriendlyWarningDialogFragment$MMzvQeNtOZ3HEzEz_6OHLMCB6HU;->f$0:Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$FriendlyWarningDialogFragment$MMzvQeNtOZ3HEzEz_6OHLMCB6HU;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$FriendlyWarningDialogFragment$MMzvQeNtOZ3HEzEz_6OHLMCB6HU;->f$2:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->lambda$onCreateDialog$0$FriendlyWarningDialogFragment(Ljava/lang/String;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;Landroid/content/DialogInterface;I)V

    return-void
.end method
