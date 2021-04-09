.class public final synthetic Lcom/android/settings/sim/-$$Lambda$SimActivationNotifier$BbOs-XFfg05QUo325DfhnrcAYvI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/sim/-$$Lambda$SimActivationNotifier$BbOs-XFfg05QUo325DfhnrcAYvI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/sim/-$$Lambda$SimActivationNotifier$BbOs-XFfg05QUo325DfhnrcAYvI;

    invoke-direct {v0}, Lcom/android/settings/sim/-$$Lambda$SimActivationNotifier$BbOs-XFfg05QUo325DfhnrcAYvI;-><init>()V

    sput-object v0, Lcom/android/settings/sim/-$$Lambda$SimActivationNotifier$BbOs-XFfg05QUo325DfhnrcAYvI;->INSTANCE:Lcom/android/settings/sim/-$$Lambda$SimActivationNotifier$BbOs-XFfg05QUo325DfhnrcAYvI;

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

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {p1}, Lcom/android/settings/sim/SimActivationNotifier;->lambda$sendNetworkConfigNotification$0(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method
