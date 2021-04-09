.class public Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;
.super Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;
.source "SavedBluetoothDeviceUpdater.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DBG:Z


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mDisplayConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SavedBluetoothDeviceUpdater"

    const/4 v1, 0x3

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    .line 54
    instance-of p1, p2, Lcom/android/settings/connecteddevice/PreviouslyConnectedDeviceDashboardFragment;

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;->mDisplayConnected:Z

    .line 55
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method private removePreferenceIfNecessary(Ljava/util/List;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;",
            ")V"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 80
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    invoke-virtual {p2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public forceUpdate()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 62
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 64
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getMostRecentlyConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 65
    invoke-direct {p0, v1, v0}, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;->removePreferenceIfNecessary(Ljava/util/List;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;)V

    .line 66
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 67
    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;->update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->removeAllDevicesFromPreference()V

    :cond_2
    return-void
.end method

.method protected getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "saved_bt"

    return-object p0
.end method

.method public isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 3

    .line 101
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 102
    sget-boolean v1, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;->DBG:Z

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFilterMatched() device name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", is connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", is profile connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SavedBluetoothDeviceUpdater"

    .line 103
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;->mDisplayConnected:Z

    if-nez p0, :cond_1

    .line 108
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    .line 114
    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 115
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setActive()Z

    move-result p0

    return p0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect()V

    const/4 p0, 0x1

    return p0
.end method

.method public update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;->isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :goto_0
    return-void
.end method
