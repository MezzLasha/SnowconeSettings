.class public Lcom/android/settings/accessibility/TextAndDisplayFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "TextAndDisplayFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

.field private mReduceBrightColorsPreference:Landroidx/preference/Preference;

.field private mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

.field private mToggleInversionPreference:Landroidx/preference/Preference;

.field private mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 134
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->accessibility_text_and_display:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private initializeAllPreferences()V
    .locals 1

    const-string v0, "daltonizer_preference"

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    const-string v0, "toggle_inversion_preference"

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mToggleInversionPreference:Landroidx/preference/Preference;

    const-string v0, "reduce_bright_colors_preference"

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mReduceBrightColorsPreference:Landroidx/preference/Preference;

    const-string v0, "toggle_disable_animations"

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    const-string v0, "toggle_large_pointer_icon"

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method private updateSystemPreferences()V
    .locals 4

    .line 108
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "experimental_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility_display_daltonizer_enabled"

    .line 111
    invoke-static {v2, v3}, Lcom/android/settings/accessibility/AccessibilityUtil;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mToggleInversionPreference:Landroidx/preference/Preference;

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility_display_inversion_enabled"

    .line 113
    invoke-static {v2, v3}, Lcom/android/settings/accessibility/AccessibilityUtil;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mReduceBrightColorsPreference:Landroidx/preference/Preference;

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "reduce_bright_colors_activated"

    .line 115
    invoke-static {v2, v3}, Lcom/android/settings/accessibility/AccessibilityUtil;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 122
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mToggleInversionPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 123
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mReduceBrightColorsPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 124
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 125
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 126
    iget-object v1, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 127
    iget-object v1, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mToggleInversionPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 128
    iget-object v1, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mReduceBrightColorsPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 129
    iget-object v1, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 130
    iget-object p0, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TextAndDisplayFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x742

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 78
    sget p0, Lcom/android/settings/R$xml;->accessibility_text_and_display:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 73
    const-class p1, Lcom/android/settings/display/DarkUIPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/DarkUIPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/display/DarkUIPreferenceController;->setParentFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-direct {p0}, Lcom/android/settings/accessibility/TextAndDisplayFragment;->initializeAllPreferences()V

    .line 67
    invoke-direct {p0}, Lcom/android/settings/accessibility/TextAndDisplayFragment;->updateSystemPreferences()V

    return-void
.end method
