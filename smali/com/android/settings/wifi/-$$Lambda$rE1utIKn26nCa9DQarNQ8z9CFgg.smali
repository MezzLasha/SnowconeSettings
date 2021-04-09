.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$rE1utIKn26nCa9DQarNQ8z9CFgg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/wifi/-$$Lambda$rE1utIKn26nCa9DQarNQ8z9CFgg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$rE1utIKn26nCa9DQarNQ8z9CFgg;

    invoke-direct {v0}, Lcom/android/settings/wifi/-$$Lambda$rE1utIKn26nCa9DQarNQ8z9CFgg;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/-$$Lambda$rE1utIKn26nCa9DQarNQ8z9CFgg;->INSTANCE:Lcom/android/settings/wifi/-$$Lambda$rE1utIKn26nCa9DQarNQ8z9CFgg;

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

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
