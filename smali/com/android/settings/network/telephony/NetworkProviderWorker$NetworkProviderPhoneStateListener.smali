.class Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkProviderWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/NetworkProviderWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkProviderPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/NetworkProviderWorker;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/NetworkProviderWorker;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderPhoneStateListener;->this$0:Lcom/android/settings/network/telephony/NetworkProviderWorker;

    .line 218
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisplayInfoChanged: telephonyDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkProviderWorker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderPhoneStateListener;->this$0:Lcom/android/settings/network/telephony/NetworkProviderWorker;

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->access$002(Lcom/android/settings/network/telephony/NetworkProviderWorker;Landroid/telephony/TelephonyDisplayInfo;)Landroid/telephony/TelephonyDisplayInfo;

    .line 232
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderPhoneStateListener;->this$0:Lcom/android/settings/network/telephony/NetworkProviderWorker;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateSlice()V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceStateChanged voiceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dataState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkProviderWorker"

    .line 223
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker$NetworkProviderPhoneStateListener;->this$0:Lcom/android/settings/network/telephony/NetworkProviderWorker;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateSlice()V

    return-void
.end method
