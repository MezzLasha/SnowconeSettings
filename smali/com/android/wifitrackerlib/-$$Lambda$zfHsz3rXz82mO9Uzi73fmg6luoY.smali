.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$zfHsz3rXz82mO9Uzi73fmg6luoY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$zfHsz3rXz82mO9Uzi73fmg6luoY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/-$$Lambda$zfHsz3rXz82mO9Uzi73fmg6luoY;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/-$$Lambda$zfHsz3rXz82mO9Uzi73fmg6luoY;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/-$$Lambda$zfHsz3rXz82mO9Uzi73fmg6luoY;->INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$zfHsz3rXz82mO9Uzi73fmg6luoY;

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

    check-cast p1, Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
