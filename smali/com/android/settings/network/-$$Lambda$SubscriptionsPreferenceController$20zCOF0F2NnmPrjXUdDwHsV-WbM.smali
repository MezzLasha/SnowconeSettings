.class public final synthetic Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$20zCOF0F2NnmPrjXUdDwHsV-WbM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/SubscriptionsPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/SubscriptionsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$20zCOF0F2NnmPrjXUdDwHsV-WbM;->f$0:Lcom/android/settings/network/SubscriptionsPreferenceController;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$20zCOF0F2NnmPrjXUdDwHsV-WbM;->f$0:Lcom/android/settings/network/SubscriptionsPreferenceController;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController;->lambda$isAvailable$3$SubscriptionsPreferenceController(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method
