.class public Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;
.super Landroid/app/Activity;
.source "SubscriptionActionDialogActivity.java"


# instance fields
.field protected mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected dismissProgressDialog()V
    .locals 0

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/network/telephony/ProgressDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const-class p1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method protected showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-static {p0, p1, p2}, Lcom/android/settings/network/telephony/AlertDialogFragment;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected showProgressDialog(Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/network/telephony/ProgressDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/settings/network/telephony/ProgressDialogFragment$OnDismissCallback;)V

    return-void
.end method
