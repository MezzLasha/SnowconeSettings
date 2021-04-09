.class public final synthetic Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$Co3wKJUKqK9nPh8L1hLVUAlQi_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

.field public final synthetic f$1:Landroid/net/NetworkInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$Co3wKJUKqK9nPh8L1hLVUAlQi_8;->f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$Co3wKJUKqK9nPh8L1hLVUAlQi_8;->f$1:Landroid/net/NetworkInfo;

    return-void
.end method


# virtual methods
.method public final onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$Co3wKJUKqK9nPh8L1hLVUAlQi_8;->f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$Co3wKJUKqK9nPh8L1hLVUAlQi_8;->f$1:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->lambda$onResume$0$WifiP2pSettings(Landroid/net/NetworkInfo;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    return-void
.end method
