.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$SavedNetworkTracker$8l48iaUknCIJ7uKKt_Xwj1gG02o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$SavedNetworkTracker$8l48iaUknCIJ7uKKt_Xwj1gG02o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/-$$Lambda$SavedNetworkTracker$8l48iaUknCIJ7uKKt_Xwj1gG02o;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/-$$Lambda$SavedNetworkTracker$8l48iaUknCIJ7uKKt_Xwj1gG02o;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/-$$Lambda$SavedNetworkTracker$8l48iaUknCIJ7uKKt_Xwj1gG02o;->INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$SavedNetworkTracker$8l48iaUknCIJ7uKKt_Xwj1gG02o;

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

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {p1}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->lambda$updateStandardWifiEntryConfigs$1(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method
