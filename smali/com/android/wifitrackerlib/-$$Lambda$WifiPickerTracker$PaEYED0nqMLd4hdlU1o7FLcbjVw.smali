.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$PaEYED0nqMLd4hdlU1o7FLcbjVw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$PaEYED0nqMLd4hdlU1o7FLcbjVw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$PaEYED0nqMLd4hdlU1o7FLcbjVw;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$PaEYED0nqMLd4hdlU1o7FLcbjVw;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$PaEYED0nqMLd4hdlU1o7FLcbjVw;->INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$PaEYED0nqMLd4hdlU1o7FLcbjVw;

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

    invoke-static {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiConfigurations$13(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method
