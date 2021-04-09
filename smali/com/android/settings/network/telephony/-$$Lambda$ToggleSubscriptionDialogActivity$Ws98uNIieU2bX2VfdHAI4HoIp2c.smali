.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$ToggleSubscriptionDialogActivity$Ws98uNIieU2bX2VfdHAI4HoIp2c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$ToggleSubscriptionDialogActivity$Ws98uNIieU2bX2VfdHAI4HoIp2c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$ToggleSubscriptionDialogActivity$Ws98uNIieU2bX2VfdHAI4HoIp2c;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/-$$Lambda$ToggleSubscriptionDialogActivity$Ws98uNIieU2bX2VfdHAI4HoIp2c;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/-$$Lambda$ToggleSubscriptionDialogActivity$Ws98uNIieU2bX2VfdHAI4HoIp2c;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$ToggleSubscriptionDialogActivity$Ws98uNIieU2bX2VfdHAI4HoIp2c;

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

    check-cast p1, Landroid/telephony/UiccSlotInfo;

    invoke-static {p1}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->lambda$isDsdsConditionSatisfied$0(Landroid/telephony/UiccSlotInfo;)Z

    move-result p0

    return p0
.end method
