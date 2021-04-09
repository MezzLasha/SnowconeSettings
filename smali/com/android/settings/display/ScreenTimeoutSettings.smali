.class public Lcom/android/settings/display/ScreenTimeoutSettings;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "ScreenTimeoutSettings.java"

# interfaces
.implements Lcom/android/settings/support/actionbar/HelpResourceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/ScreenTimeoutSettings$TimeoutCandidateInfo;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field mAdaptiveSleepController:Lcom/android/settings/display/AdaptiveSleepPreferenceController;

.field mAdaptiveSleepPermissionController:Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;

.field mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field mDisableOptionsPreference:Landroidx/preference/Preference;

.field private mInitialEntries:[Ljava/lang/CharSequence;

.field private mInitialValues:[Ljava/lang/CharSequence;

.field private mPrivacyPreference:Lcom/android/settingslib/widget/FooterPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 268
    new-instance v0, Lcom/android/settings/display/ScreenTimeoutSettings$1;

    sget v1, Lcom/android/settings/R$xml;->screen_timeout_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/display/ScreenTimeoutSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/display/ScreenTimeoutSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method

.method private getCurrentSystemScreenTimeout(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x7530

    if-nez p1, :cond_0

    .line 224
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 226
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "screen_off_timeout"

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMaxScreenTimeout(Landroid/content/Context;)Ljava/lang/Long;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 209
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    .line 211
    :cond_0
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-nez v1, :cond_1

    return-object v0

    .line 215
    :cond_1
    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    .line 217
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {v1, p0, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private isScreenAttentionAvailable()Z
    .locals 1

    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111000d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$updateCandidates$0(Landroidx/preference/Preference;)Z
    .locals 0

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$updateCandidates$1(Landroidx/preference/Preference;)Z
    .locals 0

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 p0, 0x1

    return p0
.end method

.method private setCurrentSystemScreenTimeout(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 234
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "screen_off_timeout"

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ScreenTimeout"

    const-string p2, "could not persist screen timeout setting"

    .line 238
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/display/ScreenTimeoutSettings;->getMaxScreenTimeout(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 115
    iget-object v3, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mInitialValues:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 116
    :goto_0
    iget-object v4, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mInitialValues:[Ljava/lang/CharSequence;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 117
    aget-object v4, v4, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-gtz v4, :cond_0

    .line 118
    new-instance v4, Lcom/android/settings/display/ScreenTimeoutSettings$TimeoutCandidateInfo;

    iget-object v5, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mInitialEntries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mInitialValues:[Ljava/lang/CharSequence;

    aget-object v6, v6, v3

    .line 119
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/android/settings/display/ScreenTimeoutSettings$TimeoutCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 118
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "ScreenTimeout"

    const-string v1, "Screen timeout options do not exist."

    .line 123
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 1

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/ScreenTimeoutSettings;->getCurrentSystemScreenTimeout(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 199
    sget p0, Lcom/android/settings/R$string;->help_url_adaptive_sleep:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x73c

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 194
    sget p0, Lcom/android/settings/R$xml;->screen_timeout_settings:I

    return p0
.end method

.method public synthetic lambda$updateCandidates$0$ScreenTimeoutSettings(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenTimeoutSettings;->lambda$updateCandidates$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$updateCandidates$1$ScreenTimeoutSettings(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenTimeoutSettings;->lambda$updateCandidates$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->screen_timeout_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mInitialEntries:[Ljava/lang/CharSequence;

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->screen_timeout_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mInitialValues:[Ljava/lang/CharSequence;

    .line 92
    new-instance v0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepController:Lcom/android/settings/display/AdaptiveSleepPreferenceController;

    .line 93
    new-instance v0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepPermissionController:Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;

    .line 95
    new-instance v0, Lcom/android/settingslib/widget/FooterPreference;

    invoke-direct {v0, p1}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mPrivacyPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 96
    sget v1, Lcom/android/settings/R$drawable;->ic_privacy_shield_24dp:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mPrivacyPreference:Lcom/android/settingslib/widget/FooterPreference;

    sget v1, Lcom/android/settings/R$string;->adaptive_sleep_privacy:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mPrivacyPreference:Lcom/android/settingslib/widget/FooterPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mPrivacyPreference:Lcom/android/settingslib/widget/FooterPreference;

    sget v1, Lcom/android/settings/R$layout;->preference_footer:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 101
    new-instance v0, Lcom/android/settingslib/widget/FooterPreference;

    invoke-direct {v0, p1}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mDisableOptionsPreference:Landroidx/preference/Preference;

    .line 102
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 103
    iget-object p1, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mDisableOptionsPreference:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->admin_disabled_other_options:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 104
    iget-object p1, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mDisableOptionsPreference:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$drawable;->ic_info_outline_24dp:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(I)V

    .line 107
    iget-object p1, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mDisableOptionsPreference:Landroidx/preference/Preference;

    const v0, 0x7ffffffe

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 108
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mPrivacyPreference:Lcom/android/settingslib/widget/FooterPreference;

    const p1, 0x7ffffffd

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-static {p0}, Lcom/android/settings/search/actionbar/SearchMenuController;->init(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    .line 84
    invoke-static {p0}, Lcom/android/settings/support/actionbar/HelpMenuController;->init(Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 130
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 131
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepPermissionController:Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->updateVisibility()V

    .line 132
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepController:Lcom/android/settings/display/AdaptiveSleepPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->updatePreference()V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 1

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/display/ScreenTimeoutSettings;->setCurrentSystemScreenTimeout(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateCandidates()V
    .locals 6

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutSettings;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 141
    iget-object v2, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mDisableOptionsPreference:Landroidx/preference/Preference;

    new-instance v3, Lcom/android/settings/display/-$$Lambda$ScreenTimeoutSettings$t0YSnQ7Rg0STzpf-vWCFA3oPFNU;

    invoke-direct {v3, p0}, Lcom/android/settings/display/-$$Lambda$ScreenTimeoutSettings$t0YSnQ7Rg0STzpf-vWCFA3oPFNU;-><init>(Lcom/android/settings/display/ScreenTimeoutSettings;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 146
    iget-object v2, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mDisableOptionsPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutSettings;->getCandidates()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 154
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/widget/CandidateInfo;

    .line 155
    new-instance v4, Lcom/android/settingslib/widget/RadioButtonPreference;

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settingslib/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {v3}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v3, v0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->bindPreference(Lcom/android/settingslib/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)Lcom/android/settingslib/widget/RadioButtonPreference;

    .line 158
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 161
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/display/ScreenTimeoutSettings;->isScreenAttentionAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepPermissionController:Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->addToScreen(Landroidx/preference/PreferenceScreen;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepController:Lcom/android/settings/display/AdaptiveSleepPreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->addToScreen(Landroidx/preference/PreferenceScreen;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mPrivacyPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mDisableOptionsPreference:Landroidx/preference/Preference;

    new-instance v2, Lcom/android/settings/display/-$$Lambda$ScreenTimeoutSettings$Q4KBM4_18BhzdZ5tKaYCcBXAa5I;

    invoke-direct {v2, p0}, Lcom/android/settings/display/-$$Lambda$ScreenTimeoutSettings$Q4KBM4_18BhzdZ5tKaYCcBXAa5I;-><init>(Lcom/android/settings/display/ScreenTimeoutSettings;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 172
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mDisableOptionsPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_4
    return-void
.end method
