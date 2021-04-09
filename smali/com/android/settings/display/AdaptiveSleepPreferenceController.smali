.class public Lcom/android/settings/display/AdaptiveSleepPreferenceController;
.super Ljava/lang/Object;
.source "AdaptiveSleepPreferenceController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    new-instance v0, Lcom/android/settings/bluetooth/RestrictionUtils;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/RestrictionUtils;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/RestrictionUtils;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/RestrictionUtils;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    .line 55
    new-instance p2, Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p2, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 56
    sget v0, Lcom/android/settings/R$string;->adaptive_sleep_title:I

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 57
    iget-object p2, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    sget v0, Lcom/android/settings/R$string;->adaptive_sleep_description:I

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 58
    iget-object p2, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    sget v0, Lcom/android/settings/R$drawable;->empty_icon:I

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setIcon(I)V

    .line 59
    iget-object p2, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 60
    iget-object p2, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string v0, "adaptive_sleep"

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    new-instance v0, Lcom/android/settings/display/-$$Lambda$AdaptiveSleepPreferenceController$3EuADL9wkzyZt2NU8_EyCRbDvOc;

    invoke-direct {v0, p1}, Lcom/android/settings/display/-$$Lambda$AdaptiveSleepPreferenceController$3EuADL9wkzyZt2NU8_EyCRbDvOc;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static hasSufficientPermission(Landroid/content/pm/PackageManager;)Z
    .locals 2

    .line 124
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.permission.CAMERA"

    .line 125
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isAttentionServiceAvailable(Landroid/content/Context;)Z
    .locals 4

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 116
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.service.attention.AttentionService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x100000

    .line 118
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 120
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static isControllerAvailable(Landroid/content/Context;)I
    .locals 2

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p0}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->isAttentionServiceAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;Landroidx/preference/Preference;)Z
    .locals 1

    .line 62
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adaptive_sleep"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addToScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->updatePreference()V

    .line 79
    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method isChecked()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->hasSufficientPermission(Landroid/content/pm/PackageManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adaptive_sleep"

    .line 97
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public updatePreference()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    iget-object v1, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "no_config_screen_timeout"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/RestrictionUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p0}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->hasSufficientPermission(Landroid/content/pm/PackageManager;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    :goto_0
    return-void
.end method
