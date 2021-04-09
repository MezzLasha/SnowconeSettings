.class public Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AdvancedBluetoothDetailsHeaderController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static final BATTERY_ESTIMATE:Ljava/lang/String; = "battery_estimate"

.field private static final CASE_DEVICE_ID:I = 0x3

.field private static final CASE_LOW_BATTERY_LEVEL:I = 0x13

.field private static final DATABASE_BLUETOOTH:Ljava/lang/String; = "Bluetooth"

.field private static final DATABASE_ID:Ljava/lang/String; = "id"

.field private static final DEBUG:Z

.field private static final ESTIMATE_READY:Ljava/lang/String; = "estimate_ready"

.field private static final LEFT_DEVICE_ID:I = 0x1

.field private static final LOW_BATTERY_LEVEL:I = 0xf

.field private static final PATH:Ljava/lang/String; = "time_remaining"

.field private static final QUERY_PARAMETER_ADDRESS:Ljava/lang/String; = "address"

.field private static final QUERY_PARAMETER_BATTERY_ID:Ljava/lang/String; = "battery_id"

.field private static final QUERY_PARAMETER_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final QUERY_PARAMETER_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final RIGHT_DEVICE_ID:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AdvancedBtHeaderCtrl"

.field private static final TIME_OF_HOUR:J

.field private static final TIME_OF_MINUTE:J


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field mHandler:Landroid/os/Handler;

.field final mIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mIsRegisterCallback:Z

.field mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field final mMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "AdvancedBtHeaderCtrl"

    const/4 v1, 0x3

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->DEBUG:Z

    .line 82
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe10

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->TIME_OF_HOUR:J

    const-wide/16 v1, 0x3c

    .line 83
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->TIME_OF_MINUTE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    new-instance p1, Landroid/os/Handler;

    .line 96
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    .line 99
    new-instance p1, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$1;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    .line 112
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 113
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    return-void
.end method

