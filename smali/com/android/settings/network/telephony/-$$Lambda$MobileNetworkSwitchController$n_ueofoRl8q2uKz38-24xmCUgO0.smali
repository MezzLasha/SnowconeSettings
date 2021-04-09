.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkSwitchController$n_ueofoRl8q2uKz38-24xmCUgO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkSwitchController$n_ueofoRl8q2uKz38-24xmCUgO0;->f$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    return-void
.end method


# virtual methods
.method public final onBeforeCheckedChanged(Landroid/widget/Switch;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkSwitchController$n_ueofoRl8q2uKz38-24xmCUgO0;->f$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->lambda$displayPreference$0$MobileNetworkSwitchController(Landroid/widget/Switch;Z)Z

    move-result p0

    return p0
.end method
