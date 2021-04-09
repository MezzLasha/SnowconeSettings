.class public Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleReduceBrightColorsPreferenceFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mRbcIntensityPreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;

.field private mRbcPersistencePreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;

.field private mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 192
    new-instance v0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment$2;

    sget v1, Lcom/android/settings/R$xml;->reduce_bright_colors_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment$2;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->updateSwitchBarToggleSwitch()V

    return-void
.end method

.method private getPreferenceOrderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "use_service"

    .line 92
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "rbc_intensity"

    .line 93
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "general_categories"

    .line 94
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "rbc_persist"

    .line 95
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "introduction_categories"

    .line 96
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private synthetic lambda$onInstallSwitchPreferenceToggleSwitch$0(Landroidx/preference/Preference;)Z
    .locals 1

    .line 168
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    .line 169
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    const/4 p0, 0x0

    return p0
.end method

.method private updatePreferenceOrder()V
    .locals 4

    .line 101
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->getPreferenceOrderList()Ljava/util/List;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 109
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setOrder(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSwitchBarToggleSwitch()V
    .locals 4

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reduce_bright_colors_activated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mRbcIntensityPreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "rbc_intensity"

    .line 184
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mRbcPersistencePreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "rbc_persist"

    .line 186
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceDividerSwitchPreference:Lcom/android/settings/accessibility/DividerSwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eq v0, v2, :cond_1

    .line 188
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceDividerSwitchPreference:Lcom/android/settings/accessibility/DividerSwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x73d

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 140
    sget p0, Lcom/android/settings/R$xml;->reduce_bright_colors_settings:I

    return p0
.end method

.method getUserShortcutTypes()I
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method public synthetic lambda$onInstallSwitchPreferenceToggleSwitch$0$ToggleReduceBrightColorsPreferenceFragment(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->lambda$onInstallSwitchPreferenceToggleSwitch$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 62
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 63
    sget v0, Lcom/android/settings/R$string;->reduce_bright_colors_preference_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPackageName:Ljava/lang/CharSequence;

    .line 64
    sget v0, Lcom/android/settings/R$string;->reduce_bright_colors_preference_subtitle:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHtmlDescription:Ljava/lang/CharSequence;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "reduce_bright_colors_activated"

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v1, Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rbc_intensity"

    invoke-direct {v1, v2, v3}, Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mRbcIntensityPreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;

    .line 69
    new-instance v1, Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rbc_persist"

    invoke-direct {v1, v2, v3}, Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mRbcPersistencePreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;

    .line 71
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mRbcIntensityPreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 72
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mRbcPersistencePreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 73
    new-instance v1, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment$1;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;Landroid/os/Handler;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onInstallSwitchPreferenceToggleSwitch()V
    .locals 2

    .line 165
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchPreferenceToggleSwitch()V

    .line 166
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->updateSwitchBarToggleSwitch()V

    .line 167
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceDividerSwitchPreference:Lcom/android/settings/accessibility/DividerSwitchPreference;

    new-instance v1, Lcom/android/settings/accessibility/-$$Lambda$ToggleReduceBrightColorsPreferenceFragment$pkR04dMpP0iZqBfpMoj7o8EAXDI;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/-$$Lambda$ToggleReduceBrightColorsPreferenceFragment$pkR04dMpP0iZqBfpMoj7o8EAXDI;-><init>(Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 124
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1, p2}, Lcom/android/settings/accessibility/AccessibilityStatsLogUtils;->logAccessibilityServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "reduce_bright_colors_activated"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected onRemoveSwitchPreferenceToggleSwitch()V
    .locals 1

    .line 153
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchPreferenceToggleSwitch()V

    .line 154
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceDividerSwitchPreference:Lcom/android/settings/accessibility/DividerSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    .line 117
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->updateSwitchBarToggleSwitch()V

    .line 118
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->updatePreferenceOrder()V

    return-void
.end method

.method protected updateToggleServiceTitle(Landroidx/preference/SwitchPreference;)V
    .locals 0

    .line 160
    sget p0, Lcom/android/settings/R$string;->reduce_bright_colors_switch_title:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method
