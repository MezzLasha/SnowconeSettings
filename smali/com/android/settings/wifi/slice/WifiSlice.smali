.class public Lcom/android/settings/wifi/slice/WifiSlice;
.super Ljava/lang/Object;
.source "WifiSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# static fields
.field static final DEFAULT_EXPANDED_ROW_COUNT:I = 0x3


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    .line 73
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private getActivityAction(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;
    .locals 1

    .line 226
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/high16 v0, 0x4000000

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x0

    .line 228
    invoke-static {p0, p3, p1, p4}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method private getBroadcastAction(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;
    .locals 1

    const/high16 v0, 0x10000000

    .line 233
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 234
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/high16 v0, 0xc000000

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x0

    .line 236
    invoke-static {p0, p3, p1, p4}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method private getEndIcon(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 185
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$drawable;->ic_settings_24dp:I

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    .line 189
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getSecurity()I

    move-result p1

    if-eqz p1, :cond_1

    .line 190
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$drawable;->ic_friction_lock_closed:I

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
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

    .line 296
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->keywords_wifi:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    .line 297
    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 298
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/wifi/slice/-$$Lambda$U_QlcWB8Xuvutp-FPuoHlo0M96U;->INSTANCE:Lcom/android/settings/wifi/slice/-$$Lambda$U_QlcWB8Xuvutp-FPuoHlo0M96U;

    .line 299
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 300
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private getListBuilder(ZLcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder;
    .locals 6

    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-interface {p0, v0}, Lcom/android/settings/slices/CustomSliceable;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    .line 140
    invoke-static {v0, v1, p1}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 142
    new-instance v1, Landroidx/slice/builders/ListBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 v2, -0x1

    .line 143
    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    .line 144
    invoke-direct {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getKeywords()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/Set;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/slice/WifiSlice;->getHeaderRow(ZLcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 146
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    return-object p0
.end method

.method private getLoadingRow(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 3

    .line 240
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_empty_list_wifi_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 243
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 246
    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 247
    invoke-virtual {v2, v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 248
    invoke-virtual {v0, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    .line 249
    invoke-virtual {p1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    return-object p0
.end method

.method private getPrimaryAction()Landroid/app/PendingIntent;
    .locals 3

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 291
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getWifiEntryAction(Lcom/android/settings/wifi/slice/WifiSliceItem;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;
    .locals 5

    .line 197
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 199
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result v1

    const-string v2, "key_chosen_wifientry_key"

    if-eqz v1, :cond_0

    .line 200
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 202
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->pref_title_network_details:I

    .line 204
    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const-class v2, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;

    .line 205
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 206
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/16 v1, 0x67

    .line 207
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p1

    .line 209
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/settings/wifi/slice/WifiSlice;->getActivityAction(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->shouldEditBeforeConnect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings/wifi/WifiDialogActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 215
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/settings/wifi/slice/WifiSlice;->getActivityAction(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0

    .line 218
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings/wifi/slice/ConnectToWifiHandler;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "key_wifi_slice_uri"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 221
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/settings/wifi/slice/WifiSlice;->getBroadcastAction(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method private getWifiSliceItemLevelIcon(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 169
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result v0

    const v1, 0x1010429

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    move-result v0

    .line 178
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    .line 179
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getLevel()I

    move-result p1

    invoke-static {p1}, Lcom/android/settingslib/Utils;->getWifiIconResource(I)I

    move-result p1

    .line 178
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 180
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 181
    invoke-static {p0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method private isWifiEnabled()Z
    .locals 1

    .line 280
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 305
    const-class p0, Lcom/android/settings/wifi/slice/WifiScanWorker;

    return-object p0
.end method

.method protected getHeaderRow(ZLcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$drawable;->ic_settings_wireless:I

    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    .line 128
    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_settings:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 129
    invoke-direct {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getPrimaryAction()Landroid/app/PendingIntent;

    move-result-object p0

    const/4 v0, 0x0

    .line 130
    invoke-static {p0, p1, v0, p2}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    .line 133
    new-instance p1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 134
    invoke-virtual {p1, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    .line 135
    invoke-virtual {p1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .line 268
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 270
    iget-object v3, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings/wifi/WifiSettings;

    .line 271
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x25b

    .line 270
    invoke-static {v3, v4, v2, v0, v5}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 274
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 6

    .line 83
    invoke-direct {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/slice/WifiSlice;->getListBuilder(ZLcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder;

    move-result-object v2

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {v2}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/slice/WifiScanWorker;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getResults()Ljava/util/List;

    move-result-object v1

    :cond_1
    const/4 v0, 0x0

    if-nez v1, :cond_2

    move v3, v0

    goto :goto_0

    .line 91
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    if-lez v3, :cond_3

    .line 93
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/slice/WifiSliceItem;

    invoke-virtual {v5}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result v5

    if-eqz v5, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v0

    :goto_1
    if-eqz v5, :cond_4

    .line 97
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/slice/WifiSliceItem;

    invoke-direct {p0, v4, v2}, Lcom/android/settings/wifi/slice/WifiSlice;->getListBuilder(ZLcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder;

    move-result-object v2

    .line 100
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->isApRowCollapsed()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 101
    invoke-virtual {v2}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 105
    :cond_5
    iget-object v4, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->summary_placeholder:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_2
    const/4 v5, 0x3

    if-ge v0, v5, :cond_8

    if-ge v0, v3, :cond_6

    .line 108
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/slice/WifiSliceItem;

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiSliceItemRow(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_3

    :cond_6
    if-ne v0, v3, :cond_7

    .line 110
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/slice/WifiSlice;->getLoadingRow(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_3

    .line 112
    :cond_7
    new-instance v5, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 113
    invoke-virtual {v5, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v5

    .line 114
    invoke-virtual {v5, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v5

    .line 112
    invoke-virtual {v2, v5}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 117
    :cond_8
    invoke-virtual {v2}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 78
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method protected getWifiSliceItemRow(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 5

    .line 151
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiSliceItemLevelIcon(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 153
    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    const/4 v3, 0x0

    .line 154
    invoke-virtual {v2, v1, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 155
    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 156
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 157
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 158
    invoke-direct {p0, p1, v1, v0}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiEntryAction(Lcom/android/settings/wifi/slice/WifiSliceItem;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 160
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/slice/WifiSlice;->getEndIcon(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {v0, p0, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    :cond_0
    return-object v0
.end method

.method protected isApRowCollapsed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 259
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    .line 258
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 260
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method
