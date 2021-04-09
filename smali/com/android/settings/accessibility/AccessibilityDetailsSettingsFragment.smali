.class public Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "AccessibilityDetailsSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment$LaunchFragmentArguments;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private buildArguments(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/os/Bundle;
    .locals 9

    .line 171
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 174
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 175
    new-instance v4, Landroid/content/ComponentName;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 179
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_0

    .line 182
    iget-boolean v6, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    if-eqz v6, :cond_0

    .line 184
    sget v5, Lcom/android/settings/R$string;->accessibility_description_state_stopped:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 187
    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 189
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "preference_key"

    .line 188
    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "checked"

    .line 190
    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "title"

    .line 191
    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "resolve_info"

    .line 192
    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "summary"

    .line 193
    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    sget v1, Lcom/android/settings/R$string;->accessibility_menu_item_settings:I

    .line 198
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "settings_title"

    .line 197
    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings_component_name"

    .line 199
    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "component_name"

    .line 202
    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 203
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getAnimatedImageRes()I

    move-result v0

    const-string v1, "animated_image_res"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "html_description"

    .line 206
    invoke-virtual {v6, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private finish()V
    .locals 0

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getAccessibilityServiceInfo(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 156
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object p0

    .line 158
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 160
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 161
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 162
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getSystemAccessibilitySettingsLaunchArguments(Landroid/content/ComponentName;)Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment$LaunchFragmentArguments;
    .locals 1

    .line 97
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    const-class p1, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 100
    invoke-static {v0, p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 102
    new-instance p0, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment$LaunchFragmentArguments;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment$LaunchFragmentArguments;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private openAccessibilityDetailsSettingsAndFinish(Landroid/content/ComponentName;)Z
    .locals 3

    .line 116
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;->getAccessibilityServiceInfo(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "A11yDetailsSettings"

    if-nez v0, :cond_0

    const-string p0, "openAccessibilityDetailsSettingsAndFinish : invalid component name."

    .line 118
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;->isServiceAllowed(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "openAccessibilityDetailsSettingsAndFinish: target accessibility service isprohibited by Device Admin."

    .line 124
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 129
    :cond_1
    const-class p1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;->buildArguments(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/os/Bundle;

    move-result-object v0

    .line 129
    invoke-direct {p0, p1, v0}, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;->openSubSettings(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 131
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method private openAccessibilitySettingsAndFinish()V
    .locals 2

    .line 109
    const-class v0, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;->openSubSettings(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;->finish()V

    return-void
.end method

.method private openSubSettings(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 136
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 139
    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private openSystemAccessibilitySettingsAndFinish(Landroid/content/ComponentName;)Z
    .locals 1

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;->getSystemAccessibilitySettingsLaunchArguments(Landroid/content/ComponentName;)Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment$LaunchFragmentArguments;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 89
    :cond_0
    iget-object v0, p1, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment$LaunchFragmentArguments;->mDestination:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment$LaunchFragmentArguments;->mArguments:Landroid/os/Bundle;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;->openSubSettings(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 90
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;->finish()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x692

    return p0
.end method

.method isServiceAllowed(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 147
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 146
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 148
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "A11yDetailsSettings"

    const-string v0, "Open accessibility services list due to no component name."

    .line 65
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;->openAccessibilitySettingsAndFinish()V

    return-void

    .line 70
    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;->openSystemAccessibilitySettingsAndFinish(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 75
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;->openAccessibilityDetailsSettingsAndFinish(Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 79
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;->openAccessibilitySettingsAndFinish()V

    return-void
.end method
