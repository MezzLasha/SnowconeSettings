.class public final synthetic Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$lGbCHWYZQsd3L6WMc7RSNz_UkPs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

.field public final synthetic f$1:Landroid/widget/LinearLayout;

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Landroid/widget/LinearLayout;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$lGbCHWYZQsd3L6WMc7RSNz_UkPs;->f$0:Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    iput-object p2, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$lGbCHWYZQsd3L6WMc7RSNz_UkPs;->f$1:Landroid/widget/LinearLayout;

    iput p3, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$lGbCHWYZQsd3L6WMc7RSNz_UkPs;->f$2:I

    iput-wide p4, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$lGbCHWYZQsd3L6WMc7RSNz_UkPs;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$lGbCHWYZQsd3L6WMc7RSNz_UkPs;->f$0:Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    iget-object v1, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$lGbCHWYZQsd3L6WMc7RSNz_UkPs;->f$1:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$lGbCHWYZQsd3L6WMc7RSNz_UkPs;->f$2:I

    iget-wide v3, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$lGbCHWYZQsd3L6WMc7RSNz_UkPs;->f$3:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$showBatteryPredictionIfNecessary$1$AdvancedBluetoothDetailsHeaderController(Landroid/widget/LinearLayout;IJ)V

    return-void
.end method
