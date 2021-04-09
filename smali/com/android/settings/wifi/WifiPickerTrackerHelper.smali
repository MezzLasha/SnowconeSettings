.class public Lcom/android/settings/wifi/WifiPickerTrackerHelper;
.super Ljava/lang/Object;
.source "WifiPickerTrackerHelper.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final ELAPSED_REALTIME_CLOCK:Ljava/time/Clock;


# instance fields
.field private mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/android/settings/wifi/WifiPickerTrackerHelper$1;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiPickerTrackerHelper$1;-><init>(Ljava/time/ZoneId;)V

    sput-object v0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->ELAPSED_REALTIME_CLOCK:Ljava/time/Clock;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V
    .locals 12

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 68
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiPickerTrackerHelper{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->mWorkerThread:Landroid/os/HandlerThread;

    .line 71
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 73
    invoke-static {p2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProvider;

    move-result-object v1

    new-instance v4, Landroid/os/Handler;

    .line 76
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->mWorkerThread:Landroid/os/HandlerThread;

    .line 77
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v5

    sget-object v6, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->ELAPSED_REALTIME_CLOCK:Ljava/time/Clock;

    const-wide/16 v7, 0x3a98

    const-wide/16 v9, 0x2710

    move-object v2, p1

    move-object v3, p2

    move-object v11, p3

    .line 75
    invoke-interface/range {v1 .. v11}, Lcom/android/settings/wifi/WifiTrackerLibProvider;->createWifiPickerTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)Lcom/android/wifitrackerlib/WifiPickerTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    return-void

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lifecycle must be non-null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public connectCarrierNetwork(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)Z
    .locals 1

    .line 104
    iget-object p0, p0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getMergedCarrierEntry()Lcom/android/wifitrackerlib/MergedCarrierEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/MergedCarrierEntry;->canConnect()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/MergedCarrierEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getWifiPickerTracker()Lcom/android/wifitrackerlib/WifiPickerTracker;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 87
    iget-object p0, p0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public setCarrierNetworkEnabled(Z)Z
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getMergedCarrierEntry()Lcom/android/wifitrackerlib/MergedCarrierEntry;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/MergedCarrierEntry;->setEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method setWifiPickerTracker(Lcom/android/wifitrackerlib/WifiPickerTracker;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    return-void
.end method

.method setWorkerThread(Landroid/os/HandlerThread;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->mWorkerThread:Landroid/os/HandlerThread;

    return-void
.end method
