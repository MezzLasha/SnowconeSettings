.class public Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "EnabledNetworkModePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;,
        Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EnabledNetworkMode"


# instance fields
.field private mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mPreference:Landroidx/preference/Preference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$init$0()V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updatePreference()V

    return-void
.end method

.method private updatePreference()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
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

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 108
    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 2

    .line 70
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    move p0, v0

    goto :goto_1

    :cond_1
    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "hide_carrier_network_settings_bool"

    .line 75
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "hide_preferred_network_type_bool"

    .line 77
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "world_phone_bool"

    .line 80
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x2

    :goto_2
    return v0
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

.method public init(Landroidx/lifecycle/Lifecycle;I)V
    .locals 2

    .line 142
    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 143
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 144
    invoke-virtual {p2, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 145
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 146
    new-instance p2, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-direct {p2, p0, v0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;-><init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    .line 148
    iget-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    if-nez p2, :cond_0

    .line 149
    new-instance p2, Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    new-instance v0, Landroid/os/Handler;

    .line 150
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, v0}, Lcom/android/settings/network/PreferredNetworkModeContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    .line 151
    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$EnabledNetworkModePreferenceController$tSlLD72flTgSALgZryOivzZ_JRs;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/-$$Lambda$EnabledNetworkModePreferenceController$tSlLD72flTgSALgZryOivzZ_JRs;-><init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)V

    invoke-virtual {p2, v0}, Lcom/android/settings/network/PreferredNetworkModeContentObserver;->setPreferredNetworkModeChangedListener(Lcom/android/settings/network/PreferredNetworkModeContentObserver$OnPreferredNetworkModeChangedListener;)V

    .line 155
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
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

.method public synthetic lambda$init$0$EnabledNetworkModePreferenceController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->lambda$init$0()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 128
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 129
    check-cast p1, Landroidx/preference/ListPreference;

    .line 131
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 132
    invoke-static {p2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getRafFromNetworkType(I)J

    move-result-wide v1

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setPreferredNetworkTypeBitmask(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-virtual {v0, p2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setPreferenceValueAndSummary(I)V

    .line 134
    iget-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {p2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->access$300(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 135
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->access$400(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/PreferredNetworkModeContentObserver;->register(Landroid/content/Context;I)V

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/PreferredNetworkModeContentObserver;->unregister(Landroid/content/Context;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 115
    check-cast p1, Landroidx/preference/ListPreference;

    .line 117
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setPreferenceEntries()V

    .line 118
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->access$000(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->access$100(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->access$200(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->access$300(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 123
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->access$400(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
