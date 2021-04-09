.class public abstract Lcom/android/settings/network/telephony/EuiccOperationSidecar;
.super Lcom/android/settings/SidecarFragment;
.source "EuiccOperationSidecar.java"


# static fields
.field private static sCurrentOpId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mDetailedCode:I

.field protected mEuiccManager:Landroid/telephony/euicc/EuiccManager;

.field private mOpId:I

.field protected final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResultCode:I

.field private mResultIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->sCurrentOpId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/android/settings/SidecarFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;-><init>(Lcom/android/settings/network/telephony/EuiccOperationSidecar;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/EuiccOperationSidecar;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mOpId:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/EuiccOperationSidecar;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mResultCode:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/settings/network/telephony/EuiccOperationSidecar;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mResultCode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/network/telephony/EuiccOperationSidecar;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mDetailedCode:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/settings/network/telephony/EuiccOperationSidecar;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mDetailedCode:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/settings/network/telephony/EuiccOperationSidecar;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mResultIntent:Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method protected createCallbackIntent()Landroid/app/PendingIntent;
    .locals 3

    .line 98
    sget-object v0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->sCurrentOpId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mOpId:I

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->getReceiverAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    iget v1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mOpId:I

    const-string v2, "op_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    const/high16 v2, 0x14000000

    .line 101
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getReceiverAction()Ljava/lang/String;
.end method

.method public getResultCode()I
    .locals 0

    .line 127
    iget p0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mResultCode:I

    return p0
.end method

.method protected onActionReceived()V
    .locals 2

    .line 84
    iget v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mResultCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SidecarFragment;->setState(II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 87
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SidecarFragment;->setState(II)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/SidecarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/euicc/EuiccManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    .line 111
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->getReceiverAction()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p0, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    const/4 v2, 0x0

    .line 113
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 122
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    invoke-super {p0}, Lcom/android/settings/SidecarFragment;->onDestroy()V

    return-void
.end method
