.class public final synthetic Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintSettings$FingerprintSettingsFragment$rWLbRULu-o8ROn0ln8AM7SnGWiA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintSettings$FingerprintSettingsFragment$rWLbRULu-o8ROn0ln8AM7SnGWiA;->f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintSettings$FingerprintSettingsFragment$rWLbRULu-o8ROn0ln8AM7SnGWiA;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onChallengeGenerated(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintSettings$FingerprintSettingsFragment$rWLbRULu-o8ROn0ln8AM7SnGWiA;->f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintSettings$FingerprintSettingsFragment$rWLbRULu-o8ROn0ln8AM7SnGWiA;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->lambda$onActivityResult$1$FingerprintSettings$FingerprintSettingsFragment(Landroid/content/Intent;IJ)V

    return-void
.end method
