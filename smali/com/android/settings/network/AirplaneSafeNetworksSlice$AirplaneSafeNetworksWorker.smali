.class public Lcom/android/settings/network/AirplaneSafeNetworksSlice$AirplaneSafeNetworksWorker;
.super Lcom/android/settings/slices/SliceBackgroundWorker;
.source "AirplaneSafeNetworksSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/AirplaneSafeNetworksSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirplaneSafeNetworksWorker"
.end annotation


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 171
    new-instance p1, Lcom/android/settings/network/AirplaneSafeNetworksSlice$AirplaneSafeNetworksWorker$1;

    invoke-direct {p1, p0}, Lcom/android/settings/network/AirplaneSafeNetworksSlice$AirplaneSafeNetworksWorker$1;-><init>(Lcom/android/settings/network/AirplaneSafeNetworksSlice$AirplaneSafeNetworksWorker;)V

    iput-object p1, p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice$AirplaneSafeNetworksWorker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice$AirplaneSafeNetworksWorker;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/AirplaneSafeNetworksSlice$AirplaneSafeNetworksWorker;)V
    .locals 0

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method protected onSlicePinned()V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice$AirplaneSafeNetworksWorker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice$AirplaneSafeNetworksWorker;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onSliceUnpinned()V
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice$AirplaneSafeNetworksWorker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateSlice()V
    .locals 0

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method
