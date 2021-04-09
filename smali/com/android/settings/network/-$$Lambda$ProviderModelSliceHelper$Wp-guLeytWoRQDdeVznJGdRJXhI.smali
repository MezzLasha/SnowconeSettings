.class public final synthetic Lcom/android/settings/network/-$$Lambda$ProviderModelSliceHelper$Wp-guLeytWoRQDdeVznJGdRJXhI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/ProviderModelSliceHelper;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$2:Ljava/util/concurrent/Semaphore;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/ProviderModelSliceHelper;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/-$$Lambda$ProviderModelSliceHelper$Wp-guLeytWoRQDdeVznJGdRJXhI;->f$0:Lcom/android/settings/network/ProviderModelSliceHelper;

    iput-object p2, p0, Lcom/android/settings/network/-$$Lambda$ProviderModelSliceHelper$Wp-guLeytWoRQDdeVznJGdRJXhI;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/android/settings/network/-$$Lambda$ProviderModelSliceHelper$Wp-guLeytWoRQDdeVznJGdRJXhI;->f$2:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/-$$Lambda$ProviderModelSliceHelper$Wp-guLeytWoRQDdeVznJGdRJXhI;->f$0:Lcom/android/settings/network/ProviderModelSliceHelper;

    iget-object v1, p0, Lcom/android/settings/network/-$$Lambda$ProviderModelSliceHelper$Wp-guLeytWoRQDdeVznJGdRJXhI;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p0, p0, Lcom/android/settings/network/-$$Lambda$ProviderModelSliceHelper$Wp-guLeytWoRQDdeVznJGdRJXhI;->f$2:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->lambda$getMobileDrawable$1$ProviderModelSliceHelper(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Semaphore;)V

    return-void
.end method
