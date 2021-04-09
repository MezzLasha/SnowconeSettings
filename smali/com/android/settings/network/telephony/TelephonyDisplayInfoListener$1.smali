.class Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$1;
.super Landroid/telephony/PhoneStateListener;
.source "TelephonyDisplayInfoListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->updateSubscriptionIds(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$1;->this$0:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$1;->this$0:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->access$002(Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)Landroid/telephony/TelephonyDisplayInfo;

    .line 94
    iget-object p0, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$1;->this$0:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    invoke-static {p0}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->access$100(Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;)Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$Callback;->onTelephonyDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    return-void
.end method
