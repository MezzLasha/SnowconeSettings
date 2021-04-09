.class public final synthetic Lcom/android/settings/sim/receivers/-$$Lambda$SfCkqdD9NsKa6vX0hGAzG4ODL54;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/sim/receivers/-$$Lambda$SfCkqdD9NsKa6vX0hGAzG4ODL54;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/sim/receivers/-$$Lambda$SfCkqdD9NsKa6vX0hGAzG4ODL54;

    invoke-direct {v0}, Lcom/android/settings/sim/receivers/-$$Lambda$SfCkqdD9NsKa6vX0hGAzG4ODL54;-><init>()V

    sput-object v0, Lcom/android/settings/sim/receivers/-$$Lambda$SfCkqdD9NsKa6vX0hGAzG4ODL54;->INSTANCE:Lcom/android/settings/sim/receivers/-$$Lambda$SfCkqdD9NsKa6vX0hGAzG4ODL54;

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

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p0

    return p0
.end method
