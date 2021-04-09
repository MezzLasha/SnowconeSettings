.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$NetworkScanHelper$NetworkScanSyncTask$9BjdylRQKmLvknGDvxT4iSvZUf4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$NetworkScanHelper$NetworkScanSyncTask$9BjdylRQKmLvknGDvxT4iSvZUf4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkScanHelper$NetworkScanSyncTask$9BjdylRQKmLvknGDvxT4iSvZUf4;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/-$$Lambda$NetworkScanHelper$NetworkScanSyncTask$9BjdylRQKmLvknGDvxT4iSvZUf4;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkScanHelper$NetworkScanSyncTask$9BjdylRQKmLvknGDvxT4iSvZUf4;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$NetworkScanHelper$NetworkScanSyncTask$9BjdylRQKmLvknGDvxT4iSvZUf4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/internal/telephony/OperatorInfo;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanSyncTask;->lambda$run$0(Lcom/android/internal/telephony/OperatorInfo;)Landroid/telephony/CellInfo;

    move-result-object p0

    return-object p0
.end method
