.class public Lcom/android/settings/network/AirplaneSafeNetworksSlice;
.super Ljava/lang/Object;
.source "AirplaneSafeNetworksSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;
.implements Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/AirplaneSafeNetworksSlice$AirplaneSafeNetworksWorker;
    }
.end annotation


# instance fields
.field private final mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private final mContext:Landroid/content/Context;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;)V

    iput-object v0, p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 83
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private getAction()I
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private getSliceAction()Landroidx/slice/builders/SliceAction;
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    .line 155
    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 158
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v1}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 160
    invoke-direct {p0}, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->getTitle()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x6

    .line 159
    invoke-static {v0, v1, v2, p0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method private getTitle()Ljava/lang/String;
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->mContext:Landroid/content/Context;

    .line 149
    invoke-direct {p0}, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->getAction()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 150
    sget p0, Lcom/android/settings/R$string;->view_airplane_safe_networks:I

    goto :goto_0

    .line 151
    :cond_0
    sget p0, Lcom/android/settings/R$string;->turn_off_airplane_mode:I

    .line 148
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 151
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AirplaneSafeNetworksSlice"

    .line 87
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 165
    const-class p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice$AirplaneSafeNetworksWorker;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/slices/SliceBroadcastReceiver;

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 137
    invoke-direct {p0}, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->getAction()I

    move-result p0

    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_0
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v1, p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 98
    invoke-direct {p0}, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    .line 99
    invoke-direct {p0}, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->getSliceAction()Landroidx/slice/builders/SliceAction;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 97
    invoke-virtual {v0, p0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 105
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->AIRPLANE_SAFE_NETWORKS_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice$AirplaneSafeNetworksWorker;

    if-eqz p0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneSafeNetworksSlice$AirplaneSafeNetworksWorker;->updateSlice()V

    :cond_0
    return-void
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "action"

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 112
    iget-object p1, p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Action: turn on WiFi"

    .line 113
    invoke-static {p1}, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->logd(Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 117
    iget-object p1, p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Action: turn off Airplane mode"

    .line 118
    invoke-static {p1}, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->logd(Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/android/settings/network/AirplaneSafeNetworksSlice;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0, v1}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneMode(Z)V

    :cond_1
    :goto_0
    return-void
.end method
