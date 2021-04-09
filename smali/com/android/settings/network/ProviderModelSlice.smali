.class public Lcom/android/settings/network/ProviderModelSlice;
.super Lcom/android/settings/wifi/slice/WifiSlice;
.source "ProviderModelSlice.java"


# instance fields
.field private final mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/slice/WifiSlice;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getHelper()Lcom/android/settings/network/ProviderModelSliceHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    return-void
.end method

.method private doCarrierNetworkAction(ZZ)V
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getWorker()Lcom/android/settings/network/telephony/NetworkProviderWorker;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {v0, p2}, Lcom/android/settings/wifi/slice/WifiScanWorker;->setCarrierNetworkEnabled(Z)V

    return-void

    .line 202
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isMobileDataEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 203
    invoke-virtual {v0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->connectCarrierNetwork()V

    :cond_2
    return-void
.end method

.method static synthetic lambda$getSlice$0(Lcom/android/settings/wifi/slice/WifiSliceItem;)Z
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ProviderModelSlice"

    .line 71
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 219
    const-class p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;

    return-object p0
.end method

.method getHelper()Lcom/android/settings/network/ProviderModelSliceHelper;
    .locals 2

    .line 224
    new-instance v0, Lcom/android/settings/network/ProviderModelSliceHelper;

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/network/ProviderModelSliceHelper;-><init>(Landroid/content/Context;Lcom/android/settings/slices/CustomSliceable;)V

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->provider_internet_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/network/NetworkProviderSettings;

    .line 211
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/16 v4, 0x579

    .line 210
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    .line 213
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 8

    .line 85
    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ProviderModelSliceHelper;->createListBuilder(Landroid/net/Uri;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    invoke-virtual {v1}, Lcom/android/settings/network/ProviderModelSliceHelper;->isAirplaneModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Airplane mode is enabled."

    .line 87
    invoke-static {v1}, Lcom/android/settings/network/ProviderModelSlice;->log(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    const-string v2, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-virtual {v1, v2}, Lcom/android/settings/network/ProviderModelSliceHelper;->createHeader(Ljava/lang/String;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 89
    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    sget v1, Lcom/android/settings/R$string;->condition_airplane_title:I

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/network/ProviderModelSliceHelper;->createMessageGridRow(ILjava/lang/String;)Landroidx/slice/builders/GridRowBuilder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/slice/builders/ListBuilder;->addGridRow(Landroidx/slice/builders/GridRowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 91
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getWorker()Lcom/android/settings/network/telephony/NetworkProviderWorker;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 99
    invoke-virtual {v3}, Lcom/android/settings/slices/SliceBackgroundWorker;->getResults()Ljava/util/List;

    move-result-object v2

    .line 100
    invoke-virtual {v3}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->getApRowCount()I

    move-result v1

    goto :goto_0

    :cond_1
    const-string v4, "network provider worker is null."

    .line 102
    invoke-static {v4}, Lcom/android/settings/network/ProviderModelSlice;->log(Ljava/lang/String;)V

    .line 105
    :goto_0
    iget-object v4, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    invoke-virtual {v4}, Lcom/android/settings/network/ProviderModelSliceHelper;->hasCarrier()Z

    move-result v4

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasCarrier: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/network/ProviderModelSlice;->log(Ljava/lang/String;)V

    .line 109
    iget-object v5, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    invoke-virtual {v5, v2}, Lcom/android/settings/network/ProviderModelSliceHelper;->getConnectedWifiItem(Ljava/util/List;)Lcom/android/settings/wifi/slice/WifiSliceItem;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, "get Wi-Fi item witch is connected"

    .line 111
    invoke-static {v6}, Lcom/android/settings/network/ProviderModelSlice;->log(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiSliceItemRow(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    add-int/lit8 v1, v1, -0x1

    :cond_2
    if-eqz v4, :cond_4

    .line 118
    iget-object v5, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    invoke-virtual {v5}, Lcom/android/settings/network/ProviderModelSliceHelper;->updateTelephony()V

    .line 119
    iget-object v5, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    if-eqz v3, :cond_3

    .line 121
    invoke-virtual {v3}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->getNetworkTypeDescription()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    const-string v6, ""

    .line 120
    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/settings/network/ProviderModelSliceHelper;->createCarrierRow(Ljava/lang/String;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v5

    .line 119
    invoke-virtual {v0, v5}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    add-int/lit8 v1, v1, -0x1

    :cond_4
    if-eqz v2, :cond_5

    const-string v5, "get Wi-Fi items which are not connected"

    .line 127
    invoke-static {v5}, Lcom/android/settings/network/ProviderModelSlice;->log(Ljava/lang/String;)V

    .line 128
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lcom/android/settings/network/-$$Lambda$ProviderModelSlice$yv6C6s-jvM15nSnn2W_Ml2L_RCU;->INSTANCE:Lcom/android/settings/network/-$$Lambda$ProviderModelSlice$yv6C6s-jvM15nSnn2W_Ml2L_RCU;

    .line 129
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    int-to-long v6, v1

    .line 131
    invoke-interface {v5, v6, v7}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v1

    .line 132
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 133
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/slice/WifiSliceItem;

    .line 134
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiSliceItemRow(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    if-nez v2, :cond_a

    :cond_6
    const-string v1, "wifiList is null"

    .line 145
    invoke-static {v1}, Lcom/android/settings/network/ProviderModelSlice;->log(Ljava/lang/String;)V

    .line 146
    sget v1, Lcom/android/settings/R$string;->non_carrier_network_unavailable:I

    if-eqz v4, :cond_7

    .line 147
    iget-object v2, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    invoke-virtual {v2}, Lcom/android/settings/network/ProviderModelSliceHelper;->isDataSimActive()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    const-string v1, "No carrier item or no carrier data."

    .line 148
    invoke-static {v1}, Lcom/android/settings/network/ProviderModelSlice;->log(Ljava/lang/String;)V

    .line 149
    sget v1, Lcom/android/settings/R$string;->all_network_unavailable:I

    :cond_8
    const-string v2, "android.settings.NETWORK_PROVIDER_SETTINGS"

    if-nez v4, :cond_9

    .line 154
    iget-object v3, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    invoke-virtual {v3, v2}, Lcom/android/settings/network/ProviderModelSliceHelper;->createHeader(Ljava/lang/String;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 157
    :cond_9
    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    .line 158
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/network/ProviderModelSliceHelper;->createMessageGridRow(ILjava/lang/String;)Landroidx/slice/builders/GridRowBuilder;

    move-result-object p0

    .line 157
    invoke-virtual {v0, p0}, Landroidx/slice/builders/ListBuilder;->addGridRow(Landroidx/slice/builders/GridRowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 162
    :cond_a
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 67
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->PROVIDER_MODEL_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method getWorker()Lcom/android/settings/network/telephony/NetworkProviderWorker;
    .locals 0

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;

    return-object p0
.end method

.method protected isApRowCollapsed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    invoke-virtual {v0}, Lcom/android/settings/network/ProviderModelSliceHelper;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultSubId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ProviderModelSlice;->log(Ljava/lang/String;)V

    .line 176
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    .line 180
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    .line 181
    iget-object v3, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    .line 182
    invoke-virtual {v3}, Lcom/android/settings/network/ProviderModelSliceHelper;->isMobileDataEnabled()Z

    move-result v3

    .line 181
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz v2, :cond_2

    .line 185
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v0, p1, v3}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->setMobileDataEnabled(Landroid/content/Context;IZZ)V

    .line 188
    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/android/settings/network/ProviderModelSlice;->doCarrierNetworkAction(ZZ)V

    return-void
.end method
