.class public final synthetic Lcom/android/settings/wifi/tether/-$$Lambda$HWEOUzu5hUkemTLBYR5WJmc6XaU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/wifi/tether/-$$Lambda$HWEOUzu5hUkemTLBYR5WJmc6XaU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/tether/-$$Lambda$HWEOUzu5hUkemTLBYR5WJmc6XaU;

    invoke-direct {v0}, Lcom/android/settings/wifi/tether/-$$Lambda$HWEOUzu5hUkemTLBYR5WJmc6XaU;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/tether/-$$Lambda$HWEOUzu5hUkemTLBYR5WJmc6XaU;->INSTANCE:Lcom/android/settings/wifi/tether/-$$Lambda$HWEOUzu5hUkemTLBYR5WJmc6XaU;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
