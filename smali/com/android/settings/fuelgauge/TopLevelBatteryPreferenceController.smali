.class public Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TopLevelBatteryPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/fuelgauge/BatteryPreferenceController;


# instance fields
.field private final mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

.field private mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field private mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

.field private mBatteryStatusLabel:Ljava/lang/String;

.field protected mIsBatteryPresent:Z

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mIsBatteryPresent:Z

    .line 47
    new-instance p2, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    .line 48
    new-instance v0, Lcom/android/settings/fuelgauge/-$$Lambda$TopLevelBatteryPreferenceController$IYm0EAvpRMZV8cI1oDnJGsoQD7o;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$TopLevelBatteryPreferenceController$IYm0EAvpRMZV8cI1oDnJGsoQD7o;-><init>(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;)V

    invoke-virtual {p2, v0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->setBatteryChangedListener(Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;)V

    .line 58
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 59
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getBatteryStatusFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    return-void
.end method

.method private generateLabel(Lcom/android/settings/fuelgauge/BatteryInfo;)Ljava/lang/CharSequence;
    .locals 4

    .line 117
    iget-boolean v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-object v0

    .line 119
    :cond_0
    iget-object v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 120
    iget-object p0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    return-object p0

    .line 122
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->power_remaining_settings_home_page:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSummary(Z)Ljava/lang/CharSequence;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "settings_silky_home"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mIsBatteryPresent:Z

    if-nez v0, :cond_1

    .line 96
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->battery_missing_message:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->getDashboardLabel(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 54
    iget-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private synthetic lambda$new$1(I)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mIsBatteryPresent:Z

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/fuelgauge/-$$Lambda$TopLevelBatteryPreferenceController$xPATdKI0ZANOtT77m5hPZ8FnzN4;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$TopLevelBatteryPreferenceController$xPATdKI0ZANOtT77m5hPZ8FnzN4;-><init>(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;)V

    const/4 p0, 0x1

    invoke-static {p1, v0, p0}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_show_top_level_battery:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
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

.method protected getDashboardLabel(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo;Z)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 108
    iget-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    invoke-interface {p1, p0, p2}, Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;->triggerBatteryStatusUpdate(Lcom/android/settings/fuelgauge/BatteryPreferenceController;Lcom/android/settings/fuelgauge/BatteryInfo;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 109
    iput-object v0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryStatusLabel:Ljava/lang/String;

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryStatusLabel:Ljava/lang/String;

    if-nez p1, :cond_2

    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->generateLabel(Lcom/android/settings/fuelgauge/BatteryInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x1

    .line 86
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->getSummary(Z)Ljava/lang/CharSequence;

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

.method public synthetic lambda$new$0$TopLevelBatteryPreferenceController(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->lambda$new$0(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return-void
.end method

.method public synthetic lambda$new$1$TopLevelBatteryPreferenceController(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->lambda$new$1(I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->register()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->unRegister()V

    return-void
.end method

.method public updateBatteryStatus(Ljava/lang/String;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryStatusLabel:Ljava/lang/String;

    .line 134
    iget-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 136
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->getSummary(Z)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    iget-object p0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
