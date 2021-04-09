.class public final synthetic Lcom/android/settings/network/-$$Lambda$NetworkProviderSettings$M5VKOJvF2X93MRqmw_YgV9oZ4qo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/wifi/ConnectedWifiEntryPreference$OnGearClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/NetworkProviderSettings;

.field public final synthetic f$1:Lcom/android/settings/wifi/ConnectedWifiEntryPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/-$$Lambda$NetworkProviderSettings$M5VKOJvF2X93MRqmw_YgV9oZ4qo;->f$0:Lcom/android/settings/network/NetworkProviderSettings;

    iput-object p2, p0, Lcom/android/settings/network/-$$Lambda$NetworkProviderSettings$M5VKOJvF2X93MRqmw_YgV9oZ4qo;->f$1:Lcom/android/settings/wifi/ConnectedWifiEntryPreference;

    return-void
.end method


# virtual methods
.method public final onGearClick(Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/-$$Lambda$NetworkProviderSettings$M5VKOJvF2X93MRqmw_YgV9oZ4qo;->f$0:Lcom/android/settings/network/NetworkProviderSettings;

    iget-object p0, p0, Lcom/android/settings/network/-$$Lambda$NetworkProviderSettings$M5VKOJvF2X93MRqmw_YgV9oZ4qo;->f$1:Lcom/android/settings/wifi/ConnectedWifiEntryPreference;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$updateWifiEntryPreferences$6$NetworkProviderSettings(Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V

    return-void
.end method
