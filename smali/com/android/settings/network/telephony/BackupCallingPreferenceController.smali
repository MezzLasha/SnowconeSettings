.class public Lcom/android/settings/network/telephony/BackupCallingPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "BackupCallingPreferenceController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BackupCallingPrefCtrl"


# instance fields
.field private mPreference:Landroidx/preference/Preference;

.field private mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;
    .locals 3

    .line 146
    iget v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/ims/ImsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsManager;

    if-nez v0, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    iget p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mSubId:I

    invoke-virtual {v0, p0}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getLatestSummary()Ljava/lang/String;
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->getSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    const-string v0, ""

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 158
    :cond_0
    iget p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mSubId:I

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private hasBackupCallingFeature(I)Z
    .locals 1

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string v0, "carrier_cross_sim_ims_available_bool"

    .line 141
    invoke-virtual {p0, v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private updateSummary(Ljava/lang/String;)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->backup_calling_setting_summary:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 131
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    .line 135
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->hasBackupCallingFeature(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
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

.method public init(I)Lcom/android/settings/network/telephony/BackupCallingPreferenceController;
    .locals 0

    .line 63
    iput p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mSubId:I

    return-object p0
.end method

.method public isChecked()Z
    .locals 3

    .line 94
    invoke-direct {p0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 99
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsMmTelManager;->isCrossSimCallingEnabledByUser()Z

    move-result p0
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "BackupCallingPrefCtrl"

    const-string v2, "fail to get cross SIM calling configuration"

    .line 101
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 76
    invoke-direct {p0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 81
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsMmTelManager;->setCrossSimCallingEnabled(Z)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to change cross SIM calling configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BackupCallingPrefCtrl"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-eqz p1, :cond_1

    .line 109
    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 114
    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 117
    invoke-direct {p0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->getLatestSummary()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->updateSummary(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
