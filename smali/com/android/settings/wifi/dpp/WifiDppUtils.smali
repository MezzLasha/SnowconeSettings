.class public Lcom/android/settings/wifi/dpp/WifiDppUtils;
.super Ljava/lang/Object;
.source "WifiDppUtils.java"


# static fields
.field private static final VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3

    .line 96
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/dpp/WifiDppUtils;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    return-void
.end method

.method public static getConfiguratorQrCodeGeneratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/android/wifitrackerlib/WifiEntry;)Landroid/content/Intent;
    .locals 2

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->canShare()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_GENERATOR"

    .line 243
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    .line 249
    invoke-static {v0, p1, p0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->setConfiguratorIntentExtra(Landroid/content/Intent;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getConfiguratorQrCodeScannerIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/android/wifitrackerlib/WifiEntry;)Landroid/content/Intent;
    .locals 2

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->canEasyConnect()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_SCANNER"

    .line 267
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    .line 273
    invoke-static {v0, p1, p0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->setConfiguratorIntentExtra(Landroid/content/Intent;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    .line 275
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const-string p1, "networkId"

    .line 278
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0

    .line 276
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid network ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEnrolleeQrCodeScannerIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_DPP_ENROLLEE_QR_CODE_SCANNER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ssid"

    .line 121
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static getHotspotConfiguratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/SoftApConfiguration;)Landroid/content/Intent;
    .locals 4

    .line 295
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    invoke-static {p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isSupportHotspotConfiguratorQrCodeGenerator(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_GENERATOR"

    .line 297
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->removeFirstAndLastDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 304
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "SAE"

    goto :goto_1

    :cond_0
    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "nopass"

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "WPA"

    .line 317
    :goto_1
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {v1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->removeFirstAndLastDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ssid"

    .line 320
    invoke-virtual {p1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "security"

    .line 323
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "preSharedKey"

    .line 326
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    :cond_5
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result p0

    const-string p2, "hiddenSsid"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p0, -0x1

    const-string p2, "networkId"

    .line 331
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "isHotspot"

    .line 332
    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p1

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPresharedKey(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 3

    .line 129
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    .line 131
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 132
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v1, v2, :cond_0

    .line 135
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 p1, 0x1

    .line 136
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 138
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget p1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object p0, p0, p1

    return-object p0

    .line 141
    :cond_1
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    return-object p0

    .line 145
    :cond_2
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    return-object p0
.end method

.method static getSecurityString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 3

    .line 165
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SAE"

    return-object p0

    .line 168
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const-string v1, "nopass"

    if-eqz v0, :cond_1

    return-object v1

    .line 171
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    .line 172
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 175
    :cond_2
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "WEP"

    :goto_0
    return-object v1

    :cond_4
    :goto_1
    const-string p0, "WPA"

    return-object p0
.end method

.method static getSecurityString(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "nopass"

    return-object p0

    :cond_0
    const-string p0, "SAE"

    return-object p0

    :cond_1
    const-string p0, "WPA"

    return-object p0

    :cond_2
    const-string p0, "WEP"

    return-object p0
.end method

.method static getSecurityTypeFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)I
    .locals 4

    .line 499
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x5

    return p0

    .line 502
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    return v2

    .line 505
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x6

    return p0

    .line 508
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 509
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 512
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x4

    return p0

    .line 515
    :cond_4
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v1, v0

    :goto_0
    return v1

    :cond_6
    :goto_1
    return v2
.end method

.method public static isSupportEnrolleeQrCodeScanner(Landroid/content/Context;I)Z
    .locals 1

    .line 432
    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isSupportWifiDpp(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isSupportZxing(Landroid/content/Context;I)Z

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
    return p0
.end method

.method private static isSupportHotspotConfiguratorQrCodeGenerator(Landroid/net/wifi/SoftApConfiguration;)Z
    .locals 2

    .line 438
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static isSupportWifiDpp(Landroid/content/Context;I)Z
    .locals 3

    .line 446
    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isWifiDppEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 451
    :cond_0
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 454
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v2
.end method

.method private static isSupportZxing(Landroid/content/Context;I)Z
    .locals 2

    .line 466
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    .line 478
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    return v0
.end method

.method static isWifiDppEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 102
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 103
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEasyConnectSupported()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$showLockScreen$0(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 404
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static removeFirstAndLastDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 149
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    move v0, v2

    .line 158
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/2addr v1, v2

    .line 161
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static setConfiguratorIntentExtra(Landroid/content/Intent;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    .line 347
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->removeFirstAndLastDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getSecurityString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getPresharedKey(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->removeFirstAndLastDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 355
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ssid"

    .line 356
    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "security"

    .line 359
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "preSharedKey"

    .line 362
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    :cond_2
    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const-string p2, "hiddenSsid"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public static showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3

    const-string v0, "keyguard"

    .line 376
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 379
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiDppUtils$1;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils$1;-><init>(Ljava/lang/Runnable;)V

    .line 394
    new-instance p1, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {p1, p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->wifi_dpp_lockscreen_title:I

    .line 395
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p0

    .line 397
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 398
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 401
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object p0

    .line 402
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 403
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v2, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppUtils$cQ2fVBycqJfYiR7xw1yAK2PLj6c;

    invoke-direct {v2, p1}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppUtils$cQ2fVBycqJfYiR7xw1yAK2PLj6c;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, v2, v1}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    goto :goto_0

    .line 407
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method static triggerVibrationForQrCodeRecognition(Landroid/content/Context;)V
    .locals 3

    const-string v0, "vibrator"

    .line 488
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-nez p0, :cond_0

    return-void

    .line 492
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/dpp/WifiDppUtils;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    .line 493
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    const/4 v2, -0x1

    .line 492
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method
