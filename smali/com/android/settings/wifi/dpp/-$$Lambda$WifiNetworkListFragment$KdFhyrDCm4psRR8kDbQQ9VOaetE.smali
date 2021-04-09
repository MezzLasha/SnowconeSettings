.class public final synthetic Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$KdFhyrDCm4psRR8kDbQQ9VOaetE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$KdFhyrDCm4psRR8kDbQQ9VOaetE;->f$0:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$KdFhyrDCm4psRR8kDbQQ9VOaetE;->f$0:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->lambda$onSavedWifiEntriesChanged$0$WifiNetworkListFragment(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method
