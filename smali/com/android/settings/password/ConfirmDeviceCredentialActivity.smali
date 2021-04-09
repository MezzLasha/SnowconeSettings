.class public Lcom/android/settings/password/ConfirmDeviceCredentialActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ConfirmDeviceCredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmDeviceCredentialActivity$InternalActivity;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

.field private mCheckDevicePolicyManager:Z

.field private mContext:Landroid/content/Context;

.field private mCredentialMode:I

.field private mDetails:Ljava/lang/String;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mGoingToBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTitle:Ljava/lang/String;

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private mWaitingForBiometricCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/android/settings/password/-$$Lambda$ConfirmDeviceCredentialActivity$vqWjji12vU8obsewHeXLRaLb9pg;

    invoke-direct {v0, p0}, Lcom/android/settings/password/-$$Lambda$ConfirmDeviceCredentialActivity$vqWjji12vU8obsewHeXLRaLb9pg;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mExecutor:Ljava/util/concurrent/Executor;

    .line 103
    new-instance v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mGoingToBackground:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/app/trust/TrustManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTrustManager:Landroid/app/trust/TrustManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/os/UserManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public static createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    const-class v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    .line 76
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.app.extra.TITLE"

    .line 78
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p0, "android.app.extra.DESCRIPTION"

    .line 79
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-object v0
.end method

.method private getDetailsFromCredentialType(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 301
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_generic_profile:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 302
    :cond_1
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_generic:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    if-eqz p2, :cond_3

    .line 293
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pin_generic_profile:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 294
    :cond_3
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pin_generic:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    if-eqz p2, :cond_5

    .line 297
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pattern_generic_profile:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 298
    :cond_5
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pattern_generic:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private getTitleFromCredentialType(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 282
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_work_password_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 283
    :cond_1
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    if-eqz p2, :cond_3

    .line 274
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_work_pin_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 275
    :cond_3
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pin_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    if-eqz p2, :cond_5

    .line 278
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_work_pattern_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 279
    :cond_5
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pattern_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private getTitleFromOrganizationName(I)Ljava/lang/String;
    .locals 1

    const-string v0, "device_policy"

    .line 406
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 409
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 410
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private isBiometricAllowed(II)Z
    .locals 0

    .line 338
    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isStrongAuthRequired(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 339
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->hasPendingEscrowToken(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInternalActivity()Z
    .locals 0

    .line 402
    instance-of p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$InternalActivity;

    return p0
.end method

.method private isStrongAuthRequired(I)Z
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    .line 334
    invoke-virtual {p1, p0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showBiometricPrompt(Landroid/hardware/biometrics/PromptInfo;)V
    .locals 4

    .line 343
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment"

    .line 344
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/BiometricFragment;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    if-nez v0, :cond_0

    .line 348
    invoke-static {p1}, Lcom/android/settings/password/BiometricFragment;->newInstance(Landroid/hardware/biometrics/PromptInfo;)Lcom/android/settings/password/BiometricFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/password/BiometricFragment;->setCallbacks(Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/settings/password/BiometricFragment;->setUser(I)V

    if-eqz p1, :cond_1

    .line 355
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    .line 356
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method private showConfirmCredentials()V
    .locals 3

    .line 376
    iget v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCredentialMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 377
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    .line 379
    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setHeader(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/String;

    .line 380
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 381
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setExternal(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    .line 382
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 383
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForceVerifyPath(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 386
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    .line 388
    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setHeader(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/String;

    .line 389
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 390
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setExternal(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    .line 391
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 395
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v1, "No pin/pattern/pass set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 396
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 398
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$ConfirmDeviceCredentialActivity(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->lambda$new$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 166
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 171
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 172
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    .line 173
    const-class p1, Landroid/app/trust/TrustManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/trust/TrustManager;

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 174
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 177
    iput-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mContext:Landroid/content/Context;

    const-string v1, "check_dpm"

    .line 179
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCheckDevicePolicyManager:Z

    const-string v1, "android.app.extra.TITLE"

    .line 180
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    const-string v1, "android.app.extra.DESCRIPTION"

    .line 181
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/String;

    const-string v1, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    .line 182
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.app.action.CONFIRM_FRP_CREDENTIAL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 186
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iput v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    .line 187
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 191
    sget-object v3, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v4, "Invalid intent extra"

    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {p1, v3}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 195
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v3

    .line 198
    iget-object v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    .line 199
    iget v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-direct {p0, v4}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getTitleFromOrganizationName(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    .line 202
    :cond_1
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 204
    new-instance v5, Landroid/hardware/biometrics/PromptInfo;

    invoke-direct {v5}, Landroid/hardware/biometrics/PromptInfo;-><init>()V

    .line 205
    iget-object v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/hardware/biometrics/PromptInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/hardware/biometrics/PromptInfo;->setDescription(Ljava/lang/CharSequence;)V

    .line 207
    iget-boolean v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCheckDevicePolicyManager:Z

    invoke-virtual {v5, v6}, Landroid/hardware/biometrics/PromptInfo;->setDisallowBiometricsIfPolicyExists(Z)V

    .line 209
    iget-object v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/settings/Utils;->getCredentialType(Landroid/content/Context;I)I

    move-result v6

    .line 211
    iget-object v7, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 213
    invoke-direct {p0, v6, v3}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getTitleFromCredentialType(IZ)Ljava/lang/String;

    move-result-object v7

    .line 212
    invoke-virtual {v5, v7}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialTitle(Ljava/lang/CharSequence;)V

    .line 215
    :cond_2
    iget-object v7, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 217
    invoke-direct {p0, v6, v3}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getDetailsFromCredentialType(IZ)Ljava/lang/String;

    move-result-object v6

    .line 216
    invoke-virtual {v5, v6}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 v6, 0x1

    if-eqz v2, :cond_4

    .line 226
    new-instance p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {p1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    .line 228
    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setHeader(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/String;

    .line 229
    invoke-virtual {p1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 230
    invoke-virtual {p1, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setAlternateButton(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 231
    invoke-virtual {p1, v6}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setExternal(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    const/16 v1, -0x270f

    .line 232
    invoke-virtual {p1, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 233
    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p1

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_6

    .line 234
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    .line 235
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x2

    .line 236
    iput v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCredentialMode:I

    .line 237
    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-direct {p0, p1, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isBiometricAllowed(II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 238
    invoke-direct {p0, v5}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showBiometricPrompt(Landroid/hardware/biometrics/PromptInfo;)V

    goto :goto_1

    .line 241
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    goto :goto_2

    .line 245
    :cond_6
    iput v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCredentialMode:I

    .line 246
    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-direct {p0, p1, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isBiometricAllowed(II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 249
    invoke-direct {p0, v5}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showBiometricPrompt(Landroid/hardware/biometrics/PromptInfo;)V

    :goto_1
    move p1, v6

    goto :goto_3

    .line 252
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    :goto_2
    move p1, v0

    move v0, v6

    :goto_3
    if-eqz v0, :cond_8

    .line 258
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_9

    .line 261
    iput-boolean v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    goto :goto_4

    .line 263
    :cond_9
    sget-object p1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v0, "No pattern, password or PIN set."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 264
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 265
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_4
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 317
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 318
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 319
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mGoingToBackground:Z

    .line 320
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    if-nez v0, :cond_1

    .line 321
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 324
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mGoingToBackground:Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 309
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    const/4 v0, 0x1

    .line 312
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V

    return-void
.end method
