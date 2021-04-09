.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$Z5JRGFc_LG0FTK7Sp5pmnvettp8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$Z5JRGFc_LG0FTK7Sp5pmnvettp8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$Z5JRGFc_LG0FTK7Sp5pmnvettp8;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$Z5JRGFc_LG0FTK7Sp5pmnvettp8;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$Z5JRGFc_LG0FTK7Sp5pmnvettp8;->INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$Z5JRGFc_LG0FTK7Sp5pmnvettp8;

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

    check-cast p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-static {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updatePasspointConfigurations$16(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
