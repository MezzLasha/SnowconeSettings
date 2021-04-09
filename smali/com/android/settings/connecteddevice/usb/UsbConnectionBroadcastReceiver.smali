.class public Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbConnectionBroadcastReceiver.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;
    }
.end annotation


# instance fields
.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mDataRole:I

.field private mFunctions:J

.field private mListeningToUsbEvents:Z

.field private mPowerRole:I

.field private mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

.field private mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    .line 48
    iput-object p3, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    const-wide/16 p1, 0x0

    .line 50
    iput-wide p1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mFunctions:J

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mDataRole:I

    .line 52
    iput p1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mPowerRole:I

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 0

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->unregister()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "connected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "host_connected"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mConnected:Z

    const-wide/16 v1, 0x0

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "mtp"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v3, "unlocked"

    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x4

    .line 65
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v4, "ptp"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 v3, 0x10

    or-long/2addr v1, v3

    .line 69
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "midi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-wide/16 v3, 0x8

    or-long/2addr v1, v3

    .line 72
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "rndis"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-wide/16 v3, 0x20

    or-long/2addr v1, v3

    .line 75
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "accessory"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-wide/16 p1, 0x2

    or-long/2addr v1, p1

    .line 78
    :cond_6
    iput-wide v1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mFunctions:J

    .line 79
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDataRole()I

    move-result p1

    iput p1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mDataRole:I

    .line 80
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getPowerRole()I

    move-result p1

    iput p1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mPowerRole:I

    goto :goto_2

    .line 81
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "portStatus"

    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbPortStatus;

    if-eqz p1, :cond_8

    .line 85
    invoke-virtual {p1}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result p2

    iput p2, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mDataRole:I

    .line 86
    invoke-virtual {p1}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result p1

    iput p1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mPowerRole:I

    .line 89
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    if-eqz v0, :cond_9

    .line 90
    iget-boolean v1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mConnected:Z

    iget-wide v2, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mFunctions:J

    iget v4, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mPowerRole:I

    iget v5, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mDataRole:I

    invoke-interface/range {v0 .. v5}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;->onUsbConnectionChanged(ZJII)V

    :cond_9
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->register()V

    return-void
.end method

.method public register()V
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mListeningToUsbEvents:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mConnected:Z

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_STATE"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_PORT_CHANGED"

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mListeningToUsbEvents:Z

    :cond_1
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mListeningToUsbEvents:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->mListeningToUsbEvents:Z

    :cond_0
    return-void
.end method
