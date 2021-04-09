.class public final synthetic Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$CEFnT1eBBYOetUCrHeVhiTVHO_0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$CEFnT1eBBYOetUCrHeVhiTVHO_0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$CEFnT1eBBYOetUCrHeVhiTVHO_0;

    invoke-direct {v0}, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$CEFnT1eBBYOetUCrHeVhiTVHO_0;-><init>()V

    sput-object v0, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$CEFnT1eBBYOetUCrHeVhiTVHO_0;->INSTANCE:Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$CEFnT1eBBYOetUCrHeVhiTVHO_0;

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

    check-cast p1, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;

    invoke-static {p1}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getUniqueSubscriptionDisplayNames$10(Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
