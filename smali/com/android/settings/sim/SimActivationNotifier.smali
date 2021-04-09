.class public Lcom/android/settings/sim/SimActivationNotifier;
.super Ljava/lang/Object;
.source "SimActivationNotifier.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/settings/sim/SimActivationNotifier;->mContext:Landroid/content/Context;

    .line 73
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/sim/SimActivationNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 74
    new-instance p0, Landroid/app/NotificationChannel;

    sget v1, Lcom/android/settings/R$string;->sim_setup_channel_id:I

    .line 77
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sim_setup"

    const/4 v2, 0x4

    invoke-direct {p0, v1, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 74
    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static getShowSimSettingsNotification(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "sim_prefs"

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "show_sim_settings_notification"

    .line 102
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$sendNetworkConfigNotification$0(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 111
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static setShowSimSettingsNotification(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "sim_prefs"

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 90
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "show_sim_settings_notification"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public sendNetworkConfigNotification()V
    .locals 7

    .line 107
    iget-object v0, p0, Lcom/android/settings/sim/SimActivationNotifier;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 110
    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/sim/-$$Lambda$SimActivationNotifier$BbOs-XFfg05QUo325DfhnrcAYvI;->INSTANCE:Lcom/android/settings/sim/-$$Lambda$SimActivationNotifier$BbOs-XFfg05QUo325DfhnrcAYvI;

    .line 111
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    const-string p0, "SimActivationNotifier"

    const-string v0, "No removable subscriptions found. Do not show notification."

    .line 116
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 121
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/settings/sim/SimActivationNotifier;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sim_card_label:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/android/settings/sim/SimActivationNotifier;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->post_dsds_reboot_notification_title_with_carrier:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 125
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/android/settings/sim/SimActivationNotifier;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->post_dsds_reboot_notification_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/sim/SimActivationNotifier;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/settings/Settings$MobileNetworkListActivity;

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    iget-object v4, p0, Lcom/android/settings/sim/SimActivationNotifier;->mContext:Landroid/content/Context;

    .line 130
    invoke-static {v4}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v2

    const/high16 v4, 0x8000000

    .line 132
    invoke-virtual {v2, v5, v4}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v2

    .line 135
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/settings/sim/SimActivationNotifier;->mContext:Landroid/content/Context;

    const-string v6, "sim_setup"

    invoke-direct {v4, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->ic_sim_alert:I

    .line 140
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 142
    iget-object p0, p0, Lcom/android/settings/sim/SimActivationNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
