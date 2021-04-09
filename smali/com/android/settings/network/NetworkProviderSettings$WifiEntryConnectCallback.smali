.class Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;
.super Ljava/lang/Object;
.source "NetworkProviderSettings.java"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/NetworkProviderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiEntryConnectCallback"
.end annotation


# instance fields
.field final mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field final mEditIfNoConfig:Z

.field final mFullScreenEdit:Z

.field final synthetic this$0:Lcom/android/settings/network/NetworkProviderSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;ZZ)V
    .locals 0

    .line 1027
    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 1029
    iput-boolean p3, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mEditIfNoConfig:Z

    .line 1030
    iput-boolean p4, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mFullScreenEdit:Z

    return-void
.end method


# virtual methods
.method public onConnectResult(I)V
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-static {v0}, Lcom/android/settings/network/NetworkProviderSettings;->access$300(Lcom/android/settings/network/NetworkProviderSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1040
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-static {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->access$102(Lcom/android/settings/network/NetworkProviderSettings;Z)Z

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_3

    .line 1042
    iget-boolean p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mEditIfNoConfig:Z

    if-eqz p1, :cond_4

    .line 1044
    iget-boolean p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mFullScreenEdit:Z

    if-eqz p1, :cond_2

    .line 1045
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {p1, p0}, Lcom/android/settings/network/NetworkProviderSettings;->access$400(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_0

    .line 1047
    :cond_2
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {p1, p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->access$500(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 1051
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_failed_connect_message:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1052
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void
.end method
