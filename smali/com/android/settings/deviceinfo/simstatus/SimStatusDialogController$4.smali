.class Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$4;
.super Landroid/telephony/PhoneStateListener;
.source "SimStatusDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$1100(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;I)V

    .line 772
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$1200(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    return-void
.end method

.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$1802(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/TelephonyDisplayInfo;)Landroid/telephony/TelephonyDisplayInfo;

    .line 791
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$1200(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$1400(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    .line 783
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$1500(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V

    .line 784
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$1600(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V

    .line 785
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$1702(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 777
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$1300(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/SignalStrength;)V

    return-void
.end method
