.class public final synthetic Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSecurityPreferenceController$3BBTM6KHRu-zo5i-Li3rH2YHUbk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSecurityPreferenceController$3BBTM6KHRu-zo5i-Li3rH2YHUbk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSecurityPreferenceController$3BBTM6KHRu-zo5i-Li3rH2YHUbk;

    invoke-direct {v0}, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSecurityPreferenceController$3BBTM6KHRu-zo5i-Li3rH2YHUbk;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSecurityPreferenceController$3BBTM6KHRu-zo5i-Li3rH2YHUbk;->INSTANCE:Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSecurityPreferenceController$3BBTM6KHRu-zo5i-Li3rH2YHUbk;

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

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->lambda$updateDisplay$1(I)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
