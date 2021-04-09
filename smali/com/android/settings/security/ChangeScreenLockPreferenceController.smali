.class public Lcom/android/settings/security/ChangeScreenLockPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ChangeScreenLockPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/widget/GearPreference$OnGearClickListener;


# instance fields
.field protected final mDPM:Landroid/app/admin/DevicePolicyManager;

.field protected final mHost:Lcom/android/settings/security/SecuritySettings;

.field protected final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field protected mPreference:Lcom/android/settingslib/RestrictedPreference;

.field protected final mProfileChallengeUserId:I

.field protected final mUm:Landroid/os/UserManager;

.field protected final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V
    .locals 3

    .line 62
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUserId:I

    const-string v1, "user"

    .line 63
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUm:Landroid/os/UserManager;

    const-string v2, "device_policy"

    .line 64
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 65
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v2

    .line 67
    invoke-interface {v2, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 68
    iput-object p2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 69
    invoke-static {v1, v0}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    .line 70
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method


# virtual methods
.method disableIfPasswordQualityManaged(I)V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 181
    invoke-static {v0, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    .line 184
    iget-object v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result p1

    const/high16 v1, 0x80000

    if-ne p1, v1, :cond_0

    .line 186
    iget-object p0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "unlock_set_or_change"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 122
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 129
    :cond_0
    iget p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    const/16 v0, -0x2710

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 130
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 131
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUm:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-static {p1, v0, v1}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 137
    :cond_1
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 138
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->lock_settings_picker_title:I

    .line 139
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 75
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_show_unlock_set_or_change:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public onGearClick(Lcom/android/settings/widget/GearPreference;)V
    .locals 3

    .line 110
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 112
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 111
    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    .line 113
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/security/screenlock/ScreenLockSettings;

    .line 114
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/android/settings/widget/GearPreference;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    check-cast v0, Lcom/android/settings/widget/GearPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    check-cast v0, Lcom/android/settings/widget/GearPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    .line 99
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUserId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->updateSummary(Landroidx/preference/Preference;I)V

    .line 100
    iget p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUserId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->disableIfPasswordQualityManaged(I)V

    .line 101
    iget-object p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 104
    iget p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->disableIfPasswordQualityManaged(I)V

    :cond_2
    return-void
.end method

.method protected updateSummary(Landroidx/preference/Preference;I)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 148
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    sget p2, Lcom/android/settings/R$string;->unlock_set_unlock_mode_none:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 149
    :cond_1
    :goto_0
    sget p2, Lcom/android/settings/R$string;->unlock_set_unlock_mode_off:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p2

    const/high16 v0, 0x10000

    if-eq p2, v0, :cond_5

    const/high16 v0, 0x20000

    if-eq p2, v0, :cond_4

    const/high16 v0, 0x30000

    if-eq p2, v0, :cond_4

    const/high16 v0, 0x40000

    if-eq p2, v0, :cond_3

    const/high16 v0, 0x50000

    if-eq p2, v0, :cond_3

    const/high16 v0, 0x60000

    if-eq p2, v0, :cond_3

    const/high16 v0, 0x80000

    if-eq p2, v0, :cond_3

    goto :goto_1

    .line 166
    :cond_3
    sget p2, Lcom/android/settings/R$string;->unlock_set_unlock_mode_password:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 160
    :cond_4
    sget p2, Lcom/android/settings/R$string;->unlock_set_unlock_mode_pin:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 156
    :cond_5
    sget p2, Lcom/android/settings/R$string;->unlock_set_unlock_mode_pattern:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 170
    :goto_1
    iget-object p0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method
