.class public Lcom/android/settings/security/CredentialManagementAppHeaderController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "CredentialManagementAppHeaderController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CredentialManagementApp"


# instance fields
.field private mCredentialManagerPackageName:Ljava/lang/String;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mHandler:Landroid/os/Handler;

.field private mHasCredentialManagerPackage:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/security/CredentialManagementAppHeaderController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 49
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/security/CredentialManagementAppHeaderController;->mHandler:Landroid/os/Handler;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppHeaderController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private displayHeader(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    .line 83
    sget v0, Lcom/android/settings/R$id;->entity_header_icon:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    sget v1, Lcom/android/settings/R$id;->entity_header_title:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    sget v2, Lcom/android/settings/R$id;->entity_header_summary:I

    invoke-virtual {p1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/security/CredentialManagementAppHeaderController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/security/CredentialManagementAppHeaderController;->mCredentialManagerPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    .line 89
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 90
    iget-object v3, p0, Lcom/android/settings/security/CredentialManagementAppHeaderController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v3, p0, Lcom/android/settings/security/CredentialManagementAppHeaderController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppHeaderController;->mCredentialManagerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->request_manage_credentials_description:I

    .line 100
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppHeaderController;->displayHeader(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private synthetic lambda$displayPreference$1(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Landroid/security/IKeyChainService;->hasCredentialManagementApp()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/security/CredentialManagementAppHeaderController;->mHasCredentialManagerPackage:Z

    .line 73
    invoke-interface {v0}, Landroid/security/IKeyChainService;->getCredentialManagementAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/CredentialManagementAppHeaderController;->mCredentialManagerPackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CredentialManagementApp"

    const-string v1, "Unable to display credential management app header"

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppHeaderController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppHeaderController$yhyZYkoCv4OXzVgA0Ojz9ONdvAw;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppHeaderController$yhyZYkoCv4OXzVgA0Ojz9ONdvAw;-><init>(Lcom/android/settings/security/CredentialManagementAppHeaderController;Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppHeaderController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppHeaderController$1ebvd2X7IVnS_2sromUUGemBgDM;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppHeaderController$1ebvd2X7IVnS_2sromUUGemBgDM;-><init>(Lcom/android/settings/security/CredentialManagementAppHeaderController;Landroidx/preference/PreferenceScreen;)V

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

.method public synthetic lambda$displayPreference$0$CredentialManagementAppHeaderController(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppHeaderController;->lambda$displayPreference$0(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public synthetic lambda$displayPreference$1$CredentialManagementAppHeaderController(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppHeaderController;->lambda$displayPreference$1(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
