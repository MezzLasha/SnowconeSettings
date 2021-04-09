.class public final synthetic Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$_l4yKsl-hclBlwjTeu4zLUT3_sU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/os/ParcelUuid;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ParcelUuid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$_l4yKsl-hclBlwjTeu4zLUT3_sU;->f$0:Landroid/os/ParcelUuid;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$_l4yKsl-hclBlwjTeu4zLUT3_sU;->f$0:Landroid/os/ParcelUuid;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->lambda$findAllSubscriptionsInGroup$12(Landroid/os/ParcelUuid;Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method
