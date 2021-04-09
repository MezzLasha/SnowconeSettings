.class public Lcom/android/settings/network/telephony/TelephonyStatusControlSession;
.super Ljava/lang/Object;
.source "TelephonyStatusControlSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/TelephonyStatusControlSession$Builder;
    }
.end annotation


# instance fields
.field private mControllers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mResult:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->mResult:Ljava/util/Collection;

    .line 70
    iput-object p1, p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->mControllers:Ljava/util/Collection;

    .line 71
    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$WepxTxhY1mIbp6TlI2VRwhSzGM0;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$WepxTxhY1mIbp6TlI2VRwhSzGM0;-><init>(Lcom/android/settings/network/telephony/TelephonyStatusControlSession;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lcom/android/settings/network/telephony/TelephonyStatusControlSession$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/settingslib/core/AbstractPreferenceController;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->setupAvailabilityStatus(Lcom/android/settingslib/core/AbstractPreferenceController;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$1(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->mResult:Ljava/util/Collection;

    new-instance v1, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$mP967XdtYaSA7o4VqGO-ze8XvZc;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$mP967XdtYaSA7o4VqGO-ze8XvZc;-><init>(Lcom/android/settings/network/telephony/TelephonyStatusControlSession;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    .line 72
    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$unsetAvailabilityStatus$2(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 0

    .line 111
    instance-of p0, p0, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;

    return p0
.end method

.method static synthetic lambda$unsetAvailabilityStatus$3(Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;)V
    .locals 0

    .line 114
    invoke-interface {p0}, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;->unsetAvailabilityStatus()V

    return-void
.end method

.method private setupAvailabilityStatus(Lcom/android/settingslib/core/AbstractPreferenceController;)Ljava/lang/Boolean;
    .locals 1

    .line 96
    :try_start_0
    instance-of p0, p1, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;

    if-eqz p0, :cond_0

    .line 97
    move-object p0, p1

    check-cast p0, Lcom/android/settings/core/BasePreferenceController;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result p0

    .line 99
    check-cast p1, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;

    invoke-interface {p1, p0}, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;->setAvailabilityStatus(I)V

    .line 101
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "TelephonyStatusControlSS"

    const-string v0, "Setup availability status failed!"

    .line 103
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private unsetAvailabilityStatus(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$Q3HrsSuk-ntND10kwVe0Be9s5Uw;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$Q3HrsSuk-ntND10kwVe0Be9s5Uw;

    .line 111
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    const-class p1, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;

    .line 112
    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$q5ygahOwhDDy_kOypoTzEV44ad4;

    invoke-direct {v0, p1}, Lcom/android/settings/network/telephony/-$$Lambda$q5ygahOwhDDy_kOypoTzEV44ad4;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$NRMV-zwBzE2zavI6zxUGwEqgaAc;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$NRMV-zwBzE2zavI6zxUGwEqgaAc;

    .line 113
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->mResult:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 86
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TelephonyStatusControlSS"

    const-string v3, "setup availability status failed!"

    .line 88
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->mControllers:Ljava/util/Collection;

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->unsetAvailabilityStatus(Ljava/util/Collection;)V

    return-void
.end method

.method public synthetic lambda$new$0$TelephonyStatusControlSession(Lcom/android/settingslib/core/AbstractPreferenceController;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->lambda$new$0(Lcom/android/settingslib/core/AbstractPreferenceController;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$1$TelephonyStatusControlSession(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->lambda$new$1(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method
