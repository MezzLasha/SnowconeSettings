.class Lcom/android/settingslib/wifi/WifiStatusTracker$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiStatusTracker;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 70
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiInfo;

    .line 71
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p2, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$200(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/wifi/WifiInfo;)V

    .line 72
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$000(Lcom/android/settingslib/wifi/WifiStatusTracker;)V

    .line 73
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$100(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$200(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/wifi/WifiInfo;)V

    .line 79
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$000(Lcom/android/settingslib/wifi/WifiStatusTracker;)V

    .line 80
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$100(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
