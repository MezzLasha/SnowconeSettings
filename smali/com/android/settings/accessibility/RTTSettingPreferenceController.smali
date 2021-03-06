.class public Lcom/android/settings/accessibility/RTTSettingPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "RTTSettingPreferenceController.java"


# static fields
.field private static final DIALER_RTT_CONFIGURATION:Ljava/lang/String; = "dialer_rtt_configuration"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDialerPackage:Ljava/lang/String;

.field private final mModes:[Ljava/lang/CharSequence;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mRTTIntent:Landroid/content/Intent;

.field private final mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$array;->rtt_setting_mode:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->mModes:[Ljava/lang/CharSequence;

    .line 57
    sget p2, Lcom/android/settings/R$string;->config_rtt_setting_package_name:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->mDialerPackage:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 59
    const-class p2, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telecom/TelecomManager;

    iput-object p2, p0, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 60
    new-instance p2, Landroid/content/Intent;

    sget v0, Lcom/android/settings/R$string;->config_rtt_setting_intent_action:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->mRTTIntent:Landroid/content/Intent;

    return-void
.end method

.method private createTelephonyManagerFromSubId()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 120
    iget-object p0, p0, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 121
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 122
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method private getBooleanCarrierConfig(Ljava/lang/String;)Z
    .locals 1

    .line 103
    iget-object p0, p0, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/CarrierConfigManager;

    .line 104
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-nez p0, :cond_0

    .line 107
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 111
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 112
    invoke-virtual {p0, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 115
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    .line 116
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private isDialerSupportRTTSetting()Z
    .locals 3

    .line 88
    invoke-direct {p0}, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->createTelephonyManagerFromSubId()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isRttSupported()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "ignore_rtt_mode_setting_bool"

    .line 90
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 93
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->mDialerPackage:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 77
    iget-object p0, p0, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->mRTTIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->mRTTIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->isDialerSupportRTTSetting()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :goto_0
    return v2
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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialer_rtt_configuration"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 84
    iget-object p0, p0, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->mModes:[Ljava/lang/CharSequence;

    aget-object p0, p0, v0

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

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
