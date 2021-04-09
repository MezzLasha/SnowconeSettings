.class public final synthetic Lcom/android/settings/sim/receivers/-$$Lambda$SimSlotChangeReceiver$ir57kHC3LXh2VH-TZFW_ZF7SphM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/sim/receivers/-$$Lambda$SimSlotChangeReceiver$ir57kHC3LXh2VH-TZFW_ZF7SphM;->f$0:Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;

    iput-object p2, p0, Lcom/android/settings/sim/receivers/-$$Lambda$SimSlotChangeReceiver$ir57kHC3LXh2VH-TZFW_ZF7SphM;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/receivers/-$$Lambda$SimSlotChangeReceiver$ir57kHC3LXh2VH-TZFW_ZF7SphM;->f$0:Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;

    iget-object p0, p0, Lcom/android/settings/sim/receivers/-$$Lambda$SimSlotChangeReceiver$ir57kHC3LXh2VH-TZFW_ZF7SphM;->f$1:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->lambda$onReceive$0$SimSlotChangeReceiver(Landroid/content/Context;)V

    return-void
.end method
