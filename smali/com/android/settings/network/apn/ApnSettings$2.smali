.class Lcom/android/settings/network/apn/ApnSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/apn/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/apn/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/apn/ApnSettings;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnSettings;->access$000(Lcom/android/settings/network/apn/ApnSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const-string v1, "android.telephony.extra.SUBSCRIPTION_ID"

    .line 158
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 160
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    .line 161
    invoke-static {v0}, Lcom/android/settings/network/apn/ApnSettings;->access$300(Lcom/android/settings/network/apn/ApnSettings;)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/settings/network/SubscriptionUtil;->getPhoneId(Landroid/content/Context;I)I

    move-result p1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    .line 162
    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->access$400(Lcom/android/settings/network/apn/ApnSettings;)I

    move-result p1

    if-eq p2, p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1, p2}, Lcom/android/settings/network/apn/ApnSettings;->access$402(Lcom/android/settings/network/apn/ApnSettings;I)I

    .line 165
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->access$400(Lcom/android/settings/network/apn/ApnSettings;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/network/apn/ApnSettings;->access$600(Lcom/android/settings/network/apn/ApnSettings;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/network/apn/ApnSettings;->access$502(Lcom/android/settings/network/apn/ApnSettings;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    .line 166
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->access$400(Lcom/android/settings/network/apn/ApnSettings;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/network/apn/ApnSettings;->access$700(Lcom/android/settings/network/apn/ApnSettings;I)V

    .line 168
    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/network/apn/ApnSettings;->access$100(Lcom/android/settings/network/apn/ApnSettings;)V

    :cond_2
    return-void
.end method
