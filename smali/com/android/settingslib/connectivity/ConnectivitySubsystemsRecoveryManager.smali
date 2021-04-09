.class public Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;
.super Ljava/lang/Object;
.source "ConnectivitySubsystemsRecoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;,
        Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryAvailableListener;
    }
.end annotation


# instance fields
.field private final mApmMonitor:Landroid/content/BroadcastReceiver;

.field private mApmMonitorRegistered:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentRecoveryCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRecoveryAvailableListener:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryAvailableListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyRestartInProgress:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRestartInProgress:Z

.field private final mWifiSubsystemRestartTrackingCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mRecoveryAvailableListener:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryAvailableListener;

    .line 46
    iput-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 47
    iput-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 48
    new-instance v1, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$1;

    invoke-direct {v1, p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$1;-><init>(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V

    iput-object v1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mApmMonitor:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    .line 57
    iput-boolean v1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mApmMonitorRegistered:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiRestartInProgress:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyRestartInProgress:Z

    .line 60
    iput-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mCurrentRecoveryCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;

    .line 61
    new-instance v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$2;-><init>(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V

    iput-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiSubsystemRestartTrackingCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    .line 75
    new-instance v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$3;

    invoke-direct {v0, p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$3;-><init>(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V

    iput-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 92
    iput-object p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mHandler:Landroid/os/Handler;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "android.hardware.wifi"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "ConnectivitySubsystemsRecoveryManager"

    if-eqz p2, :cond_0

    .line 96
    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez p2, :cond_0

    const-string p2, "WifiManager not available!?"

    .line 98
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v1, "android.hardware.telephony"

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 103
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_1

    const-string p0, "TelephonyManager not available!?"

    .line 105
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryAvailableListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mRecoveryAvailableListener:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryAvailableListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiRestartInProgress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->stopTrackingWifiRestart()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->checkIfAllSubsystemsRestartsAreDone()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyRestartInProgress:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyRestartInProgress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mCurrentRecoveryCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->stopTrackingTelephonyRestart()V

    return-void
.end method

.method private checkIfAllSubsystemsRestartsAreDone()V
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiRestartInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyRestartInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mCurrentRecoveryCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;->onSubsystemRestartOperationEnd()V

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mCurrentRecoveryCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;

    :cond_0
    return-void
.end method

.method private isApmEnabled()Z
    .locals 2

    .line 153
    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isWifiEnabled()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 162
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$triggerSubsystemRestart$2()V
    .locals 1

    .line 283
    invoke-direct {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->stopTrackingWifiRestart()V

    .line 284
    invoke-direct {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->stopTrackingTelephonyRestart()V

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiRestartInProgress:Z

    .line 286
    iput-boolean v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyRestartInProgress:Z

    .line 287
    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mCurrentRecoveryCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;

    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;->onSubsystemRestartOperationEnd()V

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mCurrentRecoveryCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;

    :cond_0
    return-void
.end method

.method private synthetic lambda$triggerSubsystemRestart$3(Ljava/lang/String;Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;)V
    .locals 2

    .line 253
    iget-boolean v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiRestartInProgress:Z

    const-string v1, "ConnectivitySubsystemsRecoveryManager"

    if-eqz v0, :cond_0

    const-string p0, "Wifi restart still in progress"

    .line 254
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 258
    :cond_0
    iget-boolean v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyRestartInProgress:Z

    if-eqz v0, :cond_1

    const-string p0, "Telephony restart still in progress"

    .line 259
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 263
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->restartWifiSubsystem(Ljava/lang/String;)V

    .line 265
    iput-boolean v1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiRestartInProgress:Z

    .line 267
    invoke-direct {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->startTrackingWifiRestart()V

    move p1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 270
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->isApmEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->rebootRadio()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    iput-boolean v1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyRestartInProgress:Z

    .line 274
    invoke-direct {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->startTrackingTelephonyRestart()V

    goto :goto_1

    :cond_3
    move v1, p1

    :goto_1
    if-eqz v1, :cond_4

    .line 279
    iput-object p2, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mCurrentRecoveryCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;

    .line 280
    invoke-interface {p2}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;->onSubsystemRestartOperationBegin()V

    .line 282
    iget-object p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/settingslib/connectivity/-$$Lambda$ConnectivitySubsystemsRecoveryManager$aR-nm3-4kjhd4066yLQwaPVxNz4;

    invoke-direct {p2, p0}, Lcom/android/settingslib/connectivity/-$$Lambda$ConnectivitySubsystemsRecoveryManager$aR-nm3-4kjhd4066yLQwaPVxNz4;-><init>(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method private startTrackingTelephonyRestart()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->registerPhoneStateListener(Ljava/util/concurrent/Executor;Landroid/telephony/PhoneStateListener;)V

    return-void
.end method

.method private startTrackingWifiRestart()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiSubsystemRestartTrackingCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->registerSubsystemRestartTrackingCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V

    return-void
.end method

.method private stopTrackingTelephonyRestart()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterPhoneStateListener(Landroid/telephony/PhoneStateListener;)V

    return-void
.end method

.method private stopTrackingWifiRestart()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiSubsystemRestartTrackingCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->unregisterWifiSubsystemRestartTrackingCallback(Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V

    return-void
.end method


# virtual methods
.method public isRecoveryAvailable()Z
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->isApmEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->isWifiEnabled()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$triggerSubsystemRestart$2$ConnectivitySubsystemsRecoveryManager()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->lambda$triggerSubsystemRestart$2()V

    return-void
.end method

.method public synthetic lambda$triggerSubsystemRestart$3$ConnectivitySubsystemsRecoveryManager(Ljava/lang/String;Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->lambda$triggerSubsystemRestart$3(Ljava/lang/String;Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;)V

    return-void
.end method

.method public triggerSubsystemRestart(Ljava/lang/String;Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settingslib/connectivity/-$$Lambda$ConnectivitySubsystemsRecoveryManager$kcnPcFvN6vKB_S4lsLwbD-qfVog;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settingslib/connectivity/-$$Lambda$ConnectivitySubsystemsRecoveryManager$kcnPcFvN6vKB_S4lsLwbD-qfVog;-><init>(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;Ljava/lang/String;Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
