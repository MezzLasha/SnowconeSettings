.class public Lcom/android/settings/network/InternetPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "InternetPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private mPreference:Landroidx/preference/Preference;

.field private final mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance p1, Lcom/android/settings/wifi/WifiSummaryUpdater;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/android/settings/wifi/WifiSummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;)V

    iput-object p1, p0, Lcom/android/settings/network/InternetPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "internet_settings"

    .line 53
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "internet_settings"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 73
    iget-object p0, p0, Lcom/android/settings/network/InternetPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSummaryUpdater;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 68
    iget-object p0, p0, Lcom/android/settings/network/InternetPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSummaryUpdater;->register(Z)V

    return-void
.end method

.method public onSummaryChanged(Ljava/lang/String;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
