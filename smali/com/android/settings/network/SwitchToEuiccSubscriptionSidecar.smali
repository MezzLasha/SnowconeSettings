.class public Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;
.super Lcom/android/settings/network/telephony/EuiccOperationSidecar;
.source "SwitchToEuiccSubscriptionSidecar.java"


# instance fields
.field private mCallbackIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;-><init>()V

    return-void
.end method

.method public static get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;
    .locals 3

    .line 35
    const-class v0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    const-string v1, "SwitchToEuiccSubscriptionSidecar"

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/settings/SidecarFragment;->get(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/android/settings/SidecarFragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    return-object p0
.end method


# virtual methods
.method public getReceiverAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.android.settings.network.switchToSubscription"

    return-object p0
.end method

.method public run(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SidecarFragment;->setState(II)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->createCallbackIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mCallbackIntent:Landroid/app/PendingIntent;

    .line 53
    iget-object p0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p0, p1, v0}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(ILandroid/app/PendingIntent;)V

    return-void
.end method
