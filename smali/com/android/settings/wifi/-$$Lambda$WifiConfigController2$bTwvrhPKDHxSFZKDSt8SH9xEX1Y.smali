.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$WifiConfigController2$bTwvrhPKDHxSFZKDSt8SH9xEX1Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/wifi/-$$Lambda$WifiConfigController2$bTwvrhPKDHxSFZKDSt8SH9xEX1Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController2$bTwvrhPKDHxSFZKDSt8SH9xEX1Y;

    invoke-direct {v0}, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController2$bTwvrhPKDHxSFZKDSt8SH9xEX1Y;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController2$bTwvrhPKDHxSFZKDSt8SH9xEX1Y;->INSTANCE:Lcom/android/settings/wifi/-$$Lambda$WifiConfigController2$bTwvrhPKDHxSFZKDSt8SH9xEX1Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigController2;->lambda$loadCertificates$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
