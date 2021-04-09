.class public final synthetic Lcom/android/settings/biometrics/face/-$$Lambda$FaceSettings$o_BaE6_7hkamhaGSjqlZhtE8CXw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/face/FaceManager$GenerateChallengeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/face/FaceSettings;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/face/FaceSettings;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/-$$Lambda$FaceSettings$o_BaE6_7hkamhaGSjqlZhtE8CXw;->f$0:Lcom/android/settings/biometrics/face/FaceSettings;

    iput-object p2, p0, Lcom/android/settings/biometrics/face/-$$Lambda$FaceSettings$o_BaE6_7hkamhaGSjqlZhtE8CXw;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onGenerateChallengeResult(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/-$$Lambda$FaceSettings$o_BaE6_7hkamhaGSjqlZhtE8CXw;->f$0:Lcom/android/settings/biometrics/face/FaceSettings;

    iget-object p0, p0, Lcom/android/settings/biometrics/face/-$$Lambda$FaceSettings$o_BaE6_7hkamhaGSjqlZhtE8CXw;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/settings/biometrics/face/FaceSettings;->lambda$onActivityResult$2$FaceSettings(Landroid/content/Intent;IJ)V

    return-void
.end method
