.class public Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;
.super Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;
.source "ToggleSubscriptionDialogActivity.java"

# interfaces
.implements Lcom/android/settings/SidecarFragment$Listener;
.implements Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;


# static fields
.field public static final ARG_enable:Ljava/lang/String; = "enable"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mEnable:Z

.field private mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

.field private mIsEsimOperation:Z

.field private mSubInfo:Landroid/telephony/SubscriptionInfo;

.field private mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

.field private mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

.field private mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;-><init>()V

    return-void
.end method

.method private getEnableSubscriptionTitle()Ljava/lang/String;
    .locals 4

    .line 410
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    sget v0, Lcom/android/settings/R$string;->sim_action_enable_sub_dialog_title:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 411
    :cond_1
    :goto_0
    sget v0, Lcom/android/settings/R$string;->sim_action_enable_sub_dialog_title_without_carrier_name:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 2

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "sub_id"

    .line 69
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "enable"

    .line 70
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private getSwitchDialogBodyMsg(Landroid/telephony/SubscriptionInfo;Z)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 425
    iget-boolean p2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz p2, :cond_0

    .line 426
    sget p2, Lcom/android/settings/R$string;->sim_action_switch_sub_dialog_text_downloaded:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 428
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v1

    .line 429
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v0, v2

    .line 426
    invoke-virtual {p0, p2, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 430
    :cond_0
    iget-boolean p2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz p2, :cond_1

    .line 431
    sget p2, Lcom/android/settings/R$string;->sim_action_switch_sub_dialog_text:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 433
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v1

    .line 434
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v0, v2

    .line 431
    invoke-virtual {p0, p2, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 436
    :cond_1
    sget p2, Lcom/android/settings/R$string;->sim_action_switch_sub_dialog_text_single_sim:I

    new-array v0, v2, [Ljava/lang/Object;

    .line 438
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v0, v1

    .line 436
    invoke-virtual {p0, p2, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSwitchDialogPosBtnText()Ljava/lang/String;
    .locals 4

    .line 403
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz v0, :cond_0

    .line 404
    sget v0, Lcom/android/settings/R$string;->sim_action_switch_sub_dialog_confirm:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 405
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    .line 404
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 406
    :cond_0
    sget v0, Lcom/android/settings/R$string;->sim_switch_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSwitchSubscriptionTitle()Ljava/lang/String;
    .locals 4

    .line 417
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz v0, :cond_0

    .line 418
    sget v0, Lcom/android/settings/R$string;->sim_action_switch_sub_dialog_title:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 419
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    .line 418
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 421
    :cond_0
    sget v0, Lcom/android/settings/R$string;->sim_action_switch_psim_dialog_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleEnableMultiSimSidecarStateChange()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "ToggleSubscriptionDialogActivity"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string v0, "Failed to switch to DSDS without rebooting."

    .line 273
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/telephony/ProgressDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    .line 275
    sget v0, Lcom/android/settings/R$string;->dsds_activation_failure_title:I

    .line 276
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dsds_activation_failure_body_msg2:I

    .line 277
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string v0, "Successfully switched to DSDS without reboot."

    .line 268
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleEnableSubscriptionAfterEnablingDsds()V

    :goto_0
    return-void
.end method

.method private handleEnableSubscriptionAfterEnablingDsds()V
    .locals 3

    .line 283
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    const-string v1, "ToggleSubscriptionDialogActivity"

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DSDS enabled, start to enable profile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(I)V

    return-void

    :cond_0
    const-string v0, "DSDS enabled, start to enable pSIM profile."

    .line 290
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleTogglePsimAction()V

    .line 292
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/telephony/ProgressDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    .line 293
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private handleSwitchToEuiccSubscriptionSidecarStateChange()V
    .locals 7

    .line 219
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "enable"

    const-string v3, "disable"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "ToggleSubscriptionDialogActivity"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    new-array v0, v5, [Ljava/lang/Object;

    .line 234
    iget-boolean v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnable:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    aput-object v2, v0, v4

    const-string v1, "Failed to %s the eSIM profile."

    .line 233
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    .line 237
    sget v0, Lcom/android/settings/R$string;->privileged_action_disable_fail_title:I

    .line 238
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->privileged_action_disable_fail_text:I

    .line 239
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    .line 225
    iget-boolean v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnable:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    aput-object v2, v0, v4

    const-string v1, "Successfully %s the eSIM profile."

    .line 223
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    .line 228
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method

.method private handleSwitchToRemovableSlotSidecarStateChange()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "ToggleSubscriptionDialogActivity"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Failed switching to removable slot."

    .line 254
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    .line 257
    sget v0, Lcom/android/settings/R$string;->sim_action_enable_sim_fail_title:I

    .line 258
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sim_action_enable_sim_fail_text:I

    .line 259
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Successfully switched to removable slot."

    .line 247
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    .line 249
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleTogglePsimAction()V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    .line 251
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private handleTogglePsimAction()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->canDisablePhysicalSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnable:Z

    invoke-virtual {v1, v0, v2}, Landroid/telephony/SubscriptionManager;->setUiccApplicationsEnabled(IZ)V

    .line 299
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const-string p0, "ToggleSubscriptionDialogActivity"

    const-string v0, "The device does not support toggling pSIM. It is enough to just enable the removable slot."

    .line 301
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isDsdsConditionSatisfied()Z
    .locals 5

    .line 443
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ToggleSubscriptionDialogActivity"

    if-eqz v0, :cond_0

    const-string p0, "DSDS is already enabled. Condition not satisfied."

    .line 444
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimSupported()I

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Hardware does not support DSDS."

    .line 448
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/android/settings/network/UiccSlotUtil;->getSlotInfos(Landroid/telephony/TelephonyManager;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/android/settings/network/telephony/-$$Lambda$ToggleSubscriptionDialogActivity$Ws98uNIieU2bX2VfdHAI4HoIp2c;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$ToggleSubscriptionDialogActivity$Ws98uNIieU2bX2VfdHAI4HoIp2c;

    .line 454
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 461
    iget-boolean v3, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    const-string p0, "eSIM operation and removable SIM is enabled. DSDS condition satisfied."

    .line 462
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 466
    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/android/settings/network/telephony/-$$Lambda$SfCkqdD9NsKa6vX0hGAzG4ODL54;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$SfCkqdD9NsKa6vX0hGAzG4ODL54;

    .line 467
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 468
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-nez p0, :cond_3

    if-eqz v0, :cond_3

    const-string p0, "Removable SIM operation and eSIM profile is enabled. DSDS condition satisfied."

    .line 469
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    const-string p0, "DSDS condition not satisfied."

    .line 475
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method static synthetic lambda$isDsdsConditionSatisfied$0(Landroid/telephony/UiccSlotInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 457
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getIsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showDisableSimConfirmDialog()V
    .locals 8

    .line 349
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    sget v0, Lcom/android/settings/R$string;->privileged_action_disable_sub_dialog_title:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 354
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    .line 352
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 350
    :cond_1
    :goto_0
    sget v0, Lcom/android/settings/R$string;->privileged_action_disable_sub_dialog_title_without_carrier:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v4, v0

    .line 356
    const-class v2, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    const/4 v3, 0x1

    const/4 v5, 0x0

    sget v0, Lcom/android/settings/R$string;->yes:I

    .line 362
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v0, Lcom/android/settings/R$string;->cancel:I

    .line 363
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    .line 356
    invoke-static/range {v1 .. v7}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showEnableDsdsConfirmDialog()V
    .locals 7

    .line 325
    const-class v1, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    sget v0, Lcom/android/settings/R$string;->sim_action_enable_dsds_title:I

    .line 329
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/android/settings/R$string;->sim_action_enable_dsds_text:I

    .line 330
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/android/settings/R$string;->sim_action_continue:I

    .line 331
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v0, Lcom/android/settings/R$string;->sim_action_no_thanks:I

    .line 332
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x3

    move-object v0, p0

    .line 325
    invoke-static/range {v0 .. v6}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showEnableSimConfirmDialog()V
    .locals 10

    .line 367
    iget-object v0, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 368
    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    .line 369
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    :goto_0
    const-string v1, "ToggleSubscriptionDialogActivity"

    if-nez v0, :cond_1

    const-string v0, "No active subscriptions available."

    .line 371
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showNonSwitchSimConfirmDialog()V

    return-void

    :cond_1
    const-string v3, "Found active subscription."

    .line 375
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-boolean v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 377
    :cond_2
    iget-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 378
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showNonSwitchSimConfirmDialog()V

    return-void

    .line 381
    :cond_3
    const-class v4, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    const/4 v5, 0x2

    .line 385
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->getSwitchSubscriptionTitle()Ljava/lang/String;

    move-result-object v6

    .line 386
    invoke-direct {p0, v0, v2}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->getSwitchDialogBodyMsg(Landroid/telephony/SubscriptionInfo;Z)Ljava/lang/String;

    move-result-object v7

    .line 387
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->getSwitchDialogPosBtnText()Ljava/lang/String;

    move-result-object v8

    const/high16 v0, 0x1040000

    .line 388
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v3, p0

    .line 381
    invoke-static/range {v3 .. v9}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showEnableSubDialog()V
    .locals 2

    const-string v0, "ToggleSubscriptionDialogActivity"

    const-string v1, "Handle subscription enabling."

    .line 310
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isDsdsConditionSatisfied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showEnableDsdsConfirmDialog()V

    return-void

    .line 315
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Toggle on pSIM, no dialog displayed."

    .line 316
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleTogglePsimAction()V

    .line 318
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 321
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showEnableSimConfirmDialog()V

    return-void
.end method

.method private showNonSwitchSimConfirmDialog()V
    .locals 7

    .line 392
    const-class v1, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    .line 396
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->getEnableSubscriptionTitle()Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/android/settings/R$string;->yes:I

    .line 398
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v0, 0x1040000

    .line 399
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    .line 392
    invoke-static/range {v0 .. v6}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showRebootConfirmDialog()V
    .locals 7

    .line 336
    const-class v1, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    sget v0, Lcom/android/settings/R$string;->sim_action_restart_title:I

    .line 340
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/android/settings/R$string;->sim_action_enable_dsds_text:I

    .line 341
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/android/settings/R$string;->sim_action_reboot:I

    .line 342
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v0, Lcom/android/settings/R$string;->cancel:I

    .line 343
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    move-object v0, p0

    .line 336
    invoke-static/range {v0 .. v6}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onConfirm(IZ)V
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-nez p2, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    const-string v4, "ToggleSubscriptionDialogActivity"

    if-eq p1, v3, :cond_8

    const/4 v5, 0x2

    if-eq p1, v5, :cond_6

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_1

    .line 213
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecognized confirmation dialog tag: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string p1, "User cancel the dialog to reboot to enable DSDS."

    .line 190
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showEnableSimConfirmDialog()V

    return-void

    :cond_2
    const-string p1, "User confirmed reboot to enable DSDS."

    .line 194
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {p0, v3}, Lcom/android/settings/sim/SimActivationNotifier;->setShowSimSettingsNotification(Landroid/content/Context;Z)V

    .line 196
    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v5}, Landroid/telephony/TelephonyManager;->switchMultiSimConfig(I)V

    goto/16 :goto_0

    :cond_3
    if-nez p2, :cond_4

    const-string p1, "User cancel the dialog to enable DSDS."

    .line 171
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showEnableSimConfirmDialog()V

    return-void

    .line 175
    :cond_4
    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->doesSwitchMultiSimConfigTriggerReboot()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Device does not support reboot free DSDS."

    .line 176
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showRebootConfirmDialog()V

    return-void

    .line 180
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Enabling DSDS without rebooting. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/settings/R$string;->sim_action_enabling_sim_without_carrier_name:I

    .line 183
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 186
    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {p0, v5}, Lcom/android/settings/network/EnableMultiSimSidecar;->run(I)V

    goto :goto_0

    :cond_6
    const-string p1, "User confirmed to enable the subscription."

    .line 199
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz p1, :cond_7

    .line 201
    sget p1, Lcom/android/settings/R$string;->sim_action_switch_sub_dialog_progress:I

    new-array p2, v3, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 204
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, p2, v0

    .line 202
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(I)V

    return-void

    .line 208
    :cond_7
    sget p1, Lcom/android/settings/R$string;->sim_action_enabling_sim_without_carrier_name:I

    .line 209
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 210
    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {p0, v2}, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->run(I)V

    goto :goto_0

    .line 158
    :cond_8
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz p1, :cond_9

    const-string p1, "Disabling the eSIM profile."

    .line 159
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget p1, Lcom/android/settings/R$string;->privileged_action_disable_sub_dialog_progress:I

    .line 161
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 162
    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {p0, v2}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(I)V

    return-void

    :cond_9
    const-string p1, "Disabling the pSIM profile."

    .line 166
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleTogglePsimAction()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sub_id"

    const/4 v2, -0x1

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 88
    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 90
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 91
    invoke-virtual {v2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v2

    const-string v3, "ToggleSubscriptionDialogActivity"

    if-nez v2, :cond_0

    const-string p1, "It is not the admin user. Unable to toggle subscription."

    .line 92
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 97
    :cond_0
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "The subscription id is not usable."

    .line 98
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v2, v1}, Lcom/android/settings/network/SubscriptionUtil;->getSubById(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/EnableMultiSimSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/EnableMultiSimSidecar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    const-string v1, "enable"

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnable:Z

    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    .line 113
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showEnableSubDialog()V

    goto :goto_1

    .line 115
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showDisableSimConfirmDialog()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)Z

    .line 131
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)Z

    .line 132
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)Z

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    return-void
.end method

.method public onStateChange(Lcom/android/settings/SidecarFragment;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    if-ne p1, v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleSwitchToEuiccSubscriptionSidecarStateChange()V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    if-ne p1, v0, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleSwitchToRemovableSlotSidecarStateChange()V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    if-ne p1, v0, :cond_2

    .line 143
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleEnableMultiSimSidecarStateChange()V

    :cond_2
    :goto_0
    return-void
.end method
