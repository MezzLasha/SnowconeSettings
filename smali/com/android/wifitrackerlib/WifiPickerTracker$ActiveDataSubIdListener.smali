.class Lcom/android/wifitrackerlib/WifiPickerTracker$ActiveDataSubIdListener;
.super Landroid/telephony/PhoneStateListener;
.source "WifiPickerTracker.java"

# interfaces
.implements Landroid/telephony/PhoneStateListener$ActiveDataSubscriptionIdChangedListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifitrackerlib/WifiPickerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveDataSubIdListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;


# direct methods
.method private constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 973
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$ActiveDataSubIdListener;->this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 974
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;Ljava/util/concurrent/Executor;Lcom/android/wifitrackerlib/WifiPickerTracker$1;)V
    .locals 0

    .line 971
    invoke-direct {p0, p1, p2}, Lcom/android/wifitrackerlib/WifiPickerTracker$ActiveDataSubIdListener;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 0

    .line 980
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$ActiveDataSubIdListener;->this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->access$100(Lcom/android/wifitrackerlib/WifiPickerTracker;I)V

    return-void
.end method
