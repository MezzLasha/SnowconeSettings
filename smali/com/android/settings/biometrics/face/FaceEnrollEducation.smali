.class public Lcom/android/settings/biometrics/face/FaceEnrollEducation;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "FaceEnrollEducation.java"


# instance fields
.field private mAccessibilityEnabled:Z

.field private mDescriptionText:Landroid/widget/TextView;

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mHandler:Landroid/os/Handler;

.field private mIllustrationAccessibility:Landroid/view/View;

.field private mIllustrationNormal:Lcom/google/android/setupdesign/view/IllustrationVideoView;

.field private mNextClicked:Z

.field private mResultIntent:Landroid/content/Intent;

.field private mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

.field private mSwitchDiversityListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    .line 61
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversityListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Lcom/google/android/setupdesign/GlifLayout;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Lcom/google/android/setupdesign/view/IllustrationVideoView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationNormal:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationAccessibility:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mDescriptionText:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic lambda$onCreate$0(Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    .line 140
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->setChecked(Z)V

    const/16 p2, 0x8

    .line 141
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->getSwitch()Landroid/widget/Switch;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Switch;->toggle()V

    return-void
.end method

.method private synthetic lambda$onNextButtonClick$2(Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x2

    .line 205
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    .line 206
    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mNextClicked:Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5e2

    return p0
.end method

.method public synthetic lambda$onCreate$0$FaceEnrollEducation(Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->lambda$onCreate$0(Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$FaceEnrollEducation(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onNextButtonClick$2$FaceEnrollEducation(Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->lambda$onNextButtonClick$2(Landroid/content/Intent;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 222
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 223
    iput-object p3, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mResultIntent:Landroid/content/Intent;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    if-eq p2, v0, :cond_0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 228
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 88
    sget p1, Lcom/android/settings/R$layout;->face_enroll_education:I

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->security_settings_face_enroll_education_title:I

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    .line 90
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 91
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mHandler:Landroid/os/Handler;

    .line 93
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 95
    sget p1, Lcom/android/settings/R$id;->illustration_normal:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/view/IllustrationVideoView;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationNormal:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    .line 96
    sget p1, Lcom/android/settings/R$id;->illustration_accessibility:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationAccessibility:Landroid/view/View;

    .line 97
    sget p1, Lcom/android/settings/R$id;->sud_layout_description:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mDescriptionText:Landroid/widget/TextView;

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->skip_label:I

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/face/-$$Lambda$giOmGqOT8o3mO-6U7HhvTcgovUo;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$giOmGqOT8o3mO-6U7HhvTcgovUo;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x7

    .line 106
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$style;->SudGlifButton_Secondary:I

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 102
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_cancel:I

    .line 113
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/face/-$$Lambda$giOmGqOT8o3mO-6U7HhvTcgovUo;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$giOmGqOT8o3mO-6U7HhvTcgovUo;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    .line 114
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 115
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$style;->SudGlifButton_Secondary:I

    .line 116
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 111
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 121
    :goto_0
    new-instance p1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->security_settings_face_enroll_education_start:I

    .line 122
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/biometrics/face/-$$Lambda$mLHSE35Q65wSAjjzFdcycUdRgwo;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$mLHSE35Q65wSAjjzFdcycUdRgwo;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    .line 123
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    const/4 v0, 0x5

    .line 124
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$style;->SudGlifButton_Primary:I

    .line 125
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mAccessibilityEnabled:Z

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 138
    sget p1, Lcom/android/settings/R$id;->accessibility_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 139
    new-instance v0, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollEducation$iLz5aOdWeIhL4kq4fq1sQmc68cw;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollEducation$iLz5aOdWeIhL4kq4fq1sQmc68cw;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Landroid/widget/Button;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    sget v0, Lcom/android/settings/R$id;->toggle_diversity:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    .line 146
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversityListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->setListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    new-instance v1, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollEducation$R2YGJFGC1CQmIpCjam_M1SAXP0Y;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollEducation$R2YGJFGC1CQmIpCjam_M1SAXP0Y;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-boolean p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mAccessibilityEnabled:Z

    if-eqz p0, :cond_3

    .line 152
    invoke-virtual {p1}, Landroid/widget/Button;->callOnClick()Z

    :cond_3
    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 3

    .line 179
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 180
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    if-eqz v0, :cond_0

    const-string v1, "hw_auth_token"

    .line 181
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 183
    :cond_0
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    const-string v1, "android.intent.extra.USER_ID"

    .line 184
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    const-string v1, "from_settings_summary"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/biometrics/BiometricUtils;->copyMultiBiometricExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 188
    sget v0, Lcom/android/settings/R$string;->config_face_enroll:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 190
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 191
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 193
    :cond_2
    const-class v0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 195
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mResultIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 197
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "accessibility_diversity"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mAccessibilityEnabled:Z

    if-eqz v0, :cond_4

    .line 203
    invoke-static {}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog;->newInstance()Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollEducation$vg9OQVPFvPbWujLVnsLJalTvO98;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollEducation$vg9OQVPFvPbWujLVnsLJalTvO98;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog;->setPositiveButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p1, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    .line 210
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 211
    iput-boolean v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mNextClicked:Z

    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 158
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    .line 159
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversityListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    invoke-virtual {v1}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->getSwitch()Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    .line 160
    invoke-virtual {v2}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->isChecked()Z

    move-result v2

    .line 159
    invoke-interface {v0, v1, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 216
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected shouldFinishWhenBackgrounded()Z
    .locals 1

    .line 174
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->shouldFinishWhenBackgrounded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mNextClicked:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
