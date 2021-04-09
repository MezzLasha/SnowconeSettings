.class public final synthetic Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDevicePreference$wHU5y2PXX58zK1pJxU3DI2eAzP4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDevicePreference$wHU5y2PXX58zK1pJxU3DI2eAzP4;->f$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDevicePreference$wHU5y2PXX58zK1pJxU3DI2eAzP4;->f$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->lambda$onPreferenceAttributesChanged$1$BluetoothDevicePreference()V

    return-void
.end method
