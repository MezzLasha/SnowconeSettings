.class Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$3;
.super Landroid/telephony/PhoneStateListener;
.source "ConnectivitySubsystemsRecoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;


# direct methods
.method constructor <init>(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$3;->this$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRadioPowerStateChanged(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$3;->this$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    invoke-static {v0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->access$400(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$3;->this$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    invoke-static {v0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->access$500(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$3;->this$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    invoke-static {v0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->access$600(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 83
    iget-object p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$3;->this$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->access$402(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;Z)Z

    .line 84
    iget-object p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$3;->this$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    invoke-static {p1}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->access$600(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V

    .line 85
    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$3;->this$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    invoke-static {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->access$300(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V

    :cond_2
    return-void
.end method
