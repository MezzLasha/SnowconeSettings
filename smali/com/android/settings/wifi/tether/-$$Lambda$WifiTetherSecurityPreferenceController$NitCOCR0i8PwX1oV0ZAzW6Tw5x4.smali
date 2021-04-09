.class public final synthetic Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSecurityPreferenceController$NitCOCR0i8PwX1oV0ZAzW6Tw5x4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSecurityPreferenceController$NitCOCR0i8PwX1oV0ZAzW6Tw5x4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSecurityPreferenceController$NitCOCR0i8PwX1oV0ZAzW6Tw5x4;

    invoke-direct {v0}, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSecurityPreferenceController$NitCOCR0i8PwX1oV0ZAzW6Tw5x4;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSecurityPreferenceController$NitCOCR0i8PwX1oV0ZAzW6Tw5x4;->INSTANCE:Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSecurityPreferenceController$NitCOCR0i8PwX1oV0ZAzW6Tw5x4;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->lambda$updateDisplay$0(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method
