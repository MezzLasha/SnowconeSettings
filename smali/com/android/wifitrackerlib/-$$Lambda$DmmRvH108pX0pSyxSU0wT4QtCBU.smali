.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$DmmRvH108pX0pSyxSU0wT4QtCBU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$DmmRvH108pX0pSyxSU0wT4QtCBU;->f$0:Lcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$DmmRvH108pX0pSyxSU0wT4QtCBU;->f$0:Lcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;

    invoke-interface {p0}, Lcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;->onSubscriptionWifiEntriesChanged()V

    return-void
.end method
