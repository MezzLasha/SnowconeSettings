.class public final synthetic Lcom/android/settingslib/connectivity/-$$Lambda$ConnectivitySubsystemsRecoveryManager$kcnPcFvN6vKB_S4lsLwbD-qfVog;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;Ljava/lang/String;Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/connectivity/-$$Lambda$ConnectivitySubsystemsRecoveryManager$kcnPcFvN6vKB_S4lsLwbD-qfVog;->f$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    iput-object p2, p0, Lcom/android/settingslib/connectivity/-$$Lambda$ConnectivitySubsystemsRecoveryManager$kcnPcFvN6vKB_S4lsLwbD-qfVog;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settingslib/connectivity/-$$Lambda$ConnectivitySubsystemsRecoveryManager$kcnPcFvN6vKB_S4lsLwbD-qfVog;->f$2:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/connectivity/-$$Lambda$ConnectivitySubsystemsRecoveryManager$kcnPcFvN6vKB_S4lsLwbD-qfVog;->f$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    iget-object v1, p0, Lcom/android/settingslib/connectivity/-$$Lambda$ConnectivitySubsystemsRecoveryManager$kcnPcFvN6vKB_S4lsLwbD-qfVog;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/connectivity/-$$Lambda$ConnectivitySubsystemsRecoveryManager$kcnPcFvN6vKB_S4lsLwbD-qfVog;->f$2:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;

    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->lambda$triggerSubsystemRestart$3$ConnectivitySubsystemsRecoveryManager(Ljava/lang/String;Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;)V

    return-void
.end method
