.class public final synthetic Lcom/android/settings/-$$Lambda$AsyncTaskSidecar$1MNUAiPWy3BV3kdjUl8UzFFej0Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/AsyncTaskSidecar;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/AsyncTaskSidecar;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/-$$Lambda$AsyncTaskSidecar$1MNUAiPWy3BV3kdjUl8UzFFej0Q;->f$0:Lcom/android/settings/AsyncTaskSidecar;

    iput-object p2, p0, Lcom/android/settings/-$$Lambda$AsyncTaskSidecar$1MNUAiPWy3BV3kdjUl8UzFFej0Q;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/-$$Lambda$AsyncTaskSidecar$1MNUAiPWy3BV3kdjUl8UzFFej0Q;->f$0:Lcom/android/settings/AsyncTaskSidecar;

    iget-object p0, p0, Lcom/android/settings/-$$Lambda$AsyncTaskSidecar$1MNUAiPWy3BV3kdjUl8UzFFej0Q;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/android/settings/AsyncTaskSidecar;->lambda$run$1$AsyncTaskSidecar(Ljava/lang/Object;)V

    return-void
.end method
