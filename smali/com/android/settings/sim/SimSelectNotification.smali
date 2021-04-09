.class public Lcom/android/settings/sim/SimSelectNotification;
.super Landroid/content/BroadcastReceiver;
.source "SimSelectNotification.java"


# static fields
.field public static final ENABLE_MMS_NOTIFICATION_CHANNEL:Ljava/lang/String; = "enable_mms_notification_channel"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final ENABLE_MMS_NOTIFICATION_ID:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SIM_SELECT_NOTIFICATION_CHANNEL:Ljava/lang/String; = "sim_select_notification_channel"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SIM_SELECT_NOTIFICATION_ID:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SIM_WARNING_NOTIFICATION_CHANNEL:Ljava/lang/String; = "sim_warning_notification_channel"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SIM_WARNING_NOTIFICATION_ID:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private cancelEnableMmsNotification(Landroid/content/Context;)V
    .locals 0

    const-string p0, "notification"

    .line 279
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 p1, 0x2

    .line 280
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static cancelSimCombinationWarningNotification(Landroid/content/Context;)V
    .locals 1

    .line 325
    const-class v0, Landroid/app/NotificationManager;

    .line 326
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x3

    .line 327
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static cancelSimSelectNotification(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification"

    .line 239
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x1

    .line 240
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private createEnableMmsNotification(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 3

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 247
    new-instance v0, Landroid/app/NotificationChannel;

    sget v1, Lcom/android/settings/R$string;->enable_mms_notification_channel_title:I

    .line 249
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v1, "enable_mms_notification_channel"

    const/4 v2, 0x4

    invoke-direct {v0, v1, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 252
    new-instance p0, Landroid/app/Notification$Builder;

    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/android/settings/R$drawable;->ic_settings_24dp:I

    .line 254
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->sim_noitification:I

    .line 255
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 256
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 257
    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 258
    invoke-virtual {p2, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p2, 0x1

    .line 259
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 262
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.settings.MMS_MESSAGE_SETTING"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    const-class p3, Lcom/android/settings/network/telephony/MobileNetworkActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p3, "android.provider.extra.SUB_ID"

    .line 264
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p3, 0x10000000

    .line 265
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p3, 0x0

    const/high16 p4, 0x14000000

    .line 266
    invoke-static {p1, p3, p2, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 268
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const-string p2, "notification"

    .line 272
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 273
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 274
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private createSimCombinationWarningNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "android.telephony.extra.SIM_COMBINATION_NAMES"

    .line 285
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 291
    :cond_0
    sget v0, Lcom/android/settings/R$string;->dual_cdma_sim_warning_notification_summary:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 294
    new-instance v0, Landroid/app/NotificationChannel;

    sget v2, Lcom/android/settings/R$string;->dual_cdma_sim_warning_notification_channel_title:I

    .line 296
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v4, 0x4

    const-string v5, "sim_warning_notification_channel"

    invoke-direct {v0, v5, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 299
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v4, Lcom/android/settings/R$drawable;->ic_sim_alert:I

    .line 301
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    sget v4, Lcom/android/settings/R$color;->sim_noitification:I

    .line 302
    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    sget v4, Lcom/android/settings/R$string;->sim_combination_warning_notification_title:I

    .line 303
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 305
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 306
    invoke-virtual {v2, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 308
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 311
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/HelpTrampoline;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.TEXT"

    const-string v2, "help_uri_sim_combination_warning"

    .line 312
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 314
    invoke-static {p1, v3, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 316
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 318
    const-class p2, Landroid/app/NotificationManager;

    .line 319
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 320
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const/4 p2, 0x3

    .line 321
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private createSimSelectNotification(Landroid/content/Context;)V
    .locals 5

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 213
    new-instance v0, Landroid/app/NotificationChannel;

    sget v1, Lcom/android/settings/R$string;->sim_selection_channel_title:I

    .line 215
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "sim_select_notification_channel"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 218
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Lcom/android/settings/R$drawable;->ic_sim_alert:I

    .line 220
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sim_noitification:I

    .line 221
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sim_notification_title:I

    .line 222
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sim_notification_summary:I

    .line 223
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 v1, 0x1

    .line 224
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 225
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.settings"

    .line 226
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 227
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v4, 0x14000000

    .line 228
    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 230
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const-string v2, "notification"

    .line 232
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 233
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 234
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private onEnableMmsDataRequest(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "android.provider.extra.SUB_ID"

    const/4 v1, -0x1

    .line 102
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    .line 104
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    :cond_0
    const-string v2, "telephony_subscription_service"

    .line 107
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 109
    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v3

    const-string v4, "SimSelectNotification"

    if-nez v3, :cond_1

    .line 110
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onEnableMmsDataRequest invalid sub ID "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 113
    :cond_1
    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onEnableMmsDataRequest null SubscriptionInfo for sub ID "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v3, "android.settings.extra.ENABLE_MMS_DATA_REQUEST_REASON"

    .line 121
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/android/settings/R$string;->enable_receiving_mms_notification_title:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_5

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/android/settings/R$string;->enable_sending_mms_notification_title:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    :goto_0
    const-string v3, "phone"

    .line 133
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 134
    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v5, 0x2

    .line 136
    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->isDataEnabledForApn(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 137
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onEnableMmsDataRequest MMS data already enabled on sub ID "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 141
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->enable_mms_notification_summary:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 142
    invoke-static {v2}, Lcom/android/settings/network/SubscriptionUtil;->getDisplayName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 141
    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSelectNotification;->cancelEnableMmsNotification(Landroid/content/Context;)V

    .line 146
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/settings/sim/SimSelectNotification;->createEnableMmsNotification(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void

    .line 129
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onEnableMmsDataRequest invalid request reason "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onPrimarySubscriptionListChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimSelectNotification;->startSimSelectDialogIfNeeded(Landroid/content/Context;Landroid/content/Intent;)V

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimSelectNotification;->sendSimCombinationWarningIfNeeded(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private sendSimCombinationWarningIfNeeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.telephony.extra.SIM_COMBINATION_WARNING_TYPE"

    const/4 v1, 0x0

    .line 198
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 202
    invoke-static {p1}, Lcom/android/settings/sim/SimSelectNotification;->cancelSimCombinationWarningNotification(Landroid/content/Context;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimSelectNotification;->createSimCombinationWarningNotification(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private startSimSelectDialogIfNeeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.telephony.extra.DEFAULT_SUBSCRIPTION_SELECT_TYPE"

    const/4 v1, 0x0

    .line 155
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-static {p1}, Lcom/android/settings/sim/SimSelectNotification;->cancelSimSelectNotification(Landroid/content/Context;)V

    const/4 v2, 0x5

    const/high16 v3, 0x10000000

    if-ne v0, v2, :cond_1

    .line 167
    new-instance p0, Landroid/content/Intent;

    const-class p2, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    invoke-virtual {p0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 169
    sget-object p2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {p0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 175
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSelectNotification;->createSimSelectNotification(Landroid/content/Context;)V

    const/4 p0, 0x4

    if-ne v0, p0, :cond_2

    const p0, 0x7fffffff

    const-string v0, "android.telephony.extra.SUBSCRIPTION_ID"

    .line 178
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 180
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    .line 182
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    if-ne v0, p0, :cond_3

    .line 190
    new-instance p0, Landroid/content/Intent;

    const-class p2, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    invoke-virtual {p0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    sget-object p2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimSelectNotification"

    if-nez v0, :cond_0

    const-string p0, "Received unexpected intent with null action."

    .line 84
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "android.telephony.action.PRIMARY_SUBSCRIPTION_LIST_CHANGED"

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.settings.ENABLE_MMS_DATA_REQUEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Received unexpected intent "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimSelectNotification;->onEnableMmsDataRequest(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimSelectNotification;->onPrimarySubscriptionListChanged(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
