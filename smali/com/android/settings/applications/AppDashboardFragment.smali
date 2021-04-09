.class public Lcom/android/settings/applications/AppDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AppDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAppsPreferenceController:Lcom/android/settings/applications/AppsPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lcom/android/settings/applications/AppDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/android/settings/applications/AppDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    new-instance v1, Lcom/android/settings/applications/AppsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-static {p1}, Lcom/android/settings/applications/AppDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCategoryKey()Ljava/lang/String;
    .locals 0

    const-string p0, "com.android.settings.category.ia.apps"

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 61
    sget p0, Lcom/android/settings/R$string;->help_url_apps_and_notifications:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AppDashboardFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2ec

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 66
    sget p0, Lcom/android/settings/R$xml;->apps:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 72
    const-class p1, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->setSession(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 73
    const-class p1, Lcom/android/settings/applications/AppsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/AppsPreferenceController;

    iput-object p1, p0, Lcom/android/settings/applications/AppDashboardFragment;->mAppsPreferenceController:Lcom/android/settings/applications/AppsPreferenceController;

    .line 74
    invoke-virtual {p1, p0}, Lcom/android/settings/applications/AppsPreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
