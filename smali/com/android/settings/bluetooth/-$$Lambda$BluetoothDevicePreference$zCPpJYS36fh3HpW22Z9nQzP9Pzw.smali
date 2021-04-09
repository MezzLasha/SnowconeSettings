.class public final synthetic Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDevicePreference$zCPpJYS36fh3HpW22Z9nQzP9Pzw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

.field public final synthetic f$1:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDevicePreference$zCPpJYS36fh3HpW22Z9nQzP9Pzw;->f$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iput-object p2, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDevicePreference$zCPpJYS36fh3HpW22Z9nQzP9Pzw;->f$1:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDevicePreference$zCPpJYS36fh3HpW22Z9nQzP9Pzw;->f$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object p0, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDevicePreference$zCPpJYS36fh3HpW22Z9nQzP9Pzw;->f$1:Landroid/util/Pair;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->lambda$onPreferenceAttributesChanged$0$BluetoothDevicePreference(Landroid/util/Pair;)V

    return-void
.end method
