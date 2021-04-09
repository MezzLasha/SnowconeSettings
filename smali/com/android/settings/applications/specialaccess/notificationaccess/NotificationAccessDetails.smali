.class public Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NotificationAccessDetails.java"


# instance fields
.field protected mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected mAppsControlDisallowedBySystem:Z

.field private mComponentName:Landroid/content/ComponentName;

.field private mIsNls:Z

.field protected mPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mServiceName:Ljava/lang/CharSequence;

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public disable(Landroid/content/ComponentName;)V
    .locals 2

    .line 174
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 175
    const-class v1, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    .line 176
    invoke-virtual {v1, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->disable(Landroid/content/ComponentName;)V

    .line 177
    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 178
    const-class p1, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method protected enable(Landroid/content/ComponentName;)V
    .locals 2

    .line 183
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 184
    const-class v1, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    .line 185
    invoke-virtual {v1, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->enable(Landroid/content/ComponentName;)V

    .line 186
    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 187
    const-class p1, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NotifAccessDetails"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x70c

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 217
    sget p0, Lcom/android/settings/R$xml;->notification_access_permission_details:I

    return p0
.end method

.method protected loadNotificationListenerService()V
    .locals 4

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mIsNls:Z

    .line 195
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.notification.NotificationListenerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x84

    iget v3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 203
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 204
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v3, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mIsNls:Z

    .line 208
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mServiceName:Ljava/lang/CharSequence;

    :cond_2
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "android.provider.extra.NOTIFICATION_LISTENER_COMPONENT_NAME"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->retrieveAppEntry()V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->loadNotificationListenerService()V

    .line 82
    const-class v0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 83
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->setPkgInfo(Landroid/content/pm/PackageInfo;)Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->setCn(Landroid/content/ComponentName;)Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    .line 85
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->setNm(Landroid/app/NotificationManager;)Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->setPm(Landroid/content/pm/PackageManager;)Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;->setParent(Landroidx/preference/PreferenceFragmentCompat;)Lcom/android/settings/applications/specialaccess/notificationaccess/ApprovalPreferenceController;

    .line 88
    const-class v0, Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;

    .line 89
    invoke-virtual {v0, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;->setFragment(Lcom/android/settings/dashboard/DashboardFragment;)Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 90
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;->setPackageInfo(Landroid/content/pm/PackageInfo;)Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;->setPm(Landroid/content/pm/PackageManager;)Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mServiceName:Ljava/lang/CharSequence;

    .line 92
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;->setServiceName(Ljava/lang/CharSequence;)Lcom/android/settings/applications/specialaccess/notificationaccess/HeaderPreferenceController;

    .line 93
    const-class p1, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    .line 94
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->setNm(Lcom/android/settings/notification/NotificationBackend;)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    .line 95
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->setCn(Landroid/content/ComponentName;)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    .line 96
    invoke-virtual {p1, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->setUserId(I)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 125
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    const-string v2, "no_control_apps"

    .line 126
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    .line 128
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mAppsControlDisallowedBySystem:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->setIntentAndFinish(Z)V

    :cond_0
    return-void
.end method

.method protected refreshUi()Z
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x0

    const-string v2, "NotifAccessDetails"

    if-nez v0, :cond_0

    const-string p0, "No component name provided"

    .line 107
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 110
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mIsNls:Z

    if-nez v0, :cond_1

    const-string p0, "Provided component name is not an NLS"

    .line 112
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 115
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "NLSes aren\'t allowed in work profiles"

    .line 117
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method protected retrieveAppEntry()V
    .locals 4

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "package"

    .line 146
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 149
    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 151
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageName:Ljava/lang/String;

    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "android.intent.extra.user_handle"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 156
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    goto :goto_2

    .line 158
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    .line 162
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageName:Ljava/lang/String;

    const v2, 0x8001200

    iget v3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when retrieving package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NotifAccessDetails"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method protected setIntentAndFinish(Z)V
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifAccessDetails"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "chg"

    .line 139
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    const/4 p1, -0x1

    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(ILandroid/content/Intent;)V

    return-void
.end method
