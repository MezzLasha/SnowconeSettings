.class public final synthetic Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ScaryWarningDialogFragment$Ix9L-gZC3FO10-2iclvUoMx2K9g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;Ljava/lang/String;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ScaryWarningDialogFragment$Ix9L-gZC3FO10-2iclvUoMx2K9g;->f$0:Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ScaryWarningDialogFragment$Ix9L-gZC3FO10-2iclvUoMx2K9g;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ScaryWarningDialogFragment$Ix9L-gZC3FO10-2iclvUoMx2K9g;->f$2:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ScaryWarningDialogFragment$Ix9L-gZC3FO10-2iclvUoMx2K9g;->f$0:Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ScaryWarningDialogFragment$Ix9L-gZC3FO10-2iclvUoMx2K9g;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ScaryWarningDialogFragment$Ix9L-gZC3FO10-2iclvUoMx2K9g;->f$2:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;->lambda$onCreateDialog$0$ScaryWarningDialogFragment(Ljava/lang/String;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;Landroid/content/DialogInterface;I)V

    return-void
.end method
