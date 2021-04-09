.class Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/core/SettingsBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/core/SettingsBaseActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/core/SettingsBaseActivity;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;->this$0:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/core/SettingsBaseActivity;Lcom/android/settings/core/SettingsBaseActivity$1;)V
    .locals 0

    .line 371
    invoke-direct {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;-><init>(Lcom/android/settings/core/SettingsBaseActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity$PackageReceiver;->this$0:Lcom/android/settings/core/SettingsBaseActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->access$500(Lcom/android/settings/core/SettingsBaseActivity;Z)V

    return-void
.end method
