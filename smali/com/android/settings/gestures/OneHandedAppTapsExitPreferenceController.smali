.class public Lcom/android/settings/gestures/OneHandedAppTapsExitPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "OneHandedAppTapsExitPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;


# instance fields
.field private mPreference:Landroidx/preference/Preference;

.field private final mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    new-instance p2, Lcom/android/settings/gestures/OneHandedSettingsUtils;

    invoke-direct {p2, p1}, Lcom/android/settings/gestures/OneHandedSettingsUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/gestures/OneHandedAppTapsExitPreferenceController;->mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    .line 44
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/gestures/OneHandedAppTapsExitPreferenceController;->isChecked()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->setSettingsTapsAppToExit(Landroid/content/Context;Z)Z

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

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/gestures/OneHandedAppTapsExitPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->isOneHandedModeEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

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

.method public isChecked()Z
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->getSettingsTapsAppToExit(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onChange(Landroid/net/Uri;)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/android/settings/gestures/OneHandedAppTapsExitPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/gestures/OneHandedAppTapsExitPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedAppTapsExitPreferenceController;->mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    invoke-virtual {v0, p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->registerToggleAwareObserver(Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedAppTapsExitPreferenceController;->mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    invoke-virtual {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->unregisterToggleAwareObserver()V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->setSettingsTapsAppToExit(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/gestures/OneHandedAppTapsExitPreferenceController;->getAvailabilityStatus()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 64
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
