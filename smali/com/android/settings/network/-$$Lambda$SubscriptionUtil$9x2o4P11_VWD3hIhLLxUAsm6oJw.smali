.class public final synthetic Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$9x2o4P11_VWD3hIhLLxUAsm6oJw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$9x2o4P11_VWD3hIhLLxUAsm6oJw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$9x2o4P11_VWD3hIhLLxUAsm6oJw;

    invoke-direct {v0}, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$9x2o4P11_VWD3hIhLLxUAsm6oJw;-><init>()V

    sput-object v0, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$9x2o4P11_VWD3hIhLLxUAsm6oJw;->INSTANCE:Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$9x2o4P11_VWD3hIhLLxUAsm6oJw;

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

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {p1}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getUniqueSubscriptionDisplayNames$0(Landroid/telephony/SubscriptionInfo;)Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;

    move-result-object p0

    return-object p0
.end method
