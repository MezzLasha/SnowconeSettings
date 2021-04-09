.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$NRMV-zwBzE2zavI6zxUGwEqgaAc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$NRMV-zwBzE2zavI6zxUGwEqgaAc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$NRMV-zwBzE2zavI6zxUGwEqgaAc;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$NRMV-zwBzE2zavI6zxUGwEqgaAc;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$NRMV-zwBzE2zavI6zxUGwEqgaAc;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$NRMV-zwBzE2zavI6zxUGwEqgaAc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;

    invoke-static {p1}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->lambda$unsetAvailabilityStatus$3(Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;)V

    return-void
.end method
