.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$s3KrD4EccziQnyNDOcWUnx42f3o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$s3KrD4EccziQnyNDOcWUnx42f3o;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$s3KrD4EccziQnyNDOcWUnx42f3o;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updatePasspointConfigurations$17$WifiPickerTracker(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
