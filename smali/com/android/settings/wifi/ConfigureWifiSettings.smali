.class public Lcom/android/settings/wifi/ConfigureWifiSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConfigureWifiSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

.field private mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 104
    new-instance v0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;

    sget v1, Lcom/android/settings/R$xml;->wifi_configure_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/ConfigureWifiSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/wifi/ConfigureWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    const-string v0, "wifi"

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-direct {v2, p1, p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ConfigureWifiSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x152

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 67
    sget p0, Lcom/android/settings/R$xml;->wifi_configure_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 94
    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->onActivityResult(II)V

    return-void

    :cond_0
    const/16 v0, 0x190

    if-ne p1, v0, :cond_1

    .line 98
    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->onActivityResult(II)Z

    return-void

    .line 101
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 84
    const-class p1, Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    .line 85
    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    .line 87
    const-class p1, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    .line 88
    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "settings_provider_model"

    invoke-static {p1, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->network_and_internet_preferences_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method
