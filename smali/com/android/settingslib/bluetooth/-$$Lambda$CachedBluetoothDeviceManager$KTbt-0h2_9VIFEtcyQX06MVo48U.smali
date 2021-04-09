.class public final synthetic Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$KTbt-0h2_9VIFEtcyQX06MVo48U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$KTbt-0h2_9VIFEtcyQX06MVo48U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$KTbt-0h2_9VIFEtcyQX06MVo48U;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$KTbt-0h2_9VIFEtcyQX06MVo48U;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$KTbt-0h2_9VIFEtcyQX06MVo48U;->INSTANCE:Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$KTbt-0h2_9VIFEtcyQX06MVo48U;

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

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->lambda$clearNonBondedDevices$0(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    return p0
.end method
