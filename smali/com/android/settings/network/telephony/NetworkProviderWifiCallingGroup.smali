.class public Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NetworkProviderWifiCallingGroup.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;


# instance fields
.field protected mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private mPreferenceGroupKey:Ljava/lang/String;

.field private mSimCallManagerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mSubIdList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManagerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/TelephonyManager;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiCallingForSubPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mTelephonyManagerList:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSimCallManagerList:Ljava/util/Map;

    .line 77
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubIdList:Ljava/util/Set;

    .line 83
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 84
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 86
    iput-object p3, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroupKey:Ljava/lang/String;

    .line 87
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mWifiCallingForSubPreferences:Ljava/util/Map;

    .line 88
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->setSubscriptionInfoList(Landroid/content/Context;)V

    return-void
.end method

.method private getTelephonyManagerForSubscriptionId(I)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mTelephonyManagerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private isWifiCallingAvailableForCarrier(I)Z
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_0

    .line 263
    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "carrier_wfc_ims_available_bool"

    .line 265
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setSubscriptionInfoForPreference$0(Landroid/telephony/SubscriptionInfo;Landroidx/preference/Preference;)Z
    .locals 2

    .line 211
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/Settings$WifiCallingSettingsActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    const-string v0, "android.provider.extra.SUB_ID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method private setPhoneAccountHandleForSubscriptionId(Landroid/content/Context;I)V
    .locals 1

    .line 110
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    .line 111
    invoke-virtual {p1, p2}, Landroid/telecom/TelecomManager;->getSimCallManagerForSubscription(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    .line 112
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSimCallManagerList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSubscriptionInfoForPreference(Ljava/util/List;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .line 184
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/16 v0, 0xa

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 185
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 187
    invoke-virtual {p0, v2}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->shouldShowWifiCallingForSub(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    if-nez v3, :cond_1

    .line 193
    new-instance v3, Landroidx/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 194
    iget-object v4, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 197
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 198
    invoke-virtual {p0, v2}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 199
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {p0, v2}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    .line 199
    invoke-static {v5, v7}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->buildPhoneAccountConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 202
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 203
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 204
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v7, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 205
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 209
    :cond_2
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    new-instance v4, Lcom/android/settings/network/telephony/-$$Lambda$NetworkProviderWifiCallingGroup$ayOGpMiCKsmihzWGlAPaCFWDRVw;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/network/telephony/-$$Lambda$NetworkProviderWifiCallingGroup$ayOGpMiCKsmihzWGlAPaCFWDRVw;-><init>(Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;Landroid/telephony/SubscriptionInfo;)V

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 219
    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->getTelephonyManagerForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v6, 0x1

    :cond_3
    invoke-virtual {v3, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v1, v0, 0x1

    .line 221
    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 222
    sget v0, Lcom/android/settings/R$string;->calls_sms_wfc_summary:I

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mWifiCallingForSubPreferences:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private setSubscriptionInfoList(Landroid/content/Context;)V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 96
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 97
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubIdList:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-direct {p0, p1, v1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->setTelephonyManagerForSubscriptionId(Landroid/content/Context;I)V

    .line 99
    invoke-direct {p0, p1, v1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->setPhoneAccountHandleForSubscriptionId(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setTelephonyManagerForSubscriptionId(Landroid/content/Context;I)V
    .locals 1

    .line 104
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 105
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 106
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mTelephonyManagerList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private update()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->setSubscriptionInfoList(Landroid/content/Context;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mWifiCallingForSubPreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 164
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 166
    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mWifiCallingForSubPreferences:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mWifiCallingForSubPreferences:Ljava/util/Map;

    .line 171
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mWifiCallingForSubPreferences:Ljava/util/Map;

    .line 172
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v1}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v1

    .line 174
    invoke-direct {p0, v1, v0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->setSubscriptionInfoForPreference(Ljava/util/List;Ljava/util/Map;)V

    .line 176
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 177
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 142
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->update()V

    return-void
.end method

.method protected getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSimCallManagerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "provider_model_wfc_group"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 136
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubIdList:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$setSubscriptionInfoForPreference$0$NetworkProviderWifiCallingGroup(Landroid/telephony/SubscriptionInfo;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->lambda$setSubscriptionInfoForPreference$0(Landroid/telephony/SubscriptionInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 131
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->update()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->update()V

    return-void
.end method

.method protected queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;
    .locals 1

    .line 126
    new-instance v0, Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected shouldShowWifiCallingForSub(I)Z
    .locals 3

    .line 249
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 251
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    move-result-object v1

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 250
    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWifiCallingEnabled(Landroid/content/Context;ILcom/android/settings/network/ims/WifiCallingQueryImsState;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->isWifiCallingAvailableForCarrier(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 147
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->update()V

    return-void
.end method
