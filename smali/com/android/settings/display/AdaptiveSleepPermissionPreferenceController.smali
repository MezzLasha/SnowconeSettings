.class public Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;
.super Ljava/lang/Object;
.source "AdaptiveSleepPermissionPreferenceController.java"


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPreference:Landroidx/preference/Preference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 44
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 47
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 48
    sget v2, Lcom/android/settings/R$string;->adaptive_sleep_title_no_permission:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mPreference:Landroidx/preference/Preference;

    sget v2, Lcom/android/settings/R$string;->adaptive_sleep_summary_no_permission:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 50
    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mPreference:Landroidx/preference/Preference;

    sget v2, Lcom/android/settings/R$drawable;->ic_info_outline_24:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setIcon(I)V

    .line 51
    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mPreference:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/display/-$$Lambda$AdaptiveSleepPermissionPreferenceController$P_dAaSIzWjbNao4bkeoIhvrPFDY;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/display/-$$Lambda$AdaptiveSleepPermissionPreferenceController$P_dAaSIzWjbNao4bkeoIhvrPFDY;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addToScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->hasSufficientPermission(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public updateVisibility()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p0}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->hasSufficientPermission(Landroid/content/pm/PackageManager;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
