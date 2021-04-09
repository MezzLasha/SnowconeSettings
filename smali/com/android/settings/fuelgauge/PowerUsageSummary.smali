.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings/fuelgauge/PowerUsageBase;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;


# static fields
.field static final BATTERY_INFO_LOADER:I = 0x1

.field static final BATTERY_TIP_LOADER:I = 0x2

.field static final MENU_ADVANCED_BATTERY:I = 0x2

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

.field mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field mBatteryInfoDebugLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mBatteryInfoLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

.field mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

.field private mBatteryTipsCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;>;"
        }
    .end annotation
.end field

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

.field mNeedUpdateBatteryTip:Z

.field mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field mScreenUsagePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

.field final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 407
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->power_usage_summary:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;-><init>()V

    .line 101
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 109
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 131
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoDebugLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 174
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipsCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 269
    sget p0, Lcom/android/settings/R$string;->help_url_battery:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PowerUsageSummary"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4ef

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 257
    sget p0, Lcom/android/settings/R$xml;->power_usage_summary:I

    return p0
.end method

.method initFeatureProvider()V
    .locals 2

    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 353
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 354
    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 196
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 199
    const-class v0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    .line 200
    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->setActivity(Landroid/app/Activity;)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->setFragment(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->setLifecycle(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 204
    const-class v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    .line 205
    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->setActivity(Lcom/android/settings/SettingsActivity;)V

    .line 206
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->setFragment(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    .line 207
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    new-instance v0, Lcom/android/settings/fuelgauge/-$$Lambda$3_hZ7OdEi_7ZuFLDK9QLCPCo6T4;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$3_hZ7OdEi_7ZuFLDK9QLCPCo6T4;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->setBatteryTipListener(Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;)V

    return-void
.end method

.method public onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 0

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryTipLoader()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 212
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->initFeatureProvider()V

    const-string v0, "battery_header"

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "screen_usage"

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mScreenUsagePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    const-string v0, "last_full_charge"

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isBatteryPresent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryInfoLoader()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateBatteryTipFlag(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 262
    sget v0, Lcom/android/settings/R$string;->advanced_battery_title:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 264
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->showBothEstimates()V

    const/4 p0, 0x0

    .line 383
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 274
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 283
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 276
    :cond_0
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    .line 277
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->advanced_battery_title:I

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 242
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 232
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_estimates_last_update_time"

    .line 234
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 233
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 398
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 399
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected refreshUi(I)V
    .locals 3

    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mIsBatteryPresent:Z

    if-nez v0, :cond_1

    return-void

    .line 298
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mNeedUpdateBatteryTip:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq p1, v1, :cond_2

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryTipLoader()V

    goto :goto_0

    .line 302
    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mNeedUpdateBatteryTip:Z

    .line 305
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryInfoLoader()V

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateLastFullChargePreference()V

    .line 307
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mScreenUsagePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 308
    invoke-virtual {v1, p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateScreenUsageTime(Lcom/android/internal/os/BatteryStatsHelper;)J

    move-result-wide v1

    long-to-double v1, v1

    const/4 p0, 0x0

    .line 307
    invoke-static {v0, v1, v2, p0}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method restartBatteryInfoLoader()V
    .locals 4

    .line 359
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mIsBatteryPresent:Z

    if-nez v0, :cond_1

    return-void

    .line 366
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 368
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEstimateDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->summary1:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 371
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    return-void
.end method

.method protected restartBatteryStatsLoader(I)V
    .locals 0

    .line 389
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->restartBatteryStatsLoader(I)V

    .line 391
    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mIsBatteryPresent:Z

    if-eqz p1, :cond_0

    .line 392
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->quickUpdateHeaderPreference()V

    :cond_0
    return-void
.end method

.method restartBatteryTipLoader()V
    .locals 3

    .line 313
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipsCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method setBatteryLayoutPreference(Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    return-void
.end method

.method showBothEstimates()V
    .locals 3

    .line 341
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 343
    invoke-interface {v1, v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoDebugLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    :cond_1
    :goto_0
    return-void
.end method

.method updateBatteryTipFlag(Landroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 377
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->needUpdate()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mNeedUpdateBatteryTip:Z

    return-void
.end method

.method updateLastFullChargePreference()V
    .locals 6

    .line 323
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    sget v2, Lcom/android/settings/R$string;->battery_full_charge_last:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 326
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 327
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    long-to-double v3, v3

    invoke-static {v2, v3, v4, v1}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p0

    .line 326
    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 330
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateLastFullChargeTime(Lcom/android/internal/os/BatteryStatsHelper;J)J

    move-result-wide v2

    .line 332
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    sget v4, Lcom/android/settings/R$string;->battery_last_full_charge:I

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setTitle(I)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 334
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double v2, v2

    invoke-static {p0, v2, v3, v1}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p0

    .line 333
    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSubtitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected updateViews(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->battery_header_icon:I

    .line 151
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryMeterView;

    .line 152
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v2, Lcom/android/settings/R$id;->battery_percent:I

    .line 153
    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 154
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v3, Lcom/android/settings/R$id;->summary1:I

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    .line 155
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/BatteryInfo;

    const/4 v4, 0x1

    .line 156
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 157
    iget v5, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    invoke-static {v5}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 164
    invoke-static {v6, v7}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v6

    .line 163
    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-interface {v1, v5}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getOldEstimateDebugString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-wide v6, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 167
    invoke-static {v6, v7}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v6

    .line 166
    invoke-static {p0, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-interface {v5, p0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedEstimateDebugString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget p0, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setBatteryLevel(I)V

    .line 171
    iget-boolean p0, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    xor-int/2addr p0, v4

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setCharging(Z)V

    return-void
.end method
