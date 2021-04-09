.class public Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.source "FaceEnrollIntroduction.java"


# instance fields
.field private mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

.field private mFaceManager:Landroid/hardware/face/FaceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(IJ)V
    .locals 1

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p0, p1, v0, p2, p3}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    .line 115
    invoke-static {p0}, Lcom/android/settings/biometrics/BiometricUtils;->isMultiBiometricEnrollmentFlow(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    return-void
.end method

.method public static synthetic lambda$ySFdwp-uD9RfaAzlltOvoaGk6rw(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onNextButtonClick(Landroid/view/View;)V

    return-void
.end method

.method private maxFacesEnrolled()Z
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    .line 176
    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {v2, p0}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method protected checkMaxEnrolled()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_1

    .line 187
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->maxFacesEnrolled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 188
    sget p0, Lcom/android/settings/R$string;->face_intro_error_max:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 191
    :cond_1
    sget p0, Lcom/android/settings/R$string;->face_intro_error_unknown:I

    return p0
.end method

.method protected getChallenge(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V
    .locals 2

    .line 198
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    const-wide/16 v0, 0x0

    .line 200
    invoke-interface {p1, p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;->onChallengeGenerated(IJ)V

    return-void

    .line 203
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/settings/biometrics/face/-$$Lambda$N7H8iKfGX76GCZg8zDglxzTTMrQ;

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/-$$Lambda$N7H8iKfGX76GCZg8zDglxzTTMrQ;-><init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V

    invoke-virtual {v0, p0}, Landroid/hardware/face/FaceManager;->generateChallenge(Landroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    return-void
.end method

.method protected getConfirmLockTitleResId()I
    .locals 0

    .line 220
    sget p0, Lcom/android/settings/R$string;->security_settings_face_preference_title:I

    return p0
.end method

.method protected getDescriptionResDisabledByAdmin()I
    .locals 0

    .line 146
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_message_unlock_disabled:I

    return p0
.end method

.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 2

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method protected getErrorTextView()Landroid/widget/TextView;
    .locals 1

    .line 167
    sget v0, Lcom/android/settings/R$id;->error_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method protected getExtraKeyForBiometric()Ljava/lang/String;
    .locals 0

    const-string p0, "for_face"

    return-object p0
.end method

.method protected getHeaderResDefault()I
    .locals 0

    .line 141
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_title:I

    return p0
.end method

.method protected getHeaderResDisabledByAdmin()I
    .locals 0

    .line 136
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_title_unlock_disabled:I

    return p0
.end method

.method protected getLayoutResource()I
    .locals 0

    .line 131
    sget p0, Lcom/android/settings/R$layout;->face_enroll_introduction:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5e2

    return p0
.end method

.method protected getNextButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz p0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected isDisabledByAdmin()Z
    .locals 2

    .line 125
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, 0x80

    invoke-static {p0, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$onCreate$0$FaceEnrollIntroduction(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->lambda$onCreate$0(IJ)V

    return-void
.end method

.method public onClick(Lcom/google/android/setupdesign/span/LinkSpan;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFaceFeatureProvider()Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 74
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_no_thanks:I

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/face/-$$Lambda$2wLycB8NJ7KGn9CxgRzMN9c_m4I;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$2wLycB8NJ7KGn9CxgRzMN9c_m4I;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x7

    .line 78
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$style;->SudGlifButton_Secondary:I

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 83
    new-instance p1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_agree:I

    .line 84
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    const/4 v0, 0x5

    .line 85
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$style;->SudGlifButton_Primary:I

    .line 86
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    .line 87
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->maxFacesEnrolled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$ySFdwp-uD9RfaAzlltOvoaGk6rw;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$ySFdwp-uD9RfaAzlltOvoaGk6rw;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 89
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    .line 92
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    const-class v1, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 95
    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_more:I

    new-instance v2, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$ySFdwp-uD9RfaAzlltOvoaGk6rw;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$ySFdwp-uD9RfaAzlltOvoaGk6rw;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScrollWithButton(Landroid/content/Context;Lcom/google/android/setupcompat/template/FooterButton;ILandroid/view/View$OnClickListener;)V

    .line 100
    :goto_0
    sget p1, Lcom/android/settings/R$id;->face_enroll_introduction_footer_part_2:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/biometrics/face/FaceFeatureProvider;->isAttentionSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget v0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_footer_part_2:I

    goto :goto_1

    .line 104
    :cond_1
    sget v0, Lcom/android/settings/R$string;->security_settings_face_settings_footer_attention_not_supported:I

    .line 105
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 110
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 113
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    new-instance v0, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$xRqwlcDVXK_0Tq1l2mZmBj0qvCc;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$xRqwlcDVXK_0Tq1l2mZmBj0qvCc;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    invoke-virtual {p1, v0}, Landroid/hardware/face/FaceManager;->generateChallenge(Landroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    :cond_2
    return-void
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x6

    .line 60
    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onSkipButtonClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
