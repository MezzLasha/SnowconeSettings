.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$WifiConfigController2$02jllJg-vrL0Ftb3B3eYrpaGqRc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/wifi/-$$Lambda$WifiConfigController2$02jllJg-vrL0Ftb3B3eYrpaGqRc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController2$02jllJg-vrL0Ftb3B3eYrpaGqRc;

    invoke-direct {v0}, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController2$02jllJg-vrL0Ftb3B3eYrpaGqRc;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController2$02jllJg-vrL0Ftb3B3eYrpaGqRc;->INSTANCE:Lcom/android/settings/wifi/-$$Lambda$WifiConfigController2$02jllJg-vrL0Ftb3B3eYrpaGqRc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigController2;->lambda$loadSims$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
