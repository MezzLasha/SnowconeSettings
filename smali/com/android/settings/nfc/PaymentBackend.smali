.class public Lcom/android/settings/nfc/PaymentBackend;
.super Ljava/lang/Object;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;,
        Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;,
        Lcom/android/settings/nfc/PaymentBackend$Callback;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/nfc/NfcAdapter;

.field private mAppInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/nfc/PaymentBackend$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private final mContext:Landroid/content/Context;

.field private mDefaultAppInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;-><init>(Lcom/android/settings/nfc/PaymentBackend;Lcom/android/settings/nfc/PaymentBackend$1;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentBackend;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentBackend;->mCallbacks:Ljava/util/ArrayList;

    .line 64
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/PaymentBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 67
    invoke-static {p1}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->refresh()V

    return-void
.end method


# virtual methods
.method public getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend;->mDefaultAppInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    return-object p0
.end method

.method getDefaultPaymentApp()Landroid/content/ComponentName;
    .locals 1

    .line 157
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "nfc_payment_default_component"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 160
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPaymentAppInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend;->mAppInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method isForegroundMode()Z
    .locals 2

    const/4 v0, 0x0

    .line 144
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "nfc_payment_foreground"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method makeCallbacks()V
    .locals 1

    .line 137
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$Callback;

    .line 138
    invoke-interface {v0}, Lcom/android/settings/nfc/PaymentBackend$Callback;->onPaymentAppsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentBackend;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->refresh()V

    return-void
.end method

.method public refresh()V
    .locals 11

    .line 81
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const-string v2, "payment"

    .line 83
    invoke-virtual {v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->makeCallbacks()V

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v3

    .line 93
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 94
    new-instance v7, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-direct {v7}, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;-><init>()V

    .line 95
    invoke-virtual {v6, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    if-nez v8, :cond_1

    .line 97
    invoke-virtual {v6, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadAppLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 99
    :cond_1
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-eqz v8, :cond_2

    move-object v5, v7

    .line 103
    :cond_2
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    .line 104
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 106
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v7, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    .line 107
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v7, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    goto :goto_1

    .line 110
    :cond_3
    iput-object v4, v7, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    .line 112
    :goto_1
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->description:Ljava/lang/CharSequence;

    .line 113
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_4
    iput-object v2, p0, Lcom/android/settings/nfc/PaymentBackend;->mAppInfos:Ljava/util/ArrayList;

    .line 116
    iput-object v5, p0, Lcom/android/settings/nfc/PaymentBackend;->mDefaultAppInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->makeCallbacks()V

    return-void
.end method

.method public registerCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDefaultPaymentApp(Landroid/content/ComponentName;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "nfc_payment_default_component"

    .line 167
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->refresh()V

    return-void
.end method

.method setForegroundMode(Z)V
    .locals 1

    .line 152
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "nfc_payment_foreground"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public unregisterCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
