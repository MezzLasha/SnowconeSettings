.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$OWBcbAkSkATG_s4vd9BoVVxu7OM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$OWBcbAkSkATG_s4vd9BoVVxu7OM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$OWBcbAkSkATG_s4vd9BoVVxu7OM;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$OWBcbAkSkATG_s4vd9BoVVxu7OM;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$OWBcbAkSkATG_s4vd9BoVVxu7OM;->INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$OWBcbAkSkATG_s4vd9BoVVxu7OM;

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

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateOsuWifiEntryScans$11(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
