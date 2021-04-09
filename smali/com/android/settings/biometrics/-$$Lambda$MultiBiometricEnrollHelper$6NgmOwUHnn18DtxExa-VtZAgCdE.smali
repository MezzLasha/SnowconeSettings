.class public final synthetic Lcom/android/settings/biometrics/-$$Lambda$MultiBiometricEnrollHelper$6NgmOwUHnn18DtxExa-VtZAgCdE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/-$$Lambda$MultiBiometricEnrollHelper$6NgmOwUHnn18DtxExa-VtZAgCdE;->f$0:Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;

    return-void
.end method


# virtual methods
.method public final onChallengeGenerated(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/-$$Lambda$MultiBiometricEnrollHelper$6NgmOwUHnn18DtxExa-VtZAgCdE;->f$0:Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->lambda$launchFingerprintEnroll$1$MultiBiometricEnrollHelper(IJ)V

    return-void
.end method
