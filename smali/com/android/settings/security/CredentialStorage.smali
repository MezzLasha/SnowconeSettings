.class public final Lcom/android/settings/security/CredentialStorage;
.super Landroidx/fragment/app/FragmentActivity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;,
        Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;,
        Lcom/android/settings/security/CredentialStorage$ResetDialog;
    }
.end annotation


# instance fields
.field private mInstallBundle:Landroid/os/Bundle;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 66
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/security/CredentialStorage;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settings/security/CredentialStorage;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/security/CredentialStorage;I)Z
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialStorage;->confirmKeyGuard(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/security/CredentialStorage;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/security/CredentialStorage;->clearLegacyVpnIfEstablished()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/security/CredentialStorage;Ljava/lang/String;IZ)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/security/CredentialStorage;->onKeyInstalled(Ljava/lang/String;IZ)V

    return-void
.end method

.method private checkCallerIsCertInstallerOrSelfInProfile()Z
    .locals 4

    .line 324
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.certinstaller"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 328
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 327
    invoke-virtual {v0, v3, p0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 333
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 334
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    const-string p0, "CredentialStorage"

    const-string v0, "com.android.credentials.INSTALL must be started with startActivityForResult"

    .line 336
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 339
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    .line 343
    :cond_3
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "user"

    .line 349
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 350
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 352
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ne p0, v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    :catch_0
    return v2
.end method

.method private clearLegacyVpnIfEstablished()V
    .locals 2

    .line 244
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnUtils;->disconnectLegacyVpn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget v0, Lcom/android/settings/R$string;->vpn_disconnected:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 247
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private confirmKeyGuard(I)Z
    .locals 2

    .line 359
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 360
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    .line 362
    invoke-virtual {v1, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->credentials_title:I

    .line 363
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p0

    return p0
.end method

.method private handleInstall()V
    .locals 1

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/security/CredentialStorage;->installIfAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private installIfAvailable()Z
    .locals 12

    .line 121
    iget-object v0, p0, Lcom/android/settings/security/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    .line 126
    iput-object v2, p0, Lcom/android/settings/security/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    const-string v3, "install_as_uid"

    const/4 v4, -0x1

    .line 128
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v3, "CredentialStorage"

    if-eq v11, v4, :cond_2

    .line 130
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {v11, v4}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 131
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/16 v4, 0x3f2

    if-eq v11, v4, :cond_1

    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to install credentials as uid "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": cross-user installs may only target wifi uids"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 140
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.credentials.INSTALL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x2000000

    .line 141
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 142
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 143
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return v1

    :cond_2
    const-string v4, "user_key_pair_name"

    .line 147
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "Cannot install key without an alias"

    .line 149
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-string v1, "user_private_key_data"

    .line 153
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    const-string v1, "user_certificate_data"

    .line 154
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    const-string v1, "ca_certificates_data"

    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 156
    new-instance v0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;-><init>(Lcom/android/settings/security/CredentialStorage;Ljava/lang/String;[B[B[BI)V

    const/4 p0, 0x0

    new-array v1, p0, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method private onKeyInstalled(Ljava/lang/String;IZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "CredentialStorage"

    if-nez p3, :cond_0

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    .line 304
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "Error installing alias %s for uid %d"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    .line 310
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "Successfully installed alias %s to uid %d."

    .line 309
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.security.action.KEYCHAIN_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, -0x1

    .line 315
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 317
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 369
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 372
    new-instance p1, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings/security/CredentialStorage;Lcom/android/settings/security/CredentialStorage$1;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/security/CredentialStorage;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 82
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user"

    .line 86
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const-string v3, "no_config_credentials"

    .line 87
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.android.credentials.RESET"

    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    new-instance v0, Lcom/android/settings/security/CredentialStorage$ResetDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/security/CredentialStorage$ResetDialog;-><init>(Lcom/android/settings/security/CredentialStorage;Lcom/android/settings/security/CredentialStorage$1;)V

    goto :goto_0

    :cond_0
    const-string v2, "com.android.credentials.INSTALL"

    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/security/CredentialStorage;->checkCallerIsCertInstallerOrSelfInProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 94
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/security/CredentialStorage;->handleInstall()V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
