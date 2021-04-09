.class public Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;
.super Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;
.source "DeleteEuiccSubscriptionDialogActivity.java"

# interfaces
.implements Lcom/android/settings/SidecarFragment$Listener;
.implements Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;


# instance fields
.field private mDeleteEuiccSubscriptionSidecar:Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

.field private mSubscriptionToBeDeleted:Landroid/telephony/SubscriptionInfo;

.field private mSubscriptionsToBeDeleted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "sub_id"

    .line 50
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private handleDeleteEuiccSubscriptionSidecarStateChange()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mDeleteEuiccSubscriptionSidecar:Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "DeleteEuiccSubscriptionDialogActivity"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Failed to delete the subscription."

    .line 127
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mDeleteEuiccSubscriptionSidecar:Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    .line 129
    sget v0, Lcom/android/settings/R$string;->erase_sim_fail_title:I

    .line 130
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->erase_sim_fail_text:I

    .line 131
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Successfully delete the subscription."

    .line 121
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mDeleteEuiccSubscriptionSidecar:Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private showDeleteSimConfirmDialog()V
    .locals 7

    .line 138
    const-class v1, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    sget v0, Lcom/android/settings/R$string;->erase_sim_dialog_title:I

    .line 142
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/android/settings/R$string;->erase_sim_dialog_text:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mSubscriptionToBeDeleted:Landroid/telephony/SubscriptionInfo;

    .line 144
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 143
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/android/settings/R$string;->erase_sim_confirm_button:I

    .line 145
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v0, Lcom/android/settings/R$string;->cancel:I

    .line 146
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    move-object v0, p0

    .line 138
    invoke-static/range {v0 .. v6}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onConfirm(IZ)V
    .locals 1

    if-nez p2, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 p2, 0x1

    const-string v0, "DeleteEuiccSubscriptionDialogActivity"

    if-eq p1, p2, :cond_1

    .line 113
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecognized confirmation dialog tag: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "Subscription deletion confirmed"

    .line 108
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget p1, Lcom/android/settings/R$string;->erasing_sim:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mDeleteEuiccSubscriptionSidecar:Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    iget-object p0, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mSubscriptionsToBeDeleted:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;->run(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sub_id"

    const/4 v2, -0x1

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 64
    iget-object v1, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v1, v0}, Lcom/android/settings/network/SubscriptionUtil;->getSubById(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mSubscriptionToBeDeleted:Landroid/telephony/SubscriptionInfo;

    .line 65
    iget-object v1, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 66
    invoke-static {v1, v0}, Lcom/android/settings/network/SubscriptionUtil;->findAllSubscriptionsInGroup(Landroid/telephony/SubscriptionManager;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mSubscriptionsToBeDeleted:Ljava/util/List;

    .line 68
    iget-object v2, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mSubscriptionToBeDeleted:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mDeleteEuiccSubscriptionSidecar:Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    if-nez p1, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->showDeleteSimConfirmDialog()V

    :cond_1
    return-void

    .line 69
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find subscription with sub ID: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeleteEuiccSubscriptionDialogActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mDeleteEuiccSubscriptionSidecar:Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)Z

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    iget-object v0, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mDeleteEuiccSubscriptionSidecar:Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    return-void
.end method

.method public onStateChange(Lcom/android/settings/SidecarFragment;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mDeleteEuiccSubscriptionSidecar:Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    if-ne p1, v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->handleDeleteEuiccSubscriptionSidecarStateChange()V

    :cond_0
    return-void
.end method
