.class public Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;
.super Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;
.source "BluetoothCodecDialogPreferenceController.java"


# instance fields
.field private final mCallback:Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController$Callback;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    .line 49
    iput-object p4, p0, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;->mCallback:Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController$Callback;

    return-void
.end method

.method private getIndexFromConfig([Landroid/bluetooth/BluetoothCodecConfig;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 160
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 161
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;->convertCfgToBtnIndex(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method convertCfgToBtnIndex(I)I
    .locals 4

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getDefaultIndex()I

    move-result p0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported config:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtCodecCtr"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    goto :goto_0

    :cond_1
    move p0, v0

    goto :goto_0

    :cond_2
    move p0, v1

    goto :goto_0

    :cond_3
    move p0, v2

    goto :goto_0

    :cond_4
    move p0, v3

    :goto_0
    return p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 60
    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->setCallback(Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference$Callback;)V

    return-void
.end method

.method protected getCurrentIndexByConfig(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "BtCodecCtr"

    const-string v1, "Unable to get current config index. Config is null."

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;->convertCfgToBtnIndex(I)I

    move-result p0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_audio_codec_settings"

    return-object p0
.end method

.method public getSelectableIndex()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getDefaultIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_0

    return-object v0

    .line 80
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "BtCodecCtr"

    const-string v1, "Unable to get selectable index. No Active Bluetooth device"

    .line 82
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 86
    :cond_1
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothA2dp;->isOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 88
    invoke-virtual {p0, v2}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getSelectableConfigs(Landroid/bluetooth/BluetoothDevice;)[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 90
    invoke-direct {p0, v1}, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;->getIndexFromConfig([Landroid/bluetooth/BluetoothCodecConfig;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0, v1}, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;->convertCfgToBtnIndex(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onHDAudioEnabled(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;->convertCfgToBtnIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;->onIndexUpdated(I)V

    :cond_0
    return-void
.end method

.method public onIndexUpdated(I)V
    .locals 0

    .line 154
    invoke-super {p0, p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->onIndexUpdated(I)V

    .line 155
    iget-object p0, p0, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;->mCallback:Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController$Callback;

    invoke-interface {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController$Callback;->onBluetoothCodecChanged()V

    return-void
.end method

.method protected writeConfigurationValues(I)V
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0xf4240

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    move v0, v4

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    .line 104
    :cond_4
    iget-object p1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 105
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getSelectableConfigs(Landroid/bluetooth/BluetoothDevice;)[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getHighestCodec([Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result v0

    :cond_5
    :goto_0
    move v4, v5

    .line 131
    :goto_1
    iget-object p1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p1, v0}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecType(I)V

    .line 132
    iget-object p1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p1, v4}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecPriority(I)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getSelectableByCodecType(I)Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    if-nez p1, :cond_6

    const-string v0, "BtCodecCtr"

    const-string v1, "Selectable config is null. Unable to reset"

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_6
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-static {p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getHighestSampleRate(Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setSampleRate(I)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-static {p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getHighestBitsPerSample(Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setBitsPerSample(I)V

    .line 141
    iget-object p0, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-static {p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getHighestChannelMode(Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setChannelMode(I)V

    return-void
.end method
