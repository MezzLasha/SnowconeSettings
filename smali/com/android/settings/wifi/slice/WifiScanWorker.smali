.class public Lcom/android/settings/wifi/slice/WifiScanWorker;
.super Lcom/android/settings/slices/SliceBackgroundWorker;
.source "WifiScanWorker.java"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/slices/SliceBackgroundWorker<",
        "Lcom/android/settings/wifi/slice/WifiSliceItem;",
        ">;",
        "Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;"
    }
.end annotation


# instance fields
.field final mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field protected mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field private final mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 12

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 71
    new-instance v11, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v11, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v11, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 73
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiScanWorker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWorkerThread:Landroid/os/HandlerThread;

    .line 74
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v5, Lcom/android/settings/wifi/slice/WifiScanWorker$1;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/wifi/slice/WifiScanWorker$1;-><init>(Lcom/android/settings/wifi/slice/WifiScanWorker;Ljava/time/ZoneId;)V

    .line 81
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProvider;

    move-result-object v1

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    .line 84
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v3

    .line 85
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x3a98

    const-wide/16 v8, 0x2710

    move-object v0, v1

    move-object v1, v2

    move-object v2, p1

    move-object v10, p0

    .line 83
    invoke-interface/range {v0 .. v10}, Lcom/android/settings/wifi/WifiTrackerLibProvider;->createWifiPickerTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)Lcom/android/wifitrackerlib/WifiPickerTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 91
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v11, v0}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 92
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v11, v0}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 111
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public connectCarrierNetwork()V
    .locals 1

    .line 210
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getMergedCarrierEntry()Lcom/android/wifitrackerlib/MergedCarrierEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/MergedCarrierEntry;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/MergedCarrierEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    :cond_0
    return-void
.end method

.method protected getApRowCount()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public getWifiEntry(Ljava/lang/String;)Lcom/android/wifitrackerlib/WifiEntry;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifitrackerlib/WifiEntry;

    .line 167
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onNumSavedNetworksChanged()V
    .locals 0

    return-void
.end method

.method public onNumSavedSubscriptionsChanged()V
    .locals 0

    return-void
.end method

.method protected onSlicePinned()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->updateResults()V

    return-void
.end method

.method protected onSliceUnpinned()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 105
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public onUpdated()V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->updateResults()V

    return-void
.end method

.method public onWifiEntriesChanged()V
    .locals 0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->updateResults()V

    return-void
.end method

.method public onWifiStateChanged()V
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public setCarrierNetworkEnabled(Z)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getMergedCarrierEntry()Lcom/android/wifitrackerlib/MergedCarrierEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/MergedCarrierEntry;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method updateResults()V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 179
    invoke-virtual {v0}, Landroidx/lifecycle/LifecycleRegistry;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 184
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    .line 188
    new-instance v2, Lcom/android/settings/wifi/slice/WifiSliceItem;

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/settings/wifi/slice/WifiSliceItem;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wifitrackerlib/WifiEntry;

    .line 191
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->getApRowCount()I

    move-result v4

    if-lt v3, v4, :cond_3

    goto :goto_1

    .line 194
    :cond_3
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 195
    invoke-virtual {v2, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    .line 196
    new-instance v3, Lcom/android/settings/wifi/slice/WifiSliceItem;

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/settings/wifi/slice/WifiSliceItem;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_4
    :goto_1
    invoke-super {p0, v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->updateResults(Ljava/util/List;)V

    return-void

    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 180
    invoke-super {p0, v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->updateResults(Ljava/util/List;)V

    return-void
.end method
