.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$WifiSettings$eRNpVLw0snHZGoiX0EsnK9qC_cc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/wifi/ConnectedWifiEntryPreference$OnGearClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/WifiSettings;

.field public final synthetic f$1:Lcom/android/settings/wifi/ConnectedWifiEntryPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$eRNpVLw0snHZGoiX0EsnK9qC_cc;->f$0:Lcom/android/settings/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$eRNpVLw0snHZGoiX0EsnK9qC_cc;->f$1:Lcom/android/settings/wifi/ConnectedWifiEntryPreference;

    return-void
.end method


# virtual methods
.method public final onGearClick(Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$eRNpVLw0snHZGoiX0EsnK9qC_cc;->f$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$eRNpVLw0snHZGoiX0EsnK9qC_cc;->f$1:Lcom/android/settings/wifi/ConnectedWifiEntryPreference;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/wifi/WifiSettings;->lambda$updateWifiEntryPreferences$7$WifiSettings(Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V

    return-void
.end method
