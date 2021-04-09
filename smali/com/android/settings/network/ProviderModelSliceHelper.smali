.class public Lcom/android/settings/network/ProviderModelSliceHelper;
.super Ljava/lang/Object;
.source "ProviderModelSliceHelper.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mSliceable:Lcom/android/settings/slices/CustomSliceable;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/slices/CustomSliceable;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mSliceable:Lcom/android/settings/slices/CustomSliceable;

    .line 73
    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 74
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->keywords_internet:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    .line 275
    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/network/-$$Lambda$U_QlcWB8Xuvutp-FPuoHlo0M96U;->INSTANCE:Lcom/android/settings/network/-$$Lambda$U_QlcWB8Xuvutp-FPuoHlo0M96U;

    .line 276
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 277
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private getMobileSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->isDataSimActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->preference_summary_default_combination:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/android/settings/R$string;->mobile_data_connection_active:I

    .line 248
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 247
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->isMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->mobile_data_off_summary:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getMobileTitle()Ljava/lang/String;
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->mobile_data_settings_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez p0, :cond_0

    return-object v0

    .line 262
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 261
    invoke-virtual {p0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 264
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getPrimaryAction(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 157
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 158
    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const/high16 v1, 0x4000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getConnectedWifiItem$0(Lcom/android/settings/wifi/slice/WifiSliceItem;)Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getMobileDrawable$1(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->getDrawableWithSignalStrength()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ProviderModelSlice"

    .line 78
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private shouldInflateSignalStrength(I)Z
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settingslib/net/SignalStrengthUtil;->shouldInflateSignalStrength(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected createCarrierRow(Ljava/lang/String;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 6

    .line 124
    invoke-direct {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->getMobileTitle()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-direct {p0, p1}, Lcom/android/settings/network/ProviderModelSliceHelper;->getMobileSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    iget-object v1, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->ic_signal_strength_zero_bar_no_internet:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 129
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/network/ProviderModelSliceHelper;->getMobileDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 131
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    :goto_0
    invoke-static {v1}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mSliceable:Lcom/android/settings/slices/CustomSliceable;

    iget-object v3, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/android/settings/slices/CustomSliceable;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    .line 135
    invoke-static {v2, v1, v3, v0}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v4

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->isMobileDataEnabled()Z

    move-result p0

    const-string v5, "mobile_toggle"

    .line 137
    invoke-static {v2, v5, p0}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    .line 139
    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 140
    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v1, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 143
    invoke-virtual {p0, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 144
    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    return-object p0
.end method

.method protected createHeader(Ljava/lang/String;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 3

    .line 82
    new-instance v0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-direct {v0}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->summary_placeholder:I

    .line 83
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/settings/network/ProviderModelSliceHelper;->getPrimarySliceAction(Ljava/lang/String;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object p0

    return-object p0
.end method

.method protected createListBuilder(Landroid/net/Uri;)Landroidx/slice/builders/ListBuilder;
    .locals 4

    .line 88
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v1, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, p1, v2, v3}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 p1, -0x1

    .line 89
    invoke-virtual {v0, p1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    .line 90
    invoke-direct {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->getKeywords()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/Set;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    return-object p0
.end method

.method protected createMessageGridRow(ILjava/lang/String;)Landroidx/slice/builders/GridRowBuilder;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 96
    new-instance v0, Landroidx/slice/builders/GridRowBuilder;

    invoke-direct {v0}, Landroidx/slice/builders/GridRowBuilder;-><init>()V

    new-instance v1, Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    invoke-direct {v1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;-><init>()V

    .line 98
    invoke-virtual {v1, p1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->addTitleText(Ljava/lang/CharSequence;)Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/slice/builders/GridRowBuilder;->addCell(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)Landroidx/slice/builders/GridRowBuilder;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p2}, Lcom/android/settings/network/ProviderModelSliceHelper;->getPrimarySliceAction(Ljava/lang/String;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/slice/builders/GridRowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/GridRowBuilder;

    move-result-object p0

    return-object p0
.end method

.method protected getConnectedWifiItem(Ljava/util/List;)Lcom/android/settings/wifi/slice/WifiSliceItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/slice/WifiSliceItem;",
            ">;)",
            "Lcom/android/settings/wifi/slice/WifiSliceItem;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 107
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/network/-$$Lambda$ProviderModelSliceHelper$q5e50VXLIIqPRaSwhn2zeeH1Ce0;->INSTANCE:Lcom/android/settings/network/-$$Lambda$ProviderModelSliceHelper$q5e50VXLIIqPRaSwhn2zeeH1Ce0;

    .line 108
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 109
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/slice/WifiSliceItem;

    :cond_1
    return-object p0
.end method

.method public getDrawableWithSignalStrength()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    :goto_0
    const/4 v2, 0x5

    .line 235
    iget-object v3, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v3, :cond_1

    .line 236
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 235
    invoke-direct {p0, v3}, Lcom/android/settings/network/ProviderModelSliceHelper;->shouldInflateSignalStrength(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x6

    .line 240
    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v2, v1, v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSignalStrengthIcon(Landroid/content/Context;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method getMobileDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const-string p0, "mTelephonyManager == null"

    .line 204
    invoke-static {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->log(Ljava/lang/String;)V

    return-object p1

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->isNoCarrierData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 209
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 210
    new-instance v1, Lcom/android/settings/network/-$$Lambda$ProviderModelSliceHelper$Wp-guLeytWoRQDdeVznJGdRJXhI;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings/network/-$$Lambda$ProviderModelSliceHelper$Wp-guLeytWoRQDdeVznJGdRJXhI;-><init>(Lcom/android/settings/network/ProviderModelSliceHelper;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Semaphore;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 214
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 215
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    const v1, 0x1010429

    .line 219
    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 218
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->isDataSimActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_2
    return-object p1
.end method

.method protected getPrimarySliceAction(Ljava/lang/String;)Landroidx/slice/builders/SliceAction;
    .locals 3

    .line 150
    invoke-direct {p0, p1}, Lcom/android/settings/network/ProviderModelSliceHelper;->getPrimaryAction(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 151
    invoke-static {v0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->summary_placeholder:I

    .line 152
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 149
    invoke-static {p1, v0, v1, p0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method protected getSubscriptionManager()Landroid/telephony/SubscriptionManager;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method protected hasCarrier()Z
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->isAirplaneModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1

    .line 116
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isAirplaneModeEnabled()Z
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method protected isDataSimActive()Z
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->activeNetworkIsCellular(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method protected isMobileDataEnabled()Z
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p0

    return p0
.end method

.method protected isNoCarrierData()Z
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->isMobileDataEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 186
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 187
    :goto_0
    iget-object v3, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->isMobileDataEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz v3, :cond_2

    .line 189
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    if-ne p0, v2, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    move p0, v1

    .line 190
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobileDataOnAndNoData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mobileDataOffAndOutOfService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/network/ProviderModelSliceHelper;->log(Ljava/lang/String;)V

    if-nez v0, :cond_3

    if-eqz p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public synthetic lambda$getMobileDrawable$1$ProviderModelSliceHelper(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/ProviderModelSliceHelper;->lambda$getMobileDrawable$1(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Semaphore;)V

    return-void
.end method

.method public updateTelephony()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 289
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 288
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_1
    :goto_0
    return-void
.end method
