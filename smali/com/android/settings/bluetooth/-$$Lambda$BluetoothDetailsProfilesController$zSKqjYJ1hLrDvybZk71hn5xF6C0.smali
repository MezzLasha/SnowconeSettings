.class public final synthetic Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$zSKqjYJ1hLrDvybZk71hn5xF6C0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

.field public final synthetic f$1:Lcom/android/settingslib/bluetooth/A2dpProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;Lcom/android/settingslib/bluetooth/A2dpProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$zSKqjYJ1hLrDvybZk71hn5xF6C0;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    iput-object p2, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$zSKqjYJ1hLrDvybZk71hn5xF6C0;->f$1:Lcom/android/settingslib/bluetooth/A2dpProfile;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$zSKqjYJ1hLrDvybZk71hn5xF6C0;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    iget-object p0, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$zSKqjYJ1hLrDvybZk71hn5xF6C0;->f$1:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->lambda$maybeAddHighQualityAudioPref$0$BluetoothDetailsProfilesController(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
