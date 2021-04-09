.class public final synthetic Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$qJWCO6_CyzUmo203bOBvKcBekm8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/telephony/SubscriptionManager;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SubscriptionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$qJWCO6_CyzUmo203bOBvKcBekm8;->f$0:Landroid/telephony/SubscriptionManager;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$qJWCO6_CyzUmo203bOBvKcBekm8;->f$0:Landroid/telephony/SubscriptionManager;

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getUniqueSubscriptionDisplayNames$1(Landroid/telephony/SubscriptionManager;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
