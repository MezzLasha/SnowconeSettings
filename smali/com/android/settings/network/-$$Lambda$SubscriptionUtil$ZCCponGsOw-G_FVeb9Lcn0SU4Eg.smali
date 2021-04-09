.class public final synthetic Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$ZCCponGsOw-G_FVeb9Lcn0SU4Eg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$ZCCponGsOw-G_FVeb9Lcn0SU4Eg;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$ZCCponGsOw-G_FVeb9Lcn0SU4Eg;->f$0:Ljava/util/Set;

    check-cast p1, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getUniqueSubscriptionDisplayNames$8(Ljava/util/Set;Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;

    move-result-object p0

    return-object p0
.end method
