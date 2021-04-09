.class public final synthetic Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$pOoQH7M5m-_Cp3-XcTKdaczUhPg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$pOoQH7M5m-_Cp3-XcTKdaczUhPg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$pOoQH7M5m-_Cp3-XcTKdaczUhPg;

    invoke-direct {v0}, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$pOoQH7M5m-_Cp3-XcTKdaczUhPg;-><init>()V

    sput-object v0, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$pOoQH7M5m-_Cp3-XcTKdaczUhPg;->INSTANCE:Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$pOoQH7M5m-_Cp3-XcTKdaczUhPg;

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

    invoke-static {p1}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getUniqueSubscriptionDisplayNames$9(Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
