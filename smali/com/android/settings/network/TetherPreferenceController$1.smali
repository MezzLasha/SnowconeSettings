.class Lcom/android/settings/network/TetherPreferenceController$1;
.super Ljava/lang/Object;
.source "TetherPreferenceController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/TetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/TetherPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/TetherPreferenceController;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$1;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$1;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/TetherPreferenceController;->access$000(Lcom/android/settings/network/TetherPreferenceController;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 70
    iget-object p0, p0, Lcom/android/settings/network/TetherPreferenceController$1;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/network/TetherPreferenceController;->updateSummary()V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/settings/network/TetherPreferenceController$1;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/TetherPreferenceController;->access$000(Lcom/android/settings/network/TetherPreferenceController;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
