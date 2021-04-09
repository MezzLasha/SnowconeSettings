.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$Utils$dA04_xkzqvL23f7tM_2FGZN3RYw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$Utils$dA04_xkzqvL23f7tM_2FGZN3RYw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/-$$Lambda$Utils$dA04_xkzqvL23f7tM_2FGZN3RYw;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/-$$Lambda$Utils$dA04_xkzqvL23f7tM_2FGZN3RYw;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/-$$Lambda$Utils$dA04_xkzqvL23f7tM_2FGZN3RYw;->INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$Utils$dA04_xkzqvL23f7tM_2FGZN3RYw;

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

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-static {p1}, Lcom/android/wifitrackerlib/Utils;->lambda$mapScanResultsToKey$2(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
