.class public Lcom/android/settings/applications/AppsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppsPreferenceController.java"


# static fields
.field static final KEY_ALL_APP_INFO:Ljava/lang/String; = "all_app_infos"

.field static final KEY_GENERAL_CATEGORY:Ljava/lang/String; = "general_category"

.field static final KEY_RECENT_APPS_CATEGORY:Ljava/lang/String; = "recent_apps_category"

.field static final KEY_SEE_ALL:Ljava/lang/String; = "see_all_apps"

.field public static final SHOW_RECENT_APP_COUNT:I = 0x4


# instance fields
.field mAllAppsInfoPref:Landroidx/preference/Preference;

.field private final mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field mGeneralCategory:Landroidx/preference/PreferenceCategory;

.field private mHost:Landroidx/fragment/app/Fragment;

.field mRecentApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

.field mSeeAllPref:Landroidx/preference/Preference;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "recent_apps_category"

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 79
    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 81
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/AppsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/AppsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private displayRecentApps()V
    .locals 14

    .line 158
    iget-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_6

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 160
    iget-object v1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 162
    iget-object v4, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 163
    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "see_all_apps"

    .line 164
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 165
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    .line 171
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 172
    iget-object v6, p0, Lcom/android/settings/applications/AppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget v7, p0, Lcom/android/settings/applications/AppsPreferenceController;->mUserId:I

    .line 173
    invoke-virtual {v6, v5, v7}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 179
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/preference/Preference;

    if-nez v7, :cond_3

    .line 181
    new-instance v7, Lcom/android/settingslib/widget/AppPreference;

    iget-object v8, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    move v8, v2

    goto :goto_2

    :cond_3
    const/4 v8, 0x1

    .line 185
    :goto_2
    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 186
    iget-object v9, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v9, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v10, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v9, v10}, Lcom/android/settingslib/Utils;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object v9, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-double v10, v10

    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 188
    invoke-static {v9, v10, v11, v2, v4}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZLandroid/icu/text/RelativeDateTimeFormatter$Style;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, v3, 0x1

    .line 191
    invoke-virtual {v7, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 192
    new-instance v3, Lcom/android/settings/applications/-$$Lambda$AppsPreferenceController$fWWgEZunQxe7ZGFqyfy33XyNnSA;

    invoke-direct {v3, p0, v5, v6}, Lcom/android/settings/applications/-$$Lambda$AppsPreferenceController$fWWgEZunQxe7ZGFqyfy33XyNnSA;-><init>(Lcom/android/settings/applications/AppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v7, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    if-nez v8, :cond_4

    .line 200
    iget-object v3, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_4
    move v3, v4

    goto :goto_1

    .line 205
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 206
    iget-object v2, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_6
    return-void
.end method

.method private initPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "recent_apps_category"

    .line 147
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "general_category"

    .line 148
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mGeneralCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "all_app_infos"

    .line 149
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mAllAppsInfoPref:Landroidx/preference/Preference;

    const-string v0, "see_all_apps"

    .line 150
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    .line 151
    iget-object p1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 152
    iget-object p1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mGeneralCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 153
    iget-object p1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mAllAppsInfoPref:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 154
    iget-object p0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private synthetic lambda$displayRecentApps$0(Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z
    .locals 7

    .line 193
    const-class v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    sget v1, Lcom/android/settings/R$string;->application_info_label:I

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings/applications/AppsPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result v6

    const/16 v5, 0x3e9

    move-object v2, p1

    .line 193
    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroidx/fragment/app/Fragment;II)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppsPreferenceController;->initPreferences(Landroidx/preference/PreferenceScreen;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/applications/AppsPreferenceController;->refreshUi()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

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

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$displayRecentApps$0$AppsPreferenceController(Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/AppsPreferenceController;->lambda$displayRecentApps$0(Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method loadAllAppsCount()V
    .locals 4

    .line 123
    new-instance v0, Lcom/android/settings/applications/AppsPreferenceController$1;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/settings/applications/AppsPreferenceController$1;-><init>(Lcom/android/settings/applications/AppsPreferenceController;Landroid/content/Context;ILandroid/content/pm/PackageManager;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 135
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method loadRecentApps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Lcom/android/settings/applications/RecentAppStatsMixin;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/RecentAppStatsMixin;-><init>(Landroid/content/Context;I)V

    .line 142
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RecentAppStatsMixin;->loadDisplayableRecentApps(I)V

    .line 143
    iget-object p0, v0, Lcom/android/settings/applications/RecentAppStatsMixin;->mRecentApps:Ljava/util/List;

    return-object p0
.end method

.method refreshUi()V
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/applications/AppsPreferenceController;->loadAllAppsCount()V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/applications/AppsPreferenceController;->loadRecentApps()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentApps:Ljava/util/List;

    .line 110
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/android/settings/applications/AppsPreferenceController;->displayRecentApps()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mGeneralCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 114
    iget-object p0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mAllAppsInfoPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/applications/AppsPreferenceController;->refreshUi()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
