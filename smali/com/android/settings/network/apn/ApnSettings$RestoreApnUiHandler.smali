.class Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/apn/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/apn/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/network/apn/ApnSettings;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/network/apn/ApnSettings;Lcom/android/settings/network/apn/ApnSettings$1;)V
    .locals 0

    .line 479
    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 482
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 486
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p0, v0}, Lcom/android/settings/network/apn/ApnSettings;->access$002(Lcom/android/settings/network/apn/ApnSettings;Z)Z

    return-void

    .line 489
    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/network/apn/ApnSettings;->access$100(Lcom/android/settings/network/apn/ApnSettings;)V

    .line 490
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 491
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {v1, v0}, Lcom/android/settings/network/apn/ApnSettings;->access$002(Lcom/android/settings/network/apn/ApnSettings;Z)Z

    .line 492
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Lcom/android/settings/network/apn/ApnSettings;->access$900(Lcom/android/settings/network/apn/ApnSettings;I)V

    .line 493
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    .line 495
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->restore_default_apn_completed:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 493
    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 497
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
