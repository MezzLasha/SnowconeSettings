.class public Lcom/android/settings/biometrics/BiometricEnrollActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "BiometricEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;
    }
.end annotation


# instance fields
.field private mCheckboxFace:Lcom/android/settings/biometrics/BiometricEnrollCheckbox;

.field private mCheckboxFingerprint:Lcom/android/settings/biometrics/BiometricEnrollCheckbox;

.field private mConfirmingCredentials:Z

.field private mGkPwHandle:Ljava/lang/Long;

.field private mMultiBiometricEnrollHelper:Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    .line 79
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    return-void
.end method

.method private canEnrollFace()Z
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mCheckboxFace:Lcom/android/settings/biometrics/BiometricEnrollCheckbox;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mCheckboxFace:Lcom/android/settings/biometrics/BiometricEnrollCheckbox;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private canEnrollFingerprint()Z
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mCheckboxFingerprint:Lcom/android/settings/biometrics/BiometricEnrollCheckbox;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mCheckboxFingerprint:Lcom/android/settings/biometrics/BiometricEnrollCheckbox;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$S8kXqYfF0e64pnny3rDHonUHRgc(Lcom/android/settings/biometrics/BiometricEnrollActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->updateNextButton(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$bBCyEK07wqKaYAHi8lCViYVWKZc(Lcom/android/settings/biometrics/BiometricEnrollActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->onButtonPositive(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$n7KiKvnQ5hApPtwkYwyBENVQAOo(Lcom/android/settings/biometrics/BiometricEnrollActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->onButtonNegative(Landroid/view/View;)V

    return-void
.end method

.method private launchChooseLock()V
    .locals 4

    const-string v0, "BiometricEnrollActivity"

    const-string v1, "launchChooseLock"

    .line 325
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getChooseLockIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    .line 327
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "hide_disabled_prefs"

    const/4 v2, 0x1

    .line 329
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "request_gk_pw_handle"

    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "for_biometrics"

    .line 331
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_0

    const-string v3, "android.intent.extra.USER_ID"

    .line 334
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    :cond_0
    invoke-virtual {p0, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchConfirmLock()V
    .locals 3

    const-string v0, "BiometricEnrollActivity"

    const-string v1, "launchConfirmLock"

    .line 340
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x2

    .line 342
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 343
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 344
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 345
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 346
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 347
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 349
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private launchCredentialOnlyEnroll()V
    .locals 3

    .line 378
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    .line 379
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchEnrollActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchEnrollActivity(Landroid/content/Intent;)V
    .locals 7

    const/high16 v0, 0x2000000

    .line 365
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 367
    instance-of v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    const/4 v3, 0x0

    .line 371
    iget-object v5, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    iget v6, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/settings/biometrics/BiometricUtils;->launchEnrollForResult(Lcom/android/settings/biometrics/BiometricEnrollActivity;Landroid/content/Intent;I[BLjava/lang/Long;I)V

    return-void
.end method

.method private launchFaceOnlyEnroll()V
    .locals 1

    .line 397
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getFaceIntroIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 398
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchEnrollActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchFingerprintOnlyEnroll()V
    .locals 3

    .line 387
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "skip_intro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getFingerprintFindSensorIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getFingerprintIntroIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 393
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchEnrollActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onButtonNegative(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 305
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 306
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private onButtonPositive(Landroid/view/View;)V
    .locals 7

    .line 299
    new-instance p1, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    .line 300
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->canEnrollFace()Z

    move-result v3

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->canEnrollFingerprint()Z

    move-result v4

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;-><init>(Lcom/android/settings/biometrics/BiometricEnrollActivity;IZZJ)V

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mMultiBiometricEnrollHelper:Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;

    .line 301
    invoke-virtual {p1}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->startNextStep()V

    return-void
.end method

.method private setupForMultiBiometricEnroll()V
    .locals 6

    .line 229
    sget v0, Lcom/android/settings/R$layout;->biometric_enroll_layout:I

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 231
    sget v0, Lcom/android/settings/R$id;->checkbox_face:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mCheckboxFace:Lcom/android/settings/biometrics/BiometricEnrollCheckbox;

    .line 232
    sget v0, Lcom/android/settings/R$id;->checkbox_fingerprint:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mCheckboxFingerprint:Lcom/android/settings/biometrics/BiometricEnrollCheckbox;

    .line 234
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mCheckboxFace:Lcom/android/settings/biometrics/BiometricEnrollCheckbox;

    new-instance v1, Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollActivity$S8kXqYfF0e64pnny3rDHonUHRgc;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollActivity$S8kXqYfF0e64pnny3rDHonUHRgc;-><init>(Lcom/android/settings/biometrics/BiometricEnrollActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;->setListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mCheckboxFingerprint:Lcom/android/settings/biometrics/BiometricEnrollCheckbox;

    new-instance v1, Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollActivity$S8kXqYfF0e64pnny3rDHonUHRgc;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollActivity$S8kXqYfF0e64pnny3rDHonUHRgc;-><init>(Lcom/android/settings/biometrics/BiometricEnrollActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;->setListener(Landroid/view/View$OnClickListener;)V

    .line 237
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 238
    const-class v1, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceManager;

    .line 240
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v2

    .line 242
    invoke-virtual {v1}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v3

    .line 245
    iget v4, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    invoke-virtual {v1, v4}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    .line 246
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v3, v3, Landroid/hardware/face/FaceSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    const/4 v5, 0x1

    if-lt v1, v3, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v4

    .line 247
    :goto_0
    iget v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    invoke-virtual {v0, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    .line 248
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    if-lt v0, v2, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mCheckboxFace:Lcom/android/settings/biometrics/BiometricEnrollCheckbox;

    invoke-virtual {v1, v4}, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;->setEnabled(Z)V

    .line 252
    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mCheckboxFace:Lcom/android/settings/biometrics/BiometricEnrollCheckbox;

    sget v2, Lcom/android/settings/R$string;->face_intro_error_max:I

    invoke-virtual {v1, v2}, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;->setDescription(I)V

    :cond_2
    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mCheckboxFingerprint:Lcom/android/settings/biometrics/BiometricEnrollCheckbox;

    invoke-virtual {v0, v4}, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mCheckboxFingerprint:Lcom/android/settings/biometrics/BiometricEnrollCheckbox;

    sget v1, Lcom/android/settings/R$string;->fingerprint_intro_error_max:I

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;->setDescription(I)V

    .line 260
    :cond_3
    sget v0, Lcom/android/settings/R$id;->setup_wizard_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 261
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 262
    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->multi_biometric_enroll_skip:I

    .line 263
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollActivity$n7KiKvnQ5hApPtwkYwyBENVQAOo;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollActivity$n7KiKvnQ5hApPtwkYwyBENVQAOo;-><init>(Lcom/android/settings/biometrics/BiometricEnrollActivity;)V

    .line 264
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    const/4 v2, 0x7

    .line 265
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$style;->SudGlifButton_Secondary:I

    .line 266
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    .line 267
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 269
    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->multi_biometric_enroll_next:I

    .line 270
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollActivity$bBCyEK07wqKaYAHi8lCViYVWKZc;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollActivity$bBCyEK07wqKaYAHi8lCViYVWKZc;-><init>(Lcom/android/settings/biometrics/BiometricEnrollActivity;)V

    .line 271
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    const/4 v2, 0x5

    .line 272
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$style;->SudGlifButton_Primary:I

    .line 273
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    .line 269
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 276
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 277
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 279
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    if-nez v0, :cond_5

    .line 280
    iput-boolean v5, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    .line 281
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->userHasPassword(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 282
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchChooseLock()V

    goto :goto_2

    .line 284
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchConfirmLock()V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateNextButton(Landroid/view/View;)V
    .locals 1

    .line 290
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->canEnrollFace()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->canEnrollFingerprint()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 292
    :goto_1
    sget v0, Lcom/android/settings/R$id;->setup_wizard_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/GlifLayout;

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 293
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 294
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    return-void
.end method

.method private userHasPassword(I)Z
    .locals 2

    .line 318
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 319
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 320
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x632

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 173
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mMultiBiometricEnrollHelper:Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;

    if-nez v0, :cond_4

    .line 176
    sget v0, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget v1, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "BiometricEnrollActivity"

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown requestCode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", finishing"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 190
    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 192
    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    goto :goto_0

    .line 194
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown result for confirmLock: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 180
    :cond_2
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    if-ne p2, v1, :cond_3

    .line 182
    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    goto :goto_0

    .line 184
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown result for chooseLock: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 186
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 203
    :cond_4
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p2

    .line 210
    sget v0, Lcom/android/settings/R$style;->SetupWizardPartnerResource:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 211
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    instance-of v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const-string v1, "confirming_credentials"

    .line 99
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    const-string v0, "gk_pw_handle"

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    .line 106
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "theme"

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 110
    invoke-static {p1}, Lcom/android/settings/SetupWizardUtils;->getThemeString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/16 v0, 0xff

    const-string v1, "android.provider.extra.BIOMETRIC_AUTHENTICATORS_ALLOWED"

    .line 114
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Authenticators: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricEnrollActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.fingerprint"

    .line 121
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "android.hardware.biometrics.face"

    .line 122
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 127
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->setupForMultiBiometricEnroll()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 129
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFaceOnlyEnroll()V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 131
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFingerprintOnlyEnroll()V

    goto :goto_0

    :cond_5
    const-string p1, "No biometrics but started by SUW?"

    .line 133
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 138
    :cond_6
    const-class v3, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/BiometricManager;

    .line 139
    invoke-virtual {v3, p1}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(I)I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_7

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_7
    const v3, 0x8000

    if-ne p1, v3, :cond_8

    .line 148
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchCredentialOnlyEnroll()V

    goto :goto_0

    :cond_8
    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    .line 150
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->setupForMultiBiometricEnroll()V

    goto :goto_0

    :cond_9
    if-eqz v2, :cond_a

    .line 152
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFingerprintOnlyEnroll()V

    goto :goto_0

    :cond_a
    if-eqz v0, :cond_b

    .line 154
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFaceOnlyEnroll()V

    goto :goto_0

    :cond_b
    const-string p1, "Unknown state, finishing"

    .line 156
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 164
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    const-string v1, "confirming_credentials"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    if-eqz p0, :cond_0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p0, "gk_pw_handle"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 216
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStop()V

    .line 218
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mMultiBiometricEnrollHelper:Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BiometricEnrollActivity"

    const-string v1, "Finishing in onStop"

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
