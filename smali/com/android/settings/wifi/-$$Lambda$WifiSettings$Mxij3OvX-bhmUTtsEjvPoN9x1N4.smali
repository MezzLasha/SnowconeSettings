.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$WifiSettings$Mxij3OvX-bhmUTtsEjvPoN9x1N4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiEntryPreference$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/WifiSettings;

.field public final synthetic f$1:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$Mxij3OvX-bhmUTtsEjvPoN9x1N4;->f$0:Lcom/android/settings/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$Mxij3OvX-bhmUTtsEjvPoN9x1N4;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method


# virtual methods
.method public final onButtonClick(Lcom/android/settingslib/wifi/WifiEntryPreference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$Mxij3OvX-bhmUTtsEjvPoN9x1N4;->f$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$Mxij3OvX-bhmUTtsEjvPoN9x1N4;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/wifi/WifiSettings;->lambda$updateWifiEntryPreferences$8$WifiSettings(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settingslib/wifi/WifiEntryPreference;)V

    return-void
.end method
