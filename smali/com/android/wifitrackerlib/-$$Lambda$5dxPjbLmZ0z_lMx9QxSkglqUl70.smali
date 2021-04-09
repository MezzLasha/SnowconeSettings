.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$5dxPjbLmZ0z_lMx9QxSkglqUl70;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$5dxPjbLmZ0z_lMx9QxSkglqUl70;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/-$$Lambda$5dxPjbLmZ0z_lMx9QxSkglqUl70;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/-$$Lambda$5dxPjbLmZ0z_lMx9QxSkglqUl70;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/-$$Lambda$5dxPjbLmZ0z_lMx9QxSkglqUl70;->INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$5dxPjbLmZ0z_lMx9QxSkglqUl70;

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

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->wifiConfigToStandardWifiEntryKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
