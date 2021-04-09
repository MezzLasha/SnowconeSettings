.class public abstract Lcom/android/settings/network/telephony/DefaultSubscriptionController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "DefaultSubscriptionController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;


# static fields
.field private static final EMERGENCY_ACCOUNT_HANDLE_ID:Ljava/lang/String; = "E"

.field private static final PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "DefaultSubController"


# instance fields
.field protected mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field protected mManager:Landroid/telephony/SubscriptionManager;

.field protected mPreference:Landroidx/preference/ListPreference;

.field protected mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.services.telephony.TelephonyConnectionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mManager:Landroid/telephony/SubscriptionManager;

    .line 69
    new-instance p2, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    return-void
.end method

.method private updateEntries()V
    .locals 9

    .line 140
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 144
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    .line 158
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 161
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 162
    iget-object v2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 163
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 167
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getDefaultSubscriptionId()I

    move-result v5

    .line 170
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v6, v1

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    .line 171
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_0

    .line 174
    :cond_4
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    .line 176
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v7, v5, :cond_3

    move v6, v2

    goto :goto_0

    .line 182
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->isAskEverytimeSupported()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_6

    .line 184
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->calls_and_sms_ask_every_time:I

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_6
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    new-array v7, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    if-eqz v6, :cond_7

    .line 192
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :cond_7
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    .line 116
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateEntries()V

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    .line 93
    iget-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

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

.method public getDefaultCallingAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 5

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    move-result-object p0

    .line 211
    new-instance v2, Landroid/telecom/PhoneAccountHandle;

    sget-object v3, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    const-string v4, "E"

    invoke-direct {v2, v3, v4}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, v2}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 216
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 217
    invoke-virtual {v0, v2}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_3
    return-object v1
.end method

.method protected abstract getDefaultSubscriptionId()I
.end method

.method protected abstract getDefaultSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getLabelFromCallingAccount(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/CharSequence;
    .locals 1

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 263
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getDefaultCallingAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->isCallingAccountBindToSubscription(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getLabelFromCallingAccount(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getDefaultSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->isAskEverytimeSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->calls_and_sms_ask_every_time:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 229
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 73
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method protected isAskEverytimeSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isCallingAccountBindToSubscription(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 0

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p1, 0x4

    .line 247
    invoke-virtual {p0, p1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

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

.method public onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 109
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 270
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->setDefaultSubscription(I)V

    .line 272
    iget-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 104
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateEntries()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateEntries()V

    .line 284
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method protected abstract setDefaultSubscription(I)V
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
