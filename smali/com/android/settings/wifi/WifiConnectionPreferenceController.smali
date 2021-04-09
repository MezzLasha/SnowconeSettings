.class public Lcom/android/settings/wifi/WifiConnectionPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiConnectionPreferenceController.java"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiConnectionPreferenceController$UpdateListener;
    }
.end annotation


# instance fields
.field private mMetricsCategory:I

.field private mPrefContext:Landroid/content/Context;

.field private mPreference:Lcom/android/settingslib/wifi/WifiEntryPreference;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private mPreferenceGroupKey:Ljava/lang/String;

.field private mUpdateListener:Lcom/android/settings/wifi/WifiConnectionPreferenceController$UpdateListener;

.field public mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private order:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/wifi/WifiConnectionPreferenceController$UpdateListener;Ljava/lang/String;II)V
    .locals 12

    move-object v11, p0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    move-object v1, p2

    .line 100
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    move-object v0, p3

    .line 101
    iput-object v0, v11, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mUpdateListener:Lcom/android/settings/wifi/WifiConnectionPreferenceController$UpdateListener;

    move-object/from16 v0, p4

    .line 102
    iput-object v0, v11, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreferenceGroupKey:Ljava/lang/String;

    move/from16 v0, p5

    .line 103
    iput v0, v11, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->order:I

    move/from16 v0, p6

    .line 104
    iput v0, v11, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mMetricsCategory:I

    .line 106
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiConnPrefCtrl{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, v11, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mWorkerThread:Landroid/os/HandlerThread;

    .line 109
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v5, Lcom/android/settings/wifi/WifiConnectionPreferenceController$1;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/wifi/WifiConnectionPreferenceController$1;-><init>(Lcom/android/settings/wifi/WifiConnectionPreferenceController;Ljava/time/ZoneId;)V

    .line 116
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProvider;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    .line 119
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v2, v11, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mWorkerThread:Landroid/os/HandlerThread;

    .line 120
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x3a98

    const-wide/16 v8, 0x2710

    move-object v2, p1

    move-object v10, p0

    .line 118
    invoke-interface/range {v0 .. v10}, Lcom/android/settings/wifi/WifiTrackerLibProvider;->createWifiPickerTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)Lcom/android/wifitrackerlib/WifiPickerTracker;

    move-result-object v0

    iput-object v0, v11, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    return-void
.end method

.method private synthetic lambda$updatePreference$0(Lcom/android/wifitrackerlib/WifiEntry;Landroidx/preference/Preference;)Z
    .locals 1

    .line 167
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 169
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_chosen_wifientry_key"

    .line 168
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->pref_title_network_details:I

    .line 171
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const-class v0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;

    .line 172
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 173
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mMetricsCategory:I

    .line 174
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method private update()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->updatePreference(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_1

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/WifiEntryPreference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/WifiEntryPreference;

    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiEntryPreference;->refresh()V

    goto :goto_1

    .line 187
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->updatePreference(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 192
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mUpdateListener:Lcom/android/settings/wifi/WifiConnectionPreferenceController$UpdateListener;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConnectionPreferenceController$UpdateListener;->onChildrenUpdated()V

    return-void
.end method

.method private updatePreference(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/WifiEntryPreference;

    if-eqz v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/WifiEntryPreference;

    :cond_0
    if-eqz p1, :cond_2

    .line 158
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPrefContext:Landroid/content/Context;

    if-nez v0, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    new-instance v0, Lcom/android/settingslib/wifi/WifiEntryPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settingslib/wifi/WifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/WifiEntryPreference;

    const-string v1, "active_wifi_connection"

    .line 163
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/WifiEntryPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiEntryPreference;->refresh()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/WifiEntryPreference;

    iget v1, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->order:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/WifiEntryPreference;

    new-instance v1, Lcom/android/settings/wifi/-$$Lambda$WifiConnectionPreferenceController$zIQq31KBy31qJaZftu7Z62JQrfs;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$WifiConnectionPreferenceController$zIQq31KBy31qJaZftu7Z62JQrfs;-><init>(Lcom/android/settings/wifi/WifiConnectionPreferenceController;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 178
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/WifiEntryPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 147
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreferenceGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 149
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPrefContext:Landroid/content/Context;

    .line 150
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->update()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "active_wifi_connection"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$updatePreference$0$WifiConnectionPreferenceController(Lcom/android/wifitrackerlib/WifiEntry;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->lambda$updatePreference$0(Lcom/android/wifitrackerlib/WifiEntry;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 132
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public onNumSavedNetworksChanged()V
    .locals 0

    return-void
.end method

.method public onNumSavedSubscriptionsChanged()V
    .locals 0

    return-void
.end method

.method public onWifiEntriesChanged()V
    .locals 0

    .line 206
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->update()V

    return-void
.end method

.method public onWifiStateChanged()V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->update()V

    return-void
.end method
