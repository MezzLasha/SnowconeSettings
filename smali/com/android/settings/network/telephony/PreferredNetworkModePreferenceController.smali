.class public Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "PreferredNetworkModePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mIsGlobalCdma:Z

.field private mPersistableBundle:Landroid/os/PersistableBundle;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    return-void
.end method

.method private getPreferredNetworkMode()I
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferred_network_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v1, Landroid/telephony/TelephonyManager;->DEFAULT_PREFERRED_NETWORK_MODE:I

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getPreferredNetworkModeSummaryResId(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 191
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_global_summary:I

    return p0

    .line 189
    :pswitch_0
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_tdscdma_cdma_evdo_gsm_wcdma_summary:I

    return p0

    .line 187
    :pswitch_1
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_tdscdma_gsm_wcdma_summary:I

    return p0

    .line 185
    :pswitch_2
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_tdscdma_wcdma_summary:I

    return p0

    .line 183
    :pswitch_3
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_tdscdma_gsm_summary:I

    return p0

    .line 181
    :pswitch_4
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_tdscdma_summary:I

    return p0

    .line 179
    :pswitch_5
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_wcdma_summary:I

    return p0

    .line 177
    :pswitch_6
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_global_summary:I

    return p0

    .line 175
    :pswitch_7
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_gsm_wcdma_summary:I

    return p0

    .line 173
    :pswitch_8
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_cdma_evdo_summary:I

    return p0

    .line 171
    :pswitch_9
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_summary:I

    return p0

    .line 169
    :pswitch_a
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_only_summary:I

    return p0

    .line 151
    :pswitch_b
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_tdscdma_cdma_evdo_gsm_wcdma_summary:I

    return p0

    .line 161
    :pswitch_c
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_tdscdma_cdma_evdo_gsm_wcdma_summary:I

    return p0

    .line 143
    :pswitch_d
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_tdscdma_gsm_wcdma_summary:I

    return p0

    .line 165
    :pswitch_e
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_tdscdma_wcdma_summary:I

    return p0

    .line 115
    :pswitch_f
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_tdscdma_gsm_wcdma_summary:I

    return p0

    .line 141
    :pswitch_10
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_tdscdma_gsm_summary:I

    return p0

    .line 117
    :pswitch_11
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_tdscdma_gsm_summary:I

    return p0

    .line 137
    :pswitch_12
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_tdscdma_summary:I

    return p0

    .line 123
    :pswitch_13
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_tdscdma_wcdma_summary:I

    return p0

    .line 149
    :pswitch_14
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_tdscdma_summary:I

    return p0

    .line 167
    :pswitch_15
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_wcdma_summary:I

    return p0

    .line 139
    :pswitch_16
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_summary:I

    return p0

    .line 153
    :pswitch_17
    iget-object p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 155
    invoke-static {p1, p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_summary:I

    return p0

    .line 156
    :cond_1
    :goto_0
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_cdma_evdo_gsm_wcdma_summary:I

    return p0

    .line 145
    :pswitch_18
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_gsm_wcdma_summary:I

    return p0

    .line 147
    :pswitch_19
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_cdma_evdo_summary:I

    return p0

    .line 163
    :pswitch_1a
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_cdma_evdo_gsm_wcdma_summary:I

    return p0

    .line 135
    :pswitch_1b
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_evdo_only_summary:I

    return p0

    .line 133
    :pswitch_1c
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_cdma_only_summary:I

    return p0

    .line 129
    :pswitch_1d
    iget-object p0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isLteCdmaEvdoGsmWcdmaEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 130
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_cdma_summary:I

    goto :goto_1

    .line 131
    :cond_2
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_cdma_evdo_summary:I

    :goto_1
    return p0

    .line 127
    :pswitch_1e
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_gsm_wcdma_summary:I

    return p0

    .line 125
    :pswitch_1f
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_wcdma_only_summary:I

    return p0

    .line 121
    :pswitch_20
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_gsm_only_summary:I

    return p0

    .line 119
    :pswitch_21
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_wcdma_perf_summary:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 2

    .line 50
    iget-object p0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

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

    .line 56
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "hide_preferred_network_type_bool"

    .line 58
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "world_phone_bool"

    .line 61
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
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

.method public init(I)V
    .locals 2

    .line 97
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 98
    iget-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 100
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 102
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isLteCdmaEvdoGsmWcdmaEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "show_cdma_choices_bool"

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsGlobalCdma:Z

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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 81
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 83
    iget-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 84
    invoke-static {p2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getRafFromNetworkType(I)J

    move-result-wide v1

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setPreferredNetworkTypeBitmask(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferred_network_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    check-cast p1, Landroidx/preference/ListPreference;

    .line 89
    invoke-direct {p0, p2}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->getPreferredNetworkModeSummaryResId(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 73
    check-cast p1, Landroidx/preference/ListPreference;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->getPreferredNetworkMode()I

    move-result v0

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->getPreferredNetworkModeSummaryResId(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
