.class public Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;
.super Ljava/lang/Object;
.source "MultiBiometricEnrollHelper.java"


# instance fields
.field private final mActivity:Lcom/android/settings/biometrics/BiometricEnrollActivity;

.field private final mGkPwHandle:J

.field private final mRequestEnrollFace:Z

.field private final mRequestEnrollFingerprint:Z

.field private final mUserId:I


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/BiometricEnrollActivity;IZZJ)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Lcom/android/settings/biometrics/BiometricEnrollActivity;

    .line 51
    iput p2, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    .line 52
    iput-wide p5, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGkPwHandle:J

    .line 53
    iput-boolean p3, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mRequestEnrollFace:Z

    .line 54
    iput-boolean p4, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mRequestEnrollFingerprint:Z

    return-void
.end method

.method private synthetic lambda$launchFaceEnroll$0(IJ)V
    .locals 10

    .line 71
    iget-object v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Lcom/android/settings/biometrics/BiometricEnrollActivity;

    iget-wide v1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGkPwHandle:J

    iget v3, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object v7

    .line 73
    iget-object p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Lcom/android/settings/biometrics/BiometricEnrollActivity;

    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    .line 73
    invoke-static {p1, p2}, Lcom/android/settings/biometrics/BiometricUtils;->getFaceIntroIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    .line 76
    iget-boolean p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mRequestEnrollFingerprint:Z

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Lcom/android/settings/biometrics/BiometricEnrollActivity;

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    .line 79
    invoke-static {p1, p2}, Lcom/android/settings/biometrics/BiometricUtils;->getFingerprintIntroIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 81
    iget-wide p2, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGkPwHandle:J

    const-string v0, "gk_pw_handle"

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 82
    iget-object p2, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Lcom/android/settings/biometrics/BiometricEnrollActivity;

    const/4 p3, 0x0

    const/high16 v0, 0x4000000

    invoke-static {p2, p3, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "enroll_after_face"

    .line 84
    invoke-virtual {v5, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 87
    :cond_0
    iget-object v4, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Lcom/android/settings/biometrics/BiometricEnrollActivity;

    const/16 v6, 0xbb8

    iget-wide p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGkPwHandle:J

    .line 88
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    .line 87
    invoke-static/range {v4 .. v9}, Lcom/android/settings/biometrics/BiometricUtils;->launchEnrollForResult(Lcom/android/settings/biometrics/BiometricEnrollActivity;Landroid/content/Intent;I[BLjava/lang/Long;I)V

    return-void
.end method

.method private synthetic lambda$launchFingerprintEnroll$1(IJ)V
    .locals 10

    .line 96
    iget-object v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Lcom/android/settings/biometrics/BiometricEnrollActivity;

    iget-wide v1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGkPwHandle:J

    iget v3, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object v7

    .line 98
    iget-object p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Lcom/android/settings/biometrics/BiometricEnrollActivity;

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    .line 98
    invoke-static {p1, p2}, Lcom/android/settings/biometrics/BiometricUtils;->getFingerprintIntroIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    .line 100
    iget-object v4, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Lcom/android/settings/biometrics/BiometricEnrollActivity;

    iget-wide p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGkPwHandle:J

    .line 101
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    const/16 v6, 0xbb9

    .line 100
    invoke-static/range {v4 .. v9}, Lcom/android/settings/biometrics/BiometricUtils;->launchEnrollForResult(Lcom/android/settings/biometrics/BiometricEnrollActivity;Landroid/content/Intent;I[BLjava/lang/Long;I)V

    return-void
.end method

.method private launchFaceEnroll()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Lcom/android/settings/biometrics/BiometricEnrollActivity;

    const-class v1, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    .line 70
    new-instance v1, Lcom/android/settings/biometrics/-$$Lambda$MultiBiometricEnrollHelper$U4xE2_w620xuIkp2okEsXsU8MxU;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/-$$Lambda$MultiBiometricEnrollHelper$U4xE2_w620xuIkp2okEsXsU8MxU;-><init>(Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;)V

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->generateChallenge(Landroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    return-void
.end method

.method private launchFingerprintEnroll()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Lcom/android/settings/biometrics/BiometricEnrollActivity;

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 94
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 95
    iget v1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    new-instance v2, Lcom/android/settings/biometrics/-$$Lambda$MultiBiometricEnrollHelper$6NgmOwUHnn18DtxExa-VtZAgCdE;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/-$$Lambda$MultiBiometricEnrollHelper$6NgmOwUHnn18DtxExa-VtZAgCdE;-><init>(Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$launchFaceEnroll$0$MultiBiometricEnrollHelper(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->lambda$launchFaceEnroll$0(IJ)V

    return-void
.end method

.method public synthetic lambda$launchFingerprintEnroll$1$MultiBiometricEnrollHelper(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->lambda$launchFingerprintEnroll$1(IJ)V

    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 106
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RequestCode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resultCode: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MultiBiometricEnrollHelper"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 108
    iget-object p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Lcom/android/settings/biometrics/BiometricEnrollActivity;

    iget-wide v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGkPwHandle:J

    invoke-static {p1, v0, v1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;J)V

    .line 109
    iget-object p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Lcom/android/settings/biometrics/BiometricEnrollActivity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 110
    iget-object p0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Lcom/android/settings/biometrics/BiometricEnrollActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method startNextStep()V
    .locals 2

    .line 58
    iget-boolean v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mRequestEnrollFace:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->launchFaceEnroll()V

    goto :goto_0

    .line 60
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mRequestEnrollFingerprint:Z

    if-eqz v0, :cond_1

    .line 61
    invoke-direct {p0}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->launchFingerprintEnroll()V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Lcom/android/settings/biometrics/BiometricEnrollActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 64
    iget-object p0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Lcom/android/settings/biometrics/BiometricEnrollActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
