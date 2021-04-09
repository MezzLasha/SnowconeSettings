.class public Lcom/android/settings/applications/managedomainurls/DomainAppPreference;
.super Lcom/android/settingslib/widget/AppPreference;
.source "DomainAppPreference.java"


# instance fields
.field private final mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private final mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/IconDrawableFactory;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mPm:Landroid/content/pm/PackageManager;

    .line 41
    iput-object p3, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 42
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->setState()V

    return-void
.end method

.method private getDomainsSummary(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mPm:Landroid/content/pm/PackageManager;

    .line 66
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 68
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->domain_urls_summary_none:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->domain_urls_summary_none:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 76
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->domain_urls_summary_one:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 78
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->domain_urls_summary_some:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setState()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->getDomainsSummary(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method public reuse()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->setState()V

    .line 49
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
