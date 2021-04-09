.class public Lcom/android/settings/bluetooth/BluetoothPairingController;
.super Ljava/lang/Object;
.source "BluetoothPairingController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceName:Ljava/lang/String;

.field private mInitiator:I

.field private mPasskey:I

.field private mPasskeyFormatted:Ljava/lang/String;

.field private mPbapAllowed:Z

.field private mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

.field mType:I

.field private mUserInput:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p2}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string p2, "android.bluetooth.device.extra.DEVICE"

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 80
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string p2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v0, -0x80000000

    .line 86
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const-string p2, "android.bluetooth.device.extra.PAIRING_KEY"

    .line 87
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskey:I

    const-string p2, "android.bluetooth.device.extra.PAIRING_INITIATOR"

    .line 89
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mInitiator:I

    .line 90
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDeviceName:Ljava/lang/String;

    .line 91
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapClientProfile()Lcom/android/settingslib/bluetooth/PbapClientProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 92
    iget p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskey:I

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->formatKey(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskeyFormatted:Ljava/lang/String;

    return-void

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not find BluetoothDevice"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not obtain LocalBluetoothManager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private formatKey(I)Ljava/lang/String;
    .locals 3

    .line 372
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-array p0, v2, [Ljava/lang/Object;

    .line 378
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "%04d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 375
    :cond_1
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%06d"

    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 2

    const-string v0, "BTPairingController"

    const-string v1, "Pairing dialog accepted"

    .line 392
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    packed-switch v1, :pswitch_data_0

    const-string p0, "Incorrect pairing type received"

    .line 413
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 396
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->setPin(Ljava/lang/String;)Z

    :goto_0
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public deviceEquals(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getContactSharingState()Z
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v2, 0x408

    if-ne v0, v2, :cond_1

    .line 183
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mInitiator:I

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public getDeviceMaxPasskeyLength()I
    .locals 1

    .line 262
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/16 p0, 0x10

    return p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceVariantMessageHintId()I
    .locals 1

    .line 243
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 245
    :cond_0
    sget p0, Lcom/android/settings/R$string;->bluetooth_pin_values_hint_16_digits:I

    return p0

    .line 249
    :cond_1
    sget p0, Lcom/android/settings/R$string;->bluetooth_pin_values_hint:I

    return p0
.end method

.method public getDeviceVariantMessageId()I
    .locals 1

    .line 223
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 229
    :cond_0
    sget p0, Lcom/android/settings/R$string;->bluetooth_enter_passkey_other_device:I

    return p0

    .line 226
    :cond_1
    sget p0, Lcom/android/settings/R$string;->bluetooth_enter_pin_other_device:I

    return p0
.end method

.method public getDialogType()I
    .locals 0

    .line 131
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPairingContent()Ljava/lang/String;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->hasPairingContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskeyFormatted:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasPairingContent()Z
    .locals 1

    .line 328
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isDisplayPairingKeyVariant()Z
    .locals 1

    .line 311
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isPasskeyValid(Landroid/text/Editable;)Z
    .locals 4

    .line 212
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ne p0, v2, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    .line 213
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    if-nez p0, :cond_3

    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_2

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    return v0
.end method

.method public isProfileReady()Z
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected notifyDialogDisplayed()V
    .locals 2

    .line 297
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 298
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 300
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskeyFormatted:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothDevice;->setPin(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 2

    const-string v0, "BTPairingController"

    const-string v1, "Pairing dialog canceled"

    .line 422
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->cancelPairing()Z

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapAllowed:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapAllowed:Z

    :goto_0
    return-void
.end method

.method public onDialogNegativeClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V
    .locals 1

    .line 121
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCancel()V

    return-void
.end method

.method public onDialogPositiveClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V
    .locals 1

    .line 106
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapAllowed:Z

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDialogType()I

    move-result p1

    if-nez p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mUserInput:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onPair(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onPair(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public pairingCodeIsAlphanumeric()Z
    .locals 1

    .line 282
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setContactSharingState()V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 196
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v3, 0x408

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    .line 198
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :goto_1
    return-void
.end method

.method protected updateUserInput(Ljava/lang/String;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mUserInput:Ljava/lang/String;

    return-void
.end method
