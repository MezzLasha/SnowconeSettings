.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$AbstractMobileNetworkSettings$oboT3CRbmhCs5LNOGYbMC7I1ads;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$AbstractMobileNetworkSettings$oboT3CRbmhCs5LNOGYbMC7I1ads;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$AbstractMobileNetworkSettings$oboT3CRbmhCs5LNOGYbMC7I1ads;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/-$$Lambda$AbstractMobileNetworkSettings$oboT3CRbmhCs5LNOGYbMC7I1ads;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/-$$Lambda$AbstractMobileNetworkSettings$oboT3CRbmhCs5LNOGYbMC7I1ads;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$AbstractMobileNetworkSettings$oboT3CRbmhCs5LNOGYbMC7I1ads;

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

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->lambda$onExpandButtonClick$1(Lcom/android/settingslib/core/AbstractPreferenceController;)Z

    move-result p0

    return p0
.end method
