.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$mP967XdtYaSA7o4VqGO-ze8XvZc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/TelephonyStatusControlSession;

.field public final synthetic f$1:Lcom/android/settingslib/core/AbstractPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/TelephonyStatusControlSession;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$mP967XdtYaSA7o4VqGO-ze8XvZc;->f$0:Lcom/android/settings/network/telephony/TelephonyStatusControlSession;

    iput-object p2, p0, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$mP967XdtYaSA7o4VqGO-ze8XvZc;->f$1:Lcom/android/settingslib/core/AbstractPreferenceController;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$mP967XdtYaSA7o4VqGO-ze8XvZc;->f$0:Lcom/android/settings/network/telephony/TelephonyStatusControlSession;

    iget-object p0, p0, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$mP967XdtYaSA7o4VqGO-ze8XvZc;->f$1:Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->lambda$new$0$TelephonyStatusControlSession(Lcom/android/settingslib/core/AbstractPreferenceController;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
