.class public Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;
.source "ZenRuleVisEffectsCustomPreferenceController.java"


# instance fields
.field private mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Lcom/android/settingslib/widget/RadioButtonPreference;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;->launchCustomSettings()V

    return-void
.end method

.method private synthetic lambda$displayPreference$1(Landroid/view/View;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;->launchCustomSettings()V

    return-void
.end method

.method private launchCustomSettings()V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x643

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x576

    .line 69
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 71
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/zen/ZenCustomRuleBlockedEffectsSettings;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->createBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x649

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    .line 47
    new-instance v0, Lcom/android/settings/notification/zen/-$$Lambda$ZenRuleVisEffectsCustomPreferenceController$77mrwCmawnunpI9Pja-weGgz59o;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/-$$Lambda$ZenRuleVisEffectsCustomPreferenceController$77mrwCmawnunpI9Pja-weGgz59o;-><init>(Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    .line 52
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    new-instance v0, Lcom/android/settings/notification/zen/-$$Lambda$ZenRuleVisEffectsCustomPreferenceController$LLcRdgrTJm_K4d3v79HPkOJBsUg;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/-$$Lambda$ZenRuleVisEffectsCustomPreferenceController$LLcRdgrTJm_K4d3v79HPkOJBsUg;-><init>(Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic isAvailable()Z
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$displayPreference$0$ZenRuleVisEffectsCustomPreferenceController(Lcom/android/settingslib/widget/RadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;->lambda$displayPreference$0(Lcom/android/settingslib/widget/RadioButtonPreference;)V

    return-void
.end method

.method public synthetic lambda$displayPreference$1$ZenRuleVisEffectsCustomPreferenceController(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;->lambda$displayPreference$1(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 60
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->shouldHideAllVisualEffects()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    .line 65
    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->shouldShowAllVisualEffects()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 64
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    :goto_1
    return-void
.end method
