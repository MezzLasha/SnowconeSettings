.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$XKFmRK1wC6XPPtAe52jrXpswkNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$XKFmRK1wC6XPPtAe52jrXpswkNY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$XKFmRK1wC6XPPtAe52jrXpswkNY;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$XKFmRK1wC6XPPtAe52jrXpswkNY;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$XKFmRK1wC6XPPtAe52jrXpswkNY;->INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$XKFmRK1wC6XPPtAe52jrXpswkNY;

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

    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    invoke-static {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiEntries$1(Lcom/android/wifitrackerlib/StandardWifiEntry;)Z

    move-result p0

    return p0
.end method
