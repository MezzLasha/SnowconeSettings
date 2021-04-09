.class public Lcom/android/settings/network/SwitchToRemovableSlotSidecar;
.super Lcom/android/settings/network/telephony/EuiccOperationSidecar;
.source "SwitchToRemovableSlotSidecar.java"

# interfaces
.implements Lcom/android/settings/SidecarFragment$Listener;


# instance fields
.field private mPhysicalSlotId:I

.field private mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

.field private mSwitchToSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;-><init>()V

    return-void
.end method

.method public static get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToRemovableSlotSidecar;
    .locals 3

    .line 46
    const-class v0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    const-string v1, "DisableSubscriptionAndSwitchSlotSidecar"

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/settings/SidecarFragment;->get(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/android/settings/SidecarFragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    return-object p0
.end method

.method private onSwitchSlotSidecarStateChange()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DisableSubscriptionAndSwitchSlotSidecar"

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string v0, "Failed to switch to removable slot."

    .line 134
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0, v3, v1}, Lcom/android/settings/SidecarFragment;->setState(II)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string v0, "Successfully switched to removable slot."

    .line 129
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0, v3, v1}, Lcom/android/settings/SidecarFragment;->setState(II)V

    :goto_0
    return-void
.end method

.method private onSwitchToSubscriptionSidecarStateChange()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchToSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "DisableSubscriptionAndSwitchSlotSidecar"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchToSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string v0, "Failed to disable the active eSIM profile."

    .line 119
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SidecarFragment;->setState(II)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchToSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string v0, "Successfully disabled eSIM profile. Start to switch to Removable slot."

    .line 112
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    iget p0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mPhysicalSlotId:I

    invoke-virtual {v0, p0}, Lcom/android/settings/network/SwitchSlotSidecar;->runSwitchToRemovableSlot(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getReceiverAction()Ljava/lang/String;
    .locals 0

    const-string p0, "disable_subscription_and_switch_slot_sidecar"

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchToSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    .line 54
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/network/SwitchSlotSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchSlotSidecar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchToSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)Z

    .line 67
    iget-object v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)Z

    .line 68
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 60
    iget-object v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchToSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    return-void
.end method

.method public onStateChange(Lcom/android/settings/SidecarFragment;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchToSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    if-ne p1, v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->onSwitchToSubscriptionSidecarStateChange()V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    if-ne p1, v0, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->onSwitchSlotSidecarStateChange()V

    goto :goto_0

    :cond_1
    const-string p0, "DisableSubscriptionAndSwitchSlotSidecar"

    const-string p1, "Received state change from a sidecar not expected."

    .line 83
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public run(I)V
    .locals 1

    .line 94
    iput p1, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mPhysicalSlotId:I

    .line 96
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    .line 97
    invoke-static {p1}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/network/-$$Lambda$SfCkqdD9NsKa6vX0hGAzG4ODL54;->INSTANCE:Lcom/android/settings/network/-$$Lambda$SfCkqdD9NsKa6vX0hGAzG4ODL54;

    .line 98
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    const-string v0, "DisableSubscriptionAndSwitchSlotSidecar"

    if-eqz p1, :cond_0

    const-string p1, "There is an active eSIM profile. Disable the profile first."

    .line 99
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchToSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(I)V

    goto :goto_0

    :cond_0
    const-string p1, "There is no active eSIM profiles. Start to switch to removable slot."

    .line 103
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p1, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    iget p0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mPhysicalSlotId:I

    invoke-virtual {p1, p0}, Lcom/android/settings/network/SwitchSlotSidecar;->runSwitchToRemovableSlot(I)V

    :goto_0
    return-void
.end method
