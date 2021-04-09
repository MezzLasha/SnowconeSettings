.class Lcom/android/settings/network/telephony/MobileNetworkSettings$1;
.super Lcom/android/settings/network/ActiveSubsciptionsListener;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/MobileNetworkSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/MobileNetworkSettings;Landroid/os/Looper;Landroid/content/Context;I)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/network/ActiveSubsciptionsListener;-><init>(Landroid/os/Looper;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->access$000(Lcom/android/settings/network/telephony/MobileNetworkSettings;)V

    return-void
.end method
