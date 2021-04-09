.class public Lcom/android/settings/security/CredentialManagementAppButtonsController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "CredentialManagementAppButtonsController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CredentialManagementApp"


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mCredentialManagerPackageName:Ljava/lang/String;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mHandler:Landroid/os/Handler;

.field private mHasCredentialManagerPackage:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 50
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController;->mHandler:Landroid/os/Handler;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 60
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method

.method private displayButtons(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController;->mHasCredentialManagerPackage:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v0, Lcom/android/settings/R$string;->remove_credential_management_app:I

    .line 87
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    sget v0, Lcom/android/settings/R$drawable;->ic_undo_24:I

    .line 88
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    new-instance v0, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppButtonsController$QoqK_F1QvjrJPGUHOGvJc2n_hRI;

    invoke-direct {v0, p0}, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppButtonsController$QoqK_F1QvjrJPGUHOGvJc2n_hRI;-><init>(Lcom/android/settings/security/CredentialManagementAppButtonsController;)V

    .line 89
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    :cond_0
    return-void
.end method

.method private synthetic lambda$displayButtons$2(Landroid/view/View;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/security/CredentialManagementAppButtonsController;->removeCredentialManagementApp()V

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppButtonsController;->displayButtons(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private synthetic lambda$displayPreference$1(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Landroid/security/IKeyChainService;->hasCredentialManagementApp()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController;->mHasCredentialManagerPackage:Z

    .line 76
    invoke-interface {v0}, Landroid/security/IKeyChainService;->getCredentialManagementAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController;->mCredentialManagerPackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CredentialManagementApp"

    const-string v1, "Unable to display credential management app buttons"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppButtonsController$v6VR0MdlwYeQYMvdccuaNd4j-EM;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppButtonsController$v6VR0MdlwYeQYMvdccuaNd4j-EM;-><init>(Lcom/android/settings/security/CredentialManagementAppButtonsController;Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$removeCredentialManagementApp$3()V
    .locals 1

    .line 101
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p0

    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object p0

    .line 102
    invoke-interface {p0}, Landroid/security/IKeyChainService;->removeCredentialManagementApp()V

    const/16 p0, 0xbb

    .line 104
    invoke-static {p0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 105
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CredentialManagementApp"

    const-string v0, "Unable to remove the credential management app"

    .line 107
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private removeCredentialManagementApp()V
    .locals 5

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController;->mCredentialManagerPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x68

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController;->mCredentialManagerPackageName:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppButtonsController$vWV0ofACrJO7vp0TQaNrD7TFbgE;

    invoke-direct {v1, p0}, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppButtonsController$vWV0ofACrJO7vp0TQaNrD7TFbgE;-><init>(Lcom/android/settings/security/CredentialManagementAppButtonsController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CredentialManagementApp"

    const-string v0, "Unable to remove the credential management app"

    .line 111
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppButtonsController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppButtonsController$TmS8VNIlgWZ0LhezK5TQ_U0ZmzM;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppButtonsController$TmS8VNIlgWZ0LhezK5TQ_U0ZmzM;-><init>(Lcom/android/settings/security/CredentialManagementAppButtonsController;Landroidx/preference/PreferenceScreen;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$displayButtons$2$CredentialManagementAppButtonsController(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppButtonsController;->lambda$displayButtons$2(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$displayPreference$0$CredentialManagementAppButtonsController(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppButtonsController;->lambda$displayPreference$0(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public synthetic lambda$displayPreference$1$CredentialManagementAppButtonsController(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppButtonsController;->lambda$displayPreference$1(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public synthetic lambda$removeCredentialManagementApp$3$CredentialManagementAppButtonsController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/security/CredentialManagementAppButtonsController;->lambda$removeCredentialManagementApp$3()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
