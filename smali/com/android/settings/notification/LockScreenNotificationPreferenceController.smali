.class public Lcom/android/settings/notification/LockScreenNotificationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "LockScreenNotificationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private mLockscreen:Lcom/android/settings/RestrictedListPreference;

.field private mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

.field private mLockscreenSelectedValue:I

.field private mLockscreenSelectedValueProfile:I

.field private final mProfileUserId:I

.field private final mSecure:Z

.field private final mSecureProfile:Z

.field private final mSettingKey:Ljava/lang/String;

.field private mSettingObserver:Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;

.field private final mWorkSettingCategoryKey:Ljava/lang/String;

.field private final mWorkSettingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 80
    iput-object p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSettingKey:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mWorkSettingCategoryKey:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mWorkSettingKey:Ljava/lang/String;

    .line 84
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    .line 85
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p3

    .line 86
    invoke-virtual {p3}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object p3

    .line 87
    invoke-interface {p3, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    .line 88
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSecure:Z

    const/16 p3, -0x2710

    if-eq p2, p3, :cond_0

    .line 89
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSecureProfile:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->updateLockscreenNotificationsForProfile()V

    return-void
.end method

.method private adminAllowsUnredactedNotifications(I)Z
    .locals 1

    .line 293
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    .line 294
    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getAllowPrivateNotifications(Landroid/content/Context;I)Z
    .locals 2

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_allow_private_notifications"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static getLockscreenNotificationsEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_show_notifications"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static getSummaryResource(Landroid/content/Context;)I
    .locals 3

    .line 271
    invoke-static {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->getLockscreenNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 272
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v1

    .line 274
    invoke-interface {v1, p0}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 275
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->getAllowPrivateNotifications(Landroid/content/Context;I)Z

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
    if-nez v0, :cond_2

    .line 278
    sget p0, Lcom/android/settings/R$string;->lock_screen_notifications_summary_disable:I

    goto :goto_2

    :cond_2
    if-eqz p0, :cond_3

    .line 279
    sget p0, Lcom/android/settings/R$string;->lock_screen_notifications_summary_show:I

    goto :goto_2

    .line 280
    :cond_3
    sget p0, Lcom/android/settings/R$string;->lock_screen_notifications_summary_hide:I

    :goto_2
    return p0
.end method

.method private initLockScreenNotificationPrefDisplay()V
    .locals 5

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->lock_screen_notifications_summary_show:I

    .line 118
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xc

    .line 123
    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 126
    iget-boolean v2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSecure:Z

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->lock_screen_notifications_summary_hide:I

    .line 128
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    .line 133
    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->lock_screen_notifications_summary_disable:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 143
    invoke-direct {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->updateLockscreenNotifications()V

    .line 145
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedListPreference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private initLockscreenNotificationPrefForProfile()V
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preference not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mWorkSettingKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LockScreenNotifPref"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->lock_screen_notifications_summary_show_profile:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xc

    .line 167
    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 170
    iget-boolean v2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSecureProfile:Z

    if-eqz v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->lock_screen_notifications_summary_hide_profile:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    .line 177
    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->updateLockscreenNotificationsForProfile()V

    .line 184
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 185
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedListPreference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 251
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 250
    invoke-static {v0, p3, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    if-eqz v1, :cond_0

    .line 253
    new-instance v1, Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/settings/RestrictedListPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->addRestrictedItem(Lcom/android/settings/RestrictedListPreference$RestrictedItem;)V

    .line 257
    :cond_0
    iget v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 259
    invoke-static {v1, p3, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    if-eqz v0, :cond_1

    .line 262
    new-instance v0, Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/RestrictedListPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 265
    iget-object p0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedListPreference;->addRestrictedItem(Lcom/android/settings/RestrictedListPreference$RestrictedItem;)V

    :cond_1
    return-void
.end method

.method private updateLockscreenNotifications()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->getSummaryResource(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenSelectedValue:I

    .line 288
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    iget p0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenSelectedValue:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private updateLockscreenNotificationsForProfile()V
    .locals 3

    .line 299
    iget v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    return-void

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    if-nez v1, :cond_1

    return-void

    .line 305
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->adminAllowsUnredactedNotifications(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSecureProfile:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    .line 306
    invoke-static {v0, v1}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->getAllowPrivateNotifications(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 307
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    const-string v2, "%s"

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_4

    .line 309
    sget v0, Lcom/android/settings/R$string;->lock_screen_notifications_summary_show_profile:I

    goto :goto_1

    .line 310
    :cond_4
    sget v0, Lcom/android/settings/R$string;->lock_screen_notifications_summary_hide_profile:I

    :goto_1
    iput v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenSelectedValueProfile:I

    .line 311
    iget-object p0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 94
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSettingKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/RestrictedListPreference;

    iput-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    if-nez v0, :cond_0

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Preference not found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSettingKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockScreenNotifPref"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 100
    :cond_0
    iget v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mWorkSettingKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/RestrictedListPreference;

    iput-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->setRequiresActiveUnlockedProfile(Z)V

    .line 103
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    iget v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->setProfileUserId(I)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mWorkSettingKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mWorkSettingCategoryKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 108
    :goto_0
    new-instance p1, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;-><init>(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;

    .line 109
    invoke-direct {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->initLockScreenNotificationPrefDisplay()V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->initLockscreenNotificationPrefForProfile()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 212
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 218
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 219
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mWorkSettingKey:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "lock_screen_allow_private_notifications"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 220
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 221
    iget p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenSelectedValueProfile:I

    if-ne p1, p2, :cond_0

    return v3

    .line 224
    :cond_0
    sget p2, Lcom/android/settings/R$string;->lock_screen_notifications_summary_show_profile:I

    if-ne p1, p2, :cond_1

    move v3, v2

    .line 225
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 227
    iget v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    .line 225
    invoke-static {p2, v1, v3, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 228
    iput p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenSelectedValueProfile:I

    return v2

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSettingKey:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 231
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 232
    iget p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenSelectedValue:I

    if-ne p1, p2, :cond_3

    return v3

    .line 235
    :cond_3
    sget p2, Lcom/android/settings/R$string;->lock_screen_notifications_summary_disable:I

    if-eq p1, p2, :cond_4

    move p2, v2

    goto :goto_0

    :cond_4
    move p2, v3

    .line 236
    :goto_0
    sget v0, Lcom/android/settings/R$string;->lock_screen_notifications_summary_show:I

    if-ne p1, v0, :cond_5

    move v3, v2

    .line 237
    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_show_notifications"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    iput p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenSelectedValue:I

    return v2

    :cond_6
    return v3
.end method

.method public onResume()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 205
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method
