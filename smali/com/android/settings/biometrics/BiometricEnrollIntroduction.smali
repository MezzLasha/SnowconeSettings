.class public abstract Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "BiometricEnrollIntroduction.java"

# interfaces
.implements Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;
    }
.end annotation


# instance fields
.field private mBiometricUnlockDisabledByAdmin:Z

.field protected mConfirmingCredentials:Z

.field private mErrorText:Landroid/widget/TextView;

.field private mHasPassword:Z

.field protected mNextClicked:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    return-void
.end method

.method private synthetic lambda$onActivityResult$0(Landroid/content/Intent;IJ)V
    .locals 0

    .line 265
    iget p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    .line 266
    invoke-static {p0, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onActivityResult$1(Landroid/content/Intent;IJ)V
    .locals 0

    .line 279
    iget p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    .line 280
    invoke-static {p0, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    return-void
.end method

.method private launchChooseLock()V
    .locals 4

    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getChooseLockIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    .line 225
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "hide_disabled_prefs"

    const/4 v2, 0x1

    .line 227
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "request_gk_pw_handle"

    .line 228
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getExtraKeyForBiometric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_0

    const-string v3, "android.intent.extra.USER_ID"

    .line 231
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    :cond_0
    invoke-virtual {p0, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchNextEnrollingActivity([B)V
    .locals 2

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "hw_auth_token"

    .line 239
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 241
    :cond_0
    iget p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_1

    const-string v1, "android.intent.extra.USER_ID"

    .line 242
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/BiometricUtils;->copyMultiBiometricExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 245
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    const-string v1, "from_settings_summary"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 246
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updatePasswordQuality()V
    .locals 3

    .line 206
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    .line 207
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 208
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasPassword:Z

    return-void
.end method


# virtual methods
.method protected abstract checkMaxEnrolled()I
.end method

.method protected abstract getChallenge(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V
.end method

.method protected abstract getConfirmLockTitleResId()I
.end method

.method protected abstract getDescriptionResDisabledByAdmin()I
.end method

.method protected abstract getEnrollingIntent()Landroid/content/Intent;
.end method

.method protected abstract getErrorTextView()Landroid/widget/TextView;
.end method

.method protected abstract getExtraKeyForBiometric()Ljava/lang/String;
.end method

.method protected abstract getHeaderResDefault()I
.end method

.method protected abstract getHeaderResDisabledByAdmin()I
.end method

.method protected abstract getLayoutResource()I
.end method

.method protected initViews()V
    .locals 2

    .line 310
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->initViews()V

    .line 312
    sget v0, Lcom/android/settings/R$id;->sud_layout_description:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 313
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBiometricUnlockDisabledByAdmin:Z

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getDescriptionResDisabledByAdmin()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method protected abstract isDisabledByAdmin()Z
.end method

.method public synthetic lambda$onActivityResult$0$BiometricEnrollIntroduction(Landroid/content/Intent;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->lambda$onActivityResult$0(Landroid/content/Intent;IJ)V

    return-void
.end method

.method public synthetic lambda$onActivityResult$1$BiometricEnrollIntroduction(Landroid/content/Intent;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->lambda$onActivityResult$1(Landroid/content/Intent;IJ)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    if-eq p2, v2, :cond_0

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_7

    .line 254
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 255
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const/4 v1, 0x0

    if-ne p1, v2, :cond_3

    .line 259
    iput-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    if-ne p2, v2, :cond_2

    .line 261
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->updatePasswordQuality()V

    .line 262
    sget v0, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget v2, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 264
    new-instance v0, Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollIntroduction$zcWVmax-nyAFtlWEbLi5yiTybFE;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollIntroduction$zcWVmax-nyAFtlWEbLi5yiTybFE;-><init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getChallenge(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 271
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    .line 274
    iput-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    if-eqz p3, :cond_4

    .line 276
    sget v0, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget v2, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 278
    new-instance v0, Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollIntroduction$7_i8l6LQSE_ck3YrOQV5i-2sLUY;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollIntroduction$7_i8l6LQSE_ck3YrOQV5i-2sLUY;-><init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getChallenge(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V

    goto :goto_0

    .line 284
    :cond_4
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 285
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_5
    if-ne p1, v0, :cond_6

    .line 288
    sget v0, Lcom/android/settings/R$anim;->sud_slide_back_in:I

    sget v1, Lcom/android/settings/R$anim;->sud_slide_back_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENROLL_NEXT_BIOMETRIC_REQUEST, result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricEnrollIntroduction"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_7

    .line 292
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 293
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 296
    :cond_7
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "confirming_credentials"

    .line 137
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "theme"

    .line 141
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 145
    invoke-static {p1}, Lcom/android/settings/SetupWizardUtils;->getThemeString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->isDisabledByAdmin()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBiometricUnlockDisabledByAdmin:Z

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getLayoutResource()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 151
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBiometricUnlockDisabledByAdmin:Z

    if-eqz p1, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getHeaderResDisabledByAdmin()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getHeaderResDefault()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getErrorTextView()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    .line 159
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    .line 160
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->updatePasswordQuality()V

    .line 162
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    if-nez p1, :cond_4

    .line 163
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasPassword:Z

    const/4 v0, 0x1

    if-nez p1, :cond_3

    .line 165
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    .line 166
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->launchChooseLock()V

    goto :goto_1

    .line 167
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    if-nez p1, :cond_4

    .line 171
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getConfirmLockTitleResId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->launchConfirmLock(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 213
    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mNextClicked:Z

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->checkMaxEnrolled()I

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->launchNextEnrollingActivity([B)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 219
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 179
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->checkMaxEnrolled()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->done:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 196
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 197
    iget-boolean p0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    const-string v0, "confirming_credentials"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 304
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 305
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected shouldFinishWhenBackgrounded()Z
    .locals 1

    .line 202
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->shouldFinishWhenBackgrounded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mNextClicked:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
