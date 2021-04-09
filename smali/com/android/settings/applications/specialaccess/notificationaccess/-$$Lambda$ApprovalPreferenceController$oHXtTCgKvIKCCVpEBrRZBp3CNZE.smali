.class public final synthetic Lcom/android/settings/applications/specialaccess/notificationaccess/-$$Lambda$ApprovalPreferenceController$oHXtTCgKvIKCCVpEBrRZBp3CNZE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/-$$Lambda$ApprovalPreferenceController$oHXtTCgKvIKCCVpEBrRZBp3CNZE;->f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/-$$Lambda$ApprovalPreferenceController$oHXtTCgKvIKCCVpEBrRZBp3CNZE;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/-$$Lambda$ApprovalPreferenceController$oHXtTCgKvIKCCVpEBrRZBp3CNZE;->f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/-$$Lambda$ApprovalPreferenceController$oHXtTCgKvIKCCVpEBrRZBp3CNZE;->f$1:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->lambda$disable$1$ApprovalPreferenceController(Landroid/content/ComponentName;)V

    return-void
.end method
