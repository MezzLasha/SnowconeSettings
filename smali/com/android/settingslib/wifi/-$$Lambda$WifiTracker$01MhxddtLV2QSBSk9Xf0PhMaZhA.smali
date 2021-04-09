.class public final synthetic Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$01MhxddtLV2QSBSk9Xf0PhMaZhA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$01MhxddtLV2QSBSk9Xf0PhMaZhA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$01MhxddtLV2QSBSk9Xf0PhMaZhA;

    invoke-direct {v0}, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$01MhxddtLV2QSBSk9Xf0PhMaZhA;-><init>()V

    sput-object v0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$01MhxddtLV2QSBSk9Xf0PhMaZhA;->INSTANCE:Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$01MhxddtLV2QSBSk9Xf0PhMaZhA;

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

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->lambda$updateAccessPoints$1(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method