.method private synthetic lambda$showBatteryPredictionIfNecessary$0(IILandroid/widget/LinearLayout;)V
    .locals 8

    .line 270
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 271
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->config_battery_prediction_authority:I

    .line 272
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "time_remaining"

    .line 273
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "id"

    .line 274
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "Bluetooth"

    .line 275
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 276
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 277
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "battery_id"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 279
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "battery_level"

    .line 278
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timestamp"

    .line 280
    invoke-virtual {p2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 282
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string p2, "battery_estimate"

    const-string v6, "estimate_ready"

    .line 284
    filled-new-array {p2, v6}, [Ljava/lang/String;

    move-result-object v2

    .line 285
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 286
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "AdvancedBtHeaderCtrl"

    if-nez v0, :cond_0

    const-string p0, "showBatteryPredictionIfNecessary() cursor is null!"

    .line 288
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 292
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 294
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 296
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 297
    sget-boolean v5, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showBatteryTimeIfNecessary() batteryId : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", ESTIMATE_READY : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", BATTERY_ESTIMATE : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_1
    invoke-virtual {p0, v2, v3, v4, p3}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->showBatteryPredictionIfNecessary(IJLandroid/widget/LinearLayout;)V

    .line 292
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 306
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 307
    throw p0
.end method

.method private synthetic lambda$showBatteryPredictionIfNecessary$1(Landroid/widget/LinearLayout;IJ)V
    .locals 1

    .line 315
    sget v0, Lcom/android/settings/R$id;->bt_battery_prediction:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 317
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    long-to-double p3, p3

    invoke-static {p0, p3, p4, p2}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 320
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateIcon$2(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$updateIcon$3(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4

    const-string v0, "AdvancedBtHeaderCtrl"

    .line 387
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 389
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 392
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 393
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 392
    invoke-static {v2, v1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 394
    new-instance v3, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$6W9X5_irqSuX5kh_wBL3KS02STI;

    invoke-direct {v3, p0, p1, v2, p2}, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$6W9X5_irqSuX5kh_wBL3KS02STI;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    invoke-static {v3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to take persistable permission for: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 399
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get bitmap for: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private showBatteryIcon(Landroid/widget/LinearLayout;IZI)V
    .locals 2

    const/16 v0, 0xc

    if-ne p4, v0, :cond_0

    const/16 p4, 0x13

    goto :goto_0

    :cond_0
    const/16 p4, 0xf

    :goto_0
    const/4 v0, 0x0

    if-gt p2, p4, :cond_1

    if-nez p3, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    move p4, v0

    .line 331
    :goto_1
    sget v1, Lcom/android/settings/R$id;->bt_battery_icon:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p4, :cond_2

    .line 333
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/settings/R$drawable;->ic_battery_alert_24dp:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 335
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/settings/R$dimen;->advanced_bluetooth_battery_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget-object p4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 337
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/android/settings/R$dimen;->advanced_bluetooth_battery_height:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-direct {p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 339
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p3, Lcom/android/settings/R$dimen;->advanced_bluetooth_battery_right_margin:I

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 341
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 343
    :cond_2
    iget-object p4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p4, p2, p3}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->createBtBatteryIcon(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p0, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 346
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showBatteryPredictionIfNecessary(Landroid/widget/LinearLayout;II)V
    .locals 1

    .line 269
    new-instance v0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$lq2i-hJXt0C4MofW55EahhWE3Z0;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$lq2i-hJXt0C4MofW55EahhWE3Z0;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;IILandroid/widget/LinearLayout;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private updateDisconnectLayout()V
    .locals 4

    .line 352
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->layout_left:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v2, Lcom/android/settings/R$id;->layout_right:I

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v2, Lcom/android/settings/R$id;->layout_middle:I

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 357
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    sget v2, Lcom/android/settings/R$id;->header_title:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    sget v2, Lcom/android/settings/R$id;->bt_battery_summary:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 360
    sget v2, Lcom/android/settings/R$id;->bt_battery_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x5

    .line 364
    invoke-static {v1, v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v1

    .line 366
    sget-boolean v2, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDisconnectLayout() iconUri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdvancedBtHeaderCtrl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    .line 370
    sget v2, Lcom/android/settings/R$id;->header_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 371
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateSubLayout(Landroid/widget/LinearLayout;IIIII)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 234
    invoke-static {v0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 236
    sget v2, Lcom/android/settings/R$id;->header_icon:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 237
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 240
    :cond_1
    invoke-static {v0, p3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getIntMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    .line 241
    invoke-static {v0, p4}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    .line 242
    sget-boolean v3, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSubLayout() icon : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", battery : "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", charge : "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", batteryLevel : "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", charging : "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", iconUri : "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "AdvancedBtHeaderCtrl"

    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p2, 0x3

    if-eq p6, p2, :cond_3

    .line 249
    invoke-direct {p0, p1, p6, v2}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->showBatteryPredictionIfNecessary(Landroid/widget/LinearLayout;II)V

    :cond_3
    const/4 p2, -0x1

    const/4 p4, 0x0

    if-eq v2, p2, :cond_4

    .line 252
    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    sget p2, Lcom/android/settings/R$id;->bt_battery_summary:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 254
    invoke-static {v2}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    invoke-direct {p0, p1, v2, v0, p3}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->showBatteryIcon(Landroid/widget/LinearLayout;IZI)V

    goto :goto_0

    :cond_4
    const/16 p0, 0x8

    .line 259
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    :goto_0
    sget p0, Lcom/android/settings/R$id;->header_title:I

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 263
    invoke-virtual {p0, p5}, Landroid/widget/TextView;->setText(I)V

    .line 264
    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method createBtBatteryIcon(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 211
    new-instance p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    sget v0, Lcom/android/settings/R$color;->meter_background_color:I

    .line 213
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->advanced_bluetooth_battery_meter_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->advanced_bluetooth_battery_meter_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;-><init>(Landroid/content/Context;III)V

    .line 218
    invoke-virtual {p0, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setBatteryLevel(I)V

    .line 219
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const v0, 0x1010429

    .line 220
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 219
    invoke-virtual {p0, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 223
    invoke-virtual {p0, p3}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setCharging(Z)V

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    const-string v0, "settings_ui"

    const-string v1, "bt_advanced_header_enabled"

    const/4 v2, 0x1

    .line 118
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 120
    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const/4 v3, 0x6

    .line 121
    invoke-static {p0, v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 123
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailabilityStatus() is untethered : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "AdvancedBtHeaderCtrl"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$showBatteryPredictionIfNecessary$0$AdvancedBluetoothDetailsHeaderController(IILandroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$showBatteryPredictionIfNecessary$0(IILandroid/widget/LinearLayout;)V

    return-void
.end method

.method public synthetic lambda$showBatteryPredictionIfNecessary$1$AdvancedBluetoothDetailsHeaderController(Landroid/widget/LinearLayout;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$showBatteryPredictionIfNecessary$1(Landroid/widget/LinearLayout;IJ)V

    return-void
.end method

.method public synthetic lambda$updateIcon$2$AdvancedBluetoothDetailsHeaderController(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$updateIcon$2(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    return-void
.end method

.method public synthetic lambda$updateIcon$3$AdvancedBluetoothDetailsHeaderController(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$updateIcon$3(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 166
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->refresh()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    .line 140
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 142
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    .line 141
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->addOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->refresh()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 149
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->removeOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    return-void
.end method

.method refresh()V
    .locals 8

    .line 175
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_2

    .line 176
    sget v1, Lcom/android/settings/R$id;->entity_header_title:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 177
    iget-object v1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->entity_header_summary:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 179
    iget-object v1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->layout_left:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x7

    const/16 v4, 0xa

    const/16 v5, 0xd

    sget v6, Lcom/android/settings/R$string;->bluetooth_left_name:I

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateSubLayout(Landroid/widget/LinearLayout;IIIII)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->layout_middle:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0x9

    const/16 v4, 0xc

    const/16 v5, 0xf

    sget v6, Lcom/android/settings/R$string;->bluetooth_middle_name:I

    const/4 v7, 0x3

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateSubLayout(Landroid/widget/LinearLayout;IIIII)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->layout_right:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    const/16 v4, 0xb

    const/16 v5, 0xe

    sget v6, Lcom/android/settings/R$string;->bluetooth_right_name:I

    const/4 v7, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateSubLayout(Landroid/widget/LinearLayout;IIIII)V

    goto :goto_1

    .line 182
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateDisconnectLayout()V

    :cond_2
    :goto_1
    return-void
.end method

.method showBatteryPredictionIfNecessary(IJLandroid/widget/LinearLayout;)V
    .locals 7

    .line 314
    new-instance v6, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$lGbCHWYZQsd3L6WMc7RSNz_UkPs;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$lGbCHWYZQsd3L6WMc7RSNz_UkPs;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Landroid/widget/LinearLayout;IJ)V

    invoke-static {v6}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 386
    :cond_0
    new-instance v0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$JztAEiSq5fYD2xzxf2tM7mjT8RQ;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$JztAEiSq5fYD2xzxf2tM7mjT8RQ;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
