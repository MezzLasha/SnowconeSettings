.class public Lcom/android/settingslib/wifi/AccessPoint;
.super Ljava/lang/Object;
.source "AccessPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;,
        Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settingslib/wifi/AccessPoint;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final sLastId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private bssid:Ljava/lang/String;

.field mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mContext:Landroid/content/Context;

.field private mEapType:I

.field private final mExtraScanResults:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mFqdn:Ljava/lang/String;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mIsOweTransitionMode:Z

.field private mIsPskSaeTransitionMode:Z

.field private mIsRoaming:Z

.field private mIsScoredNetworkMetered:Z

.field private mKey:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOsuFailure:Ljava/lang/String;

.field private mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

.field private mOsuProvisioningComplete:Z

.field private mOsuStatus:Ljava/lang/String;

.field private mPasspointConfigurationVersion:I

.field private mPasspointUniqueId:Ljava/lang/String;

.field private mProviderFriendlyName:Ljava/lang/String;

.field private mRssi:I

.field private final mScanResults:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mScoredNetworkCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeed:I

.field private mSubscriptionExpirationTimeInMillis:J

.field private mTag:Ljava/lang/Object;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private networkId:I

.field private pskType:I

.field private security:I

.field private ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 212
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/wifi/AccessPoint;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    .line 176
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 183
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    const/4 v0, -0x1

    .line 251
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v0, 0x0

    .line 253
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 254
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    const/high16 v1, -0x80000000

    .line 258
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 266
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 267
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 276
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsRoaming:Z

    .line 278
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mPasspointConfigurationVersion:I

    .line 285
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvisioningComplete:Z

    .line 287
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsPskSaeTransitionMode:Z

    .line 288
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsOweTransitionMode:Z

    .line 367
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 368
    invoke-virtual {p0, p2}, Lcom/android/settingslib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 369
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateKey()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    .line 176
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 183
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    const/4 v0, -0x1

    .line 251
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v0, 0x0

    .line 253
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 254
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    const/high16 v1, -0x80000000

    .line 258
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 266
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 267
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 276
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsRoaming:Z

    .line 278
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mPasspointConfigurationVersion:I

    .line 285
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvisioningComplete:Z

    .line 287
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsPskSaeTransitionMode:Z

    .line 288
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsOweTransitionMode:Z

    .line 396
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 397
    iget p1, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 398
    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 399
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mPasspointUniqueId:Ljava/lang/String;

    .line 400
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    .line 401
    invoke-virtual {p0, p3, p4}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResultsPasspoint(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 402
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateKey()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/hotspot2/OsuProvider;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    .line 176
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 183
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    const/4 v0, -0x1

    .line 251
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v0, 0x0

    .line 253
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 254
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    const/high16 v1, -0x80000000

    .line 258
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 266
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 267
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 276
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsRoaming:Z

    .line 278
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mPasspointConfigurationVersion:I

    .line 285
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvisioningComplete:Z

    .line 287
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsPskSaeTransitionMode:Z

    .line 288
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsOweTransitionMode:Z

    .line 410
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 411
    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    .line 412
    invoke-virtual {p0, p3}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResults(Ljava/util/Collection;)V

    .line 413
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateKey()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 2

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    .line 176
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 183
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    const/4 v0, -0x1

    .line 251
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v0, 0x0

    .line 253
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 254
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    const/high16 v1, -0x80000000

    .line 258
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 266
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 267
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 276
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsRoaming:Z

    .line 278
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mPasspointConfigurationVersion:I

    .line 285
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvisioningComplete:Z

    .line 287
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsPskSaeTransitionMode:Z

    .line 288
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsOweTransitionMode:Z

    .line 377
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 378
    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mPasspointUniqueId:Ljava/lang/String;

    .line 379
    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    .line 380
    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mProviderFriendlyName:Ljava/lang/String;

    .line 381
    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getSubscriptionExpirationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSubscriptionExpirationTimeInMillis:J

    .line 382
    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->isOsuProvisioned()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 383
    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mPasspointConfigurationVersion:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 385
    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mPasspointConfigurationVersion:I

    .line 387
    :goto_0
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateKey()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    .line 176
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 183
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    .line 192
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    const/4 v1, -0x1

    .line 251
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, 0x0

    .line 253
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 254
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    const/high16 v2, -0x80000000

    .line 258
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 266
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 267
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 276
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsRoaming:Z

    .line 278
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mPasspointConfigurationVersion:I

    .line 285
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvisioningComplete:Z

    .line 287
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsPskSaeTransitionMode:Z

    .line 288
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsOweTransitionMode:Z

    .line 291
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const-string p1, "key_config"

    .line 293
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 296
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_1

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    const-string p1, "key_ssid"

    .line 299
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    :cond_2
    const-string p1, "key_security"

    .line 302
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 303
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    :cond_3
    const-string p1, "key_speed"

    .line 305
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 306
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    :cond_4
    const-string p1, "key_psktype"

    .line 308
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 309
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    :cond_5
    const-string p1, "eap_psktype"

    .line 311
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 312
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    :cond_6
    const-string p1, "key_wifiinfo"

    .line 314
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiInfo;

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    const-string p1, "key_networkinfo"

    .line 315
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 316
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    :cond_7
    const-string p1, "key_scanresults"

    .line 318
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 319
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 320
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 321
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_8

    aget-object v2, p1, v1

    .line 322
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    check-cast v2, Landroid/net/wifi/ScanResult;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    const-string p1, "key_scorednetworkcache"

    .line 325
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 327
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 328
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    .line 329
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->getScore()Landroid/net/ScoredNetwork;

    move-result-object v2

    iget-object v2, v2, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget-object v2, v2, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v2, v2, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    const-string p1, "key_passpoint_unique_id"

    .line 332
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 333
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mPasspointUniqueId:Ljava/lang/String;

    :cond_a
    const-string p1, "key_fqdn"

    .line 335
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 336
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    :cond_b
    const-string p1, "key_provider_friendly_name"

    .line 338
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 339
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mProviderFriendlyName:Ljava/lang/String;

    :cond_c
    const-string p1, "key_subscription_expiration_time_in_millis"

    .line 341
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 343
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSubscriptionExpirationTimeInMillis:J

    :cond_d
    const-string p1, "key_passpoint_configuration_version"

    .line 345
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 346
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mPasspointConfigurationVersion:I

    :cond_e
    const-string p1, "key_is_psk_sae_transition_mode"

    .line 348
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 349
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsPskSaeTransitionMode:Z

    :cond_f
    const-string p1, "key_is_owe_transition_mode"

    .line 351
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 352
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsOweTransitionMode:Z

    .line 355
    :cond_10
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 358
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateKey()V

    .line 359
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateBestRssiInfo()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    .line 176
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 183
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    const/4 v0, -0x1

    .line 251
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v0, 0x0

    .line 253
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 254
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    const/high16 v1, -0x80000000

    .line 258
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 266
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 267
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 276
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsRoaming:Z

    .line 278
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mPasspointConfigurationVersion:I

    .line 285
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvisioningComplete:Z

    .line 287
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsPskSaeTransitionMode:Z

    .line 288
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsOweTransitionMode:Z

    .line 417
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 418
    invoke-virtual {p0, p2}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResults(Ljava/util/Collection;)V

    .line 419
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateKey()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuStatus:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Context;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuFailure:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settingslib/wifi/AccessPoint;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvisioningComplete:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/hotspot2/OsuProvider;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object p0
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private generateAverageSpeedForSsid()I
    .locals 9

    .line 632
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    const-string v2, "SettingsLib.AccessPoint"

    .line 636
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    .line 638
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    aput-object v5, v0, v4

    const-string v5, "Generating fallbackspeed for %s using cache: %s"

    .line 637
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v1

    move v6, v5

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    .line 648
    invoke-virtual {v7}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->getScore()Landroid/net/ScoredNetwork;

    move-result-object v7

    iget v8, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v7, v8}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v7

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    move v6, v1

    goto :goto_1

    .line 654
    :cond_4
    div-int/2addr v6, v5

    .line 655
    :goto_1
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    new-array v0, v3, [Ljava/lang/Object;

    .line 656
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v4

    const-string p0, "%s generated fallback speed is: %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_5
    invoke-static {v6}, Lcom/android/settingslib/wifi/AccessPoint;->roundToClosestSpeedEnum(I)I

    move-result p0

    return p0
.end method

.method private static getAppLabel(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3

    const-string v0, ""

    const/4 v1, -0x2

    .line 1645
    :try_start_0
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    .line 1646
    invoke-virtual {p1, p0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 1652
    invoke-virtual {p0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "SettingsLib.AccessPoint"

    const-string v1, "Failed to get app info"

    .line 1648
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static getEapType(Landroid/net/wifi/ScanResult;)I
    .locals 2

    .line 1743
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "RSN-EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 1747
    :cond_0
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "WPA-EAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getKey(Landroid/content/Context;Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 2

    .line 697
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/content/Context;Landroid/net/wifi/ScanResult;)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2

    .line 705
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 708
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKey(Landroid/net/wifi/hotspot2/OsuProvider;)Ljava/lang/String;
    .locals 2

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSU:"

    .line 726
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 728
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/OsuProvider;->getServerUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PASSPOINT:"

    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AP:"

    .line 737
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 741
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p0, 0x2c

    .line 743
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)I
    .locals 4

    .line 1723
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPA-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1724
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "RSN-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1725
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "RSN-SAE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    if-eqz v1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    if-nez v2, :cond_3

    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received abnormal flag string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsLib.AccessPoint"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static getSecurity(Landroid/content/Context;Landroid/net/wifi/ScanResult;)I
    .locals 11

    .line 1754
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1755
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "SAE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1756
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1757
    iget-object v3, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v4, "EAP_SUITE_B_192"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1758
    iget-object v4, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "EAP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1759
    iget-object v5, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "OWE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 1760
    iget-object p1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "OWE_TRANSITION"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v6, 0x5

    const/4 v7, 0x2

    const-string v8, "wifi"

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 1764
    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 1765
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    return v6

    :cond_1
    const/4 v9, 0x4

    const/4 v10, 0x0

    if-eqz p1, :cond_3

    .line 1769
    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 1770
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v9, v10

    :goto_1
    return v9

    :cond_3
    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz v1, :cond_5

    return v6

    :cond_5
    if-eqz v2, :cond_6

    return v7

    :cond_6
    if-eqz v3, :cond_7

    const/4 p0, 0x6

    return p0

    :cond_7
    if-eqz v4, :cond_8

    const/4 p0, 0x3

    return p0

    :cond_8
    if-eqz v5, :cond_9

    return v9

    :cond_9
    return v10
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 4

    .line 1790
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x5

    return p0

    .line 1793
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    return v2

    .line 1796
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x6

    return p0

    .line 1799
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1800
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 1803
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x4

    return p0

    .line 1806
    :cond_4
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v0, :cond_5

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v2, p0

    if-ge v0, v2, :cond_5

    aget-object p0, p0, v0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_6
    :goto_1
    return v2
.end method

.method private static getSpeedLabel(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1617
    :cond_0
    sget p1, Lcom/android/settingslib/R$string;->speed_label_very_fast:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1619
    :cond_1
    sget p1, Lcom/android/settingslib/R$string;->speed_label_fast:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1621
    :cond_2
    sget p1, Lcom/android/settingslib/R$string;->speed_label_okay:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1623
    :cond_3
    sget p1, Lcom/android/settingslib/R$string;->speed_label_slow:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSpeedLabel(Landroid/content/Context;Landroid/net/ScoredNetwork;I)Ljava/lang/String;
    .locals 0

    .line 1633
    invoke-virtual {p1, p2}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->roundToClosestSpeedEnum(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1659
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_0

    .line 1660
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1662
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/android/settingslib/wifi/AccessPoint;->getAppLabel(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1663
    sget p2, Lcom/android/settingslib/R$string;->connected_via_app:I

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p3, :cond_2

    .line 1666
    const-class p1, Landroid/net/NetworkScoreManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkScoreManager;

    .line 1668
    invoke-virtual {p1}, Landroid/net/NetworkScoreManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1669
    invoke-virtual {p1}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1670
    sget p2, Lcom/android/settingslib/R$string;->connected_via_network_scorer:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p2, v2, [Ljava/lang/Object;

    .line 1671
    invoke-virtual {p1}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1673
    :cond_1
    sget p1, Lcom/android/settingslib/R$string;->connected_via_network_scorer_default:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p3, "connectivity"

    .line 1680
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/ConnectivityManager;

    .line 1681
    sget-object p4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, p4, :cond_6

    .line 1682
    const-class p4, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/wifi/WifiManager;

    .line 1683
    invoke-virtual {p4}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p3

    if-eqz p3, :cond_6

    const/16 p4, 0x11

    .line 1686
    invoke-virtual {p3, p4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 1687
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "network_available_sign_in"

    const-string p3, "string"

    const-string p4, "android"

    .line 1688
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1689
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 p4, 0x18

    .line 1690
    invoke-virtual {p3, p4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 1692
    sget p1, Lcom/android/settingslib/R$string;->wifi_limited_connection:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 p4, 0x10

    .line 1693
    invoke-virtual {p3, p4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p4

    if-nez p4, :cond_6

    .line 1694
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "private_dns_mode"

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 1696
    invoke-virtual {p3}, Landroid/net/NetworkCapabilities;->isPrivateDnsBroken()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1697
    sget p1, Lcom/android/settingslib/R$string;->private_dns_broken:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1699
    :cond_5
    sget p1, Lcom/android/settingslib/R$string;->wifi_connected_no_internet:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p3, ""

    if-nez p2, :cond_7

    const-string p0, "SettingsLib.AccessPoint"

    const-string p1, "state is null, returning empty summary"

    .line 1705
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    .line 1708
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez p1, :cond_8

    .line 1709
    sget p4, Lcom/android/settingslib/R$array;->wifi_status:I

    goto :goto_0

    :cond_8
    sget p4, Lcom/android/settingslib/R$array;->wifi_status_with_ssid:I

    .line 1708
    :goto_0
    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 1710
    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result p2

    .line 1712
    array-length p4, p0

    if-ge p2, p4, :cond_a

    aget-object p4, p0, p2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_9

    goto :goto_1

    .line 1715
    :cond_9
    aget-object p0, p0, p2

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_1
    return-object p3
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    .line 1849
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 1850
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1852
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method private isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z
    .locals 4

    .line 1338
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuStatus:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_3

    .line 1340
    :cond_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1349
    :cond_1
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 1350
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p0

    if-ne v0, p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    if-eqz p1, :cond_4

    .line 1352
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result p0

    return p0

    .line 1357
    :cond_4
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 1343
    :cond_5
    :goto_1
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1344
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getPasspointFqdn()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1345
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1

    .line 1339
    :cond_7
    :goto_3
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuStatus:Ljava/lang/String;

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    return v1
.end method

.method private static isOweTransitionMode(Landroid/net/wifi/ScanResult;)Z
    .locals 1

    .line 2023
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "OWE_TRANSITION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static isPskSaeTransitionMode(Landroid/net/wifi/ScanResult;)Z
    .locals 2

    .line 2018
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "SAE"

    .line 2019
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSameSsidOrBssid(Landroid/net/wifi/ScanResult;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2031
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 2033
    :cond_1
    iget-object p1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method private isSameSsidOrBssid(Landroid/net/wifi/WifiInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2044
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 2046
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method private static isVerboseLoggingEnabled()Z
    .locals 2

    .line 1900
    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const-string v1, "SettingsLib.AccessPoint"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private synthetic lambda$setScanResults$1()V
    .locals 1

    .line 1470
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1471
    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setScanResults$2()V
    .locals 1

    .line 1478
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1479
    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$update$3()V
    .locals 1

    .line 1546
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1547
    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$update$4()V
    .locals 1

    .line 1553
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1554
    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$update$5()V
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1571
    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateScores$0(JLjava/util/Iterator;Lcom/android/settingslib/wifi/TimestampedScoredNetwork;)V
    .locals 2

    .line 608
    invoke-virtual {p3}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->getUpdatedTimestampMillis()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    .line 609
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-void
.end method

.method private matches(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 827
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/settingslib/wifi/AccessPoint;->isSameSsidOrBssid(Landroid/net/wifi/WifiInfo;)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 830
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1837
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1840
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    .line 1841
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    sub-int/2addr v0, v1

    .line 1842
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1843
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static roundToClosestSpeedEnum(I)I
    .locals 2

    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x7

    if-ge p0, v1, :cond_1

    return v0

    :cond_1
    const/16 v0, 0xf

    if-ge p0, v0, :cond_2

    const/16 p0, 0xa

    return p0

    :cond_2
    const/16 v0, 0x19

    if-ge p0, v0, :cond_3

    const/16 p0, 0x14

    return p0

    :cond_3
    const/16 p0, 0x1e

    return p0
.end method

.method public static securityToString(II)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "WEP"

    return-object p0

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne p0, v2, :cond_4

    if-ne p1, v0, :cond_1

    const-string p0, "WPA"

    return-object p0

    :cond_1
    if-ne p1, v2, :cond_2

    const-string p0, "WPA2"

    return-object p0

    :cond_2
    if-ne p1, v1, :cond_3

    const-string p0, "WPA_WPA2"

    return-object p0

    :cond_3
    const-string p0, "PSK"

    return-object p0

    :cond_4
    if-ne p0, v1, :cond_5

    const-string p0, "EAP"

    return-object p0

    :cond_5
    const/4 p1, 0x5

    if-ne p0, p1, :cond_6

    const-string p0, "SAE"

    return-object p0

    :cond_6
    const/4 p1, 0x6

    if-ne p0, p1, :cond_7

    const-string p0, "SUITE_B"

    return-object p0

    :cond_7
    const/4 p1, 0x4

    if-ne p0, p1, :cond_8

    const-string p0, "OWE"

    return-object p0

    :cond_8
    const-string p0, "NONE"

    return-object p0
.end method

.method private updateBestRssiInfo()V
    .locals 7

    .line 937
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 943
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 944
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/high16 v3, -0x80000000

    move v4, v3

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 945
    iget v6, v5, Landroid/net/wifi/ScanResult;->level:I

    if-le v6, v4, :cond_1

    move-object v0, v5

    move v4, v6

    goto :goto_0

    .line 950
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-eq v4, v3, :cond_3

    .line 953
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    if-eq v2, v3, :cond_3

    add-int/2addr v2, v4

    .line 954
    div-int/2addr v2, v1

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    goto :goto_1

    .line 956
    :cond_3
    iput v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    :goto_1
    if-eqz v0, :cond_7

    .line 960
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 961
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 962
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/content/Context;Landroid/net/wifi/ScanResult;)I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-eq v2, v1, :cond_4

    const/4 v1, 0x5

    if-ne v2, v1, :cond_5

    .line 964
    :cond_4
    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)I

    move-result v1

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 966
    :cond_5
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 967
    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getEapType(Landroid/net/wifi/ScanResult;)I

    move-result v1

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    .line 970
    :cond_6
    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isPskSaeTransitionMode(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsPskSaeTransitionMode:Z

    .line 971
    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isOweTransitionMode(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsOweTransitionMode:Z

    .line 974
    :cond_7
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 975
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :cond_8
    return-void

    :catchall_0
    move-exception p0

    .line 950
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private updateKey()V
    .locals 3

    .line 433
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mPasspointUniqueId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    goto :goto_0

    .line 437
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isOsuProvider()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/hotspot2/OsuProvider;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    goto :goto_0

    .line 440
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private updateMetered(Landroid/net/wifi/WifiNetworkScoreCache;)Z
    .locals 6

    .line 666
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    const/4 v1, 0x0

    .line 667
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 669
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_0

    .line 670
    invoke-static {v2}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v2

    .line 671
    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 673
    iget-boolean v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    iget-boolean p1, p1, Landroid/net/ScoredNetwork;->meteredHint:Z

    or-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    goto :goto_1

    .line 676
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 677
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 678
    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 682
    :cond_1
    iget-boolean v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    iget-boolean v4, v4, Landroid/net/ScoredNetwork;->meteredHint:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    goto :goto_0

    .line 684
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :cond_3
    :goto_1
    iget-boolean p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    if-eq v0, p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    :catchall_0
    move-exception p0

    .line 684
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private updateScores(Landroid/net/wifi/WifiNetworkScoreCache;J)Z
    .locals 8

    .line 586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 587
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 588
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 589
    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 593
    :cond_0
    iget-object v6, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    if-nez v6, :cond_1

    .line 595
    iget-object v6, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    new-instance v7, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    invoke-direct {v7, v5, v0, v1}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;-><init>(Landroid/net/ScoredNetwork;J)V

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 599
    :cond_1
    invoke-virtual {v6, v5, v0, v1}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->update(Landroid/net/ScoredNetwork;J)V

    goto :goto_0

    .line 602
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, p2

    .line 606
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 607
    new-instance p2, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$eeEFeIMR6UCrf_qCtv1iNqRPOo8;

    invoke-direct {p2, v0, v1, p1}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$eeEFeIMR6UCrf_qCtv1iNqRPOo8;-><init>(JLjava/util/Iterator;)V

    invoke-interface {p1, p2}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 613
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateSpeed()Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 602
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private updateSpeed()Z
    .locals 5

    .line 620
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 621
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->generateAverageSpeedForSsid()I

    move-result v1

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 624
    :goto_0
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 625
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v4, v1, v3

    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%s: Set speed to %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "SettingsLib.AccessPoint"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method


# virtual methods
.method public compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I
    .locals 3

    .line 462
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 466
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 467
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 470
    :cond_3
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 471
    :cond_4
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 474
    :cond_5
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 475
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    .line 478
    :cond_6
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 480
    iget v1, p1, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    move-result v1

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 481
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    move-result v0

    sub-int/2addr v1, v0

    if-eqz v1, :cond_7

    return v1

    .line 487
    :cond_7
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 493
    :cond_8
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 95
    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 498
    instance-of v0, p1, Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 499
    :cond_0
    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getBssid()Ljava/lang/String;
    .locals 0

    .line 1066
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    return-object p0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 878
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method public getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .line 1089
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p0, :cond_0

    .line 1090
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SettingsLib.AccessPoint"

    const-string v0, "NetworkInfo is null, cannot return detailed state"

    .line 1092
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInfo()Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 891
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 748
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getLevel()I
    .locals 1

    .line 902
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    move-result p0

    return p0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 0

    .line 988
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public getSecurity()I
    .locals 0

    .line 992
    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    return p0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 4

    .line 996
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 997
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_e

    .line 1002
    :cond_0
    iget-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsPskSaeTransitionMode:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 1003
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_psk_sae:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1004
    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_psk_sae:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 1006
    :cond_2
    iget-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsOweTransitionMode:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    .line 1007
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_none_owe:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1008
    :cond_3
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_none_owe:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    .line 1011
    :cond_4
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    if-eqz p1, :cond_15

    const-string p0, ""

    goto/16 :goto_d

    :pswitch_0
    if-eqz p1, :cond_5

    .line 1028
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_eap_suiteb:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 1029
    :cond_5
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_eap_suiteb:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :pswitch_1
    if-eqz p1, :cond_6

    .line 1050
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_sae:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 1051
    :cond_6
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_sae:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0

    :pswitch_2
    if-eqz p1, :cond_7

    .line 1053
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_owe:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 1054
    :cond_7
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_owe:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_4
    return-object p0

    .line 1013
    :pswitch_3
    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    if-eq p0, v3, :cond_b

    if-eq p0, v2, :cond_9

    if-eqz p1, :cond_8

    .line 1024
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_eap:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 1025
    :cond_8
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_eap:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_5
    return-object p0

    :cond_9
    if-eqz p1, :cond_a

    .line 1019
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_eap_wpa2_wpa3:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 1020
    :cond_a
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_eap_wpa2_wpa3:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_b
    if-eqz p1, :cond_c

    .line 1015
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_eap_wpa:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 1016
    :cond_c
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_eap_wpa:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_7
    return-object p0

    .line 1031
    :pswitch_4
    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    if-eq p0, v3, :cond_12

    if-eq p0, v2, :cond_10

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    if-eqz p1, :cond_d

    .line 1043
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_psk_generic:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    .line 1044
    :cond_d
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_psk_generic:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_8
    return-object p0

    :cond_e
    if-eqz p1, :cond_f

    .line 1039
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_wpa_wpa2:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    .line 1040
    :cond_f
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_wpa_wpa2:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0

    :cond_10
    if-eqz p1, :cond_11

    .line 1036
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_wpa2:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    .line 1037
    :cond_11
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_wpa2:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_a
    return-object p0

    :cond_12
    if-eqz p1, :cond_13

    .line 1033
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_wpa:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    .line 1034
    :cond_13
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_wpa:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_b
    return-object p0

    :pswitch_5
    if-eqz p1, :cond_14

    .line 1047
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_wep:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    .line 1048
    :cond_14
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_wep:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_c
    return-object p0

    .line 1057
    :cond_15
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_none:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_d
    return-object p0

    :cond_16
    :goto_e
    if-eqz p1, :cond_17

    .line 998
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_eap:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    .line 999
    :cond_17
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_eap:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_f
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getSpeed()I
    .locals 0

    .line 1586
    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    return p0
.end method

.method public getSsidStr()Ljava/lang/String;
    .locals 0

    .line 1062
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1130
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1131
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    return-object p0

    .line 1132
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mProviderFriendlyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1133
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mProviderFriendlyName:Ljava/lang/String;

    return-object p0

    .line 1134
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isOsuProvider()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1135
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1136
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1137
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    add-int/2addr v1, v0

    .line 506
    :cond_0
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v0, v0, 0x13

    add-int/2addr v1, v0

    .line 507
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v0, v0, 0x17

    add-int/2addr v1, v0

    .line 508
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1d

    add-int/2addr v1, p0

    return v1
.end method

.method public isActive()Z
    .locals 2

    .line 1260
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 1262
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isConnectable()Z
    .locals 2

    .line 1266
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEphemeral()Z
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p0, :cond_0

    .line 1271
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMetered()Z
    .locals 1

    .line 983
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 984
    invoke-static {v0, p0}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isOsuProvider()Z
    .locals 0

    .line 1292
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPasspoint()Z
    .locals 0

    .line 1278
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPasspointConfig()Z
    .locals 1

    .line 1285
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mPasspointUniqueId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReachable()Z
    .locals 1

    .line 1638
    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSaved()Z
    .locals 0

    .line 1362
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$setScanResults$1$AccessPoint()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->lambda$setScanResults$1()V

    return-void
.end method

.method public synthetic lambda$setScanResults$2$AccessPoint()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->lambda$setScanResults$2()V

    return-void
.end method

.method public synthetic lambda$update$3$AccessPoint()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->lambda$update$3()V

    return-void
.end method

.method public synthetic lambda$update$4$AccessPoint()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->lambda$update$4()V

    return-void
.end method

.method public synthetic lambda$update$5$AccessPoint()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->lambda$update$5()V

    return-void
.end method

.method loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 423
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 424
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 425
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 426
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 427
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method matches(Landroid/net/wifi/ScanResult;)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 838
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isOsuProvider()Z

    move-result v1

    if-nez v1, :cond_b

    .line 842
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSameSsidOrBssid(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 846
    :cond_1
    iget-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsPskSaeTransitionMode:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 847
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "SAE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 848
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 850
    :cond_2
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "PSK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    .line 854
    :cond_3
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 855
    :cond_4
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isPskSaeTransitionMode(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    .line 860
    :cond_5
    iget-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsOweTransitionMode:Z

    const/4 v3, 0x4

    if-eqz v1, :cond_7

    .line 861
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/content/Context;Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 862
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result v3

    if-eqz v3, :cond_6

    return v2

    :cond_6
    if-nez v1, :cond_9

    return v2

    .line 868
    :cond_7
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-eq v1, v3, :cond_8

    if-nez v1, :cond_9

    .line 869
    :cond_8
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isOweTransitionMode(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_9

    return v2

    .line 874
    :cond_9
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/content/Context;Landroid/net/wifi/ScanResult;)I

    move-result p0

    if-ne v1, p0, :cond_a

    move v0, v2

    :cond_a
    return v0

    .line 839
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Should not matches a Passpoint by ScanResult"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public matches(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    .line 794
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 795
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 803
    :cond_2
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 804
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsPskSaeTransitionMode:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 805
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    return v2

    .line 812
    :cond_4
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsOweTransitionMode:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    .line 813
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    if-nez v0, :cond_6

    return v2

    .line 820
    :cond_6
    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    if-ne p0, p1, :cond_7

    move v1, v2

    :cond_7
    :goto_0
    return v1
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 5

    .line 1395
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "key_ssid"

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "key_security"

    .line 1396
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "key_speed"

    .line 1397
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "key_psktype"

    .line 1398
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "eap_psktype"

    .line 1399
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1400
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    const-string v1, "key_config"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    const-string v0, "key_wifiinfo"

    .line 1401
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1402
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "key_scanresults"

    .line 1403
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 1404
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    .line 1405
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [Landroid/os/Parcelable;

    .line 1404
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    .line 1403
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1406
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "key_scorednetworkcache"

    .line 1407
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    .line 1408
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1407
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1409
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_2

    const-string v1, "key_networkinfo"

    .line 1410
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1412
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mPasspointUniqueId:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "key_passpoint_unique_id"

    .line 1413
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "key_fqdn"

    .line 1416
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mProviderFriendlyName:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v1, "key_provider_friendly_name"

    .line 1419
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "key_subscription_expiration_time_in_millis"

    .line 1421
    iget-wide v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSubscriptionExpirationTimeInMillis:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "key_passpoint_configuration_version"

    .line 1423
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mPasspointConfigurationVersion:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "key_is_psk_sae_transition_mode"

    .line 1424
    iget-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsPskSaeTransitionMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "key_is_owe_transition_mode"

    .line 1425
    iget-boolean p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsOweTransitionMode:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 1406
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method setRssi(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1578
    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    return-void
.end method

.method setScanResults(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1439
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SettingsLib.AccessPoint"

    const-string p1, "Cannot set scan results to empty list"

    .line 1440
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1446
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isOsuProvider()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1447
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 1448
    invoke-virtual {p0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "SettingsLib.AccessPoint"

    const-string v0, "ScanResult %s\nkey of %s did not match current AP key %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    .line 1449
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 1451
    invoke-static {v4, v1}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/content/Context;Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    aput-object p0, v2, v1

    .line 1449
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1457
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 1458
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1459
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 1460
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1461
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1462
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateBestRssiInfo()V

    .line 1463
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result p1

    if-lez p1, :cond_3

    if-eq p1, v0, :cond_3

    .line 1468
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateSpeed()Z

    .line 1469
    new-instance p1, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$1MyryaP_FPxIoOWXMURmr9gSCko;

    invoke-direct {p1, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$1MyryaP_FPxIoOWXMURmr9gSCko;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1477
    :cond_3
    new-instance p1, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$l7HvoRkL0mn502GEmI0-49YA2Xk;

    invoke-direct {p1, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$l7HvoRkL0mn502GEmI0-49YA2Xk;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1461
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method setScanResultsPasspoint(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1492
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1493
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1494
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 1495
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsRoaming:Z

    .line 1496
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1497
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1499
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResults(Ljava/util/Collection;)V

    goto :goto_0

    .line 1500
    :cond_1
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 1501
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsRoaming:Z

    .line 1502
    invoke-virtual {p0, p2}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResults(Ljava/util/Collection;)V

    .line 1504
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 1370
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mTag:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessPoint("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 515
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ":"

    .line 517
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    const/16 v2, 0x2c

    if-eqz v1, :cond_1

    .line 520
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "saved"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 526
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "ephemeral"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_3
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 529
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "connectable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_4
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_5

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5

    .line 532
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    invoke-static {v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;->securityToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, ",level="

    .line 534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 535
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    if-eqz v1, :cond_6

    const-string v1, ",speed="

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    const-string v1, ",metered="

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isMetered()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 540
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, ",rssi="

    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 542
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, ",scan cache size="

    .line 543
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    .line 544
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    add-int/2addr v2, p0

    .line 543
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 545
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_0
    const/16 p0, 0x29

    .line 548
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method update(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 1564
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_0

    .line 1565
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    .line 1568
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 1569
    new-instance p1, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$9sqJQrSDLPPBbVafxevqWDKYWqc;

    invoke-direct {p1, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$9sqJQrSDLPPBbVafxevqWDKYWqc;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 4

    .line 1521
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    .line 1522
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/wifi/AccessPoint;->isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1523
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_0

    move v1, v2

    .line 1524
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eq v3, p1, :cond_1

    .line 1528
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 1530
    :cond_1
    iget p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    if-eq p1, v3, :cond_2

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    const/16 v3, -0x7f

    if-eq p1, v3, :cond_2

    .line 1531
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    :goto_0
    move v1, v2

    goto :goto_1

    .line 1533
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 1534
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq p1, v3, :cond_3

    goto :goto_0

    .line 1537
    :cond_3
    :goto_1
    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 1538
    iput-object p3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_2

    .line 1539
    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 1541
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 1542
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    move v1, v2

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 1544
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz p1, :cond_6

    .line 1545
    new-instance p1, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$JaUlF2EAzKzfGanJG2psL2BkaMQ;

    invoke-direct {p1, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$JaUlF2EAzKzfGanJG2psL2BkaMQ;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1551
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result p1

    if-eq v0, p1, :cond_6

    .line 1552
    new-instance p1, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$JAV3jilCOosKFRJBWen4S373XgU;

    invoke-direct {p1, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$JAV3jilCOosKFRJBWen4S373XgU;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_6
    return v1
.end method

.method update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 566
    invoke-direct {p0, p1, p3, p4}, Lcom/android/settingslib/wifi/AccessPoint;->updateScores(Landroid/net/wifi/WifiNetworkScoreCache;J)Z

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    .line 568
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->updateMetered(Landroid/net/wifi/WifiNetworkScoreCache;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
