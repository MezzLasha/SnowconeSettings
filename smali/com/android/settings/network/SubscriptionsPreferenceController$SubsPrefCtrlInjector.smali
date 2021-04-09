.class public Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;
.super Ljava/lang/Object;
.source "SubscriptionsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/SubscriptionsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubsPrefCtrlInjector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canSubscriptionBeDisplayed(Landroid/content/Context;I)Z
    .locals 0

    .line 523
    invoke-static {p1}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p0

    .line 522
    invoke-static {p1, p0, p2}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscription(Landroid/content/Context;Lcom/android/settings/network/ProxySubscriptionManager;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;
    .locals 0

    .line 565
    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileMappings$Config;->readConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultDataSubscriptionId()I
    .locals 0

    .line 544
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    return p0
.end method

.method public getDefaultSmsSubscriptionId()I
    .locals 0

    .line 530
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result p0

    return p0
.end method

.method public getDefaultVoiceSubscriptionId()I
    .locals 0

    .line 537
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result p0

    return p0
.end method

.method public getIcon(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    .line 583
    invoke-static {p1, p2, p3, p0, p4}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSignalStrengthIcon(Landroid/content/Context;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkType(Landroid/content/Context;Lcom/android/settingslib/mobile/MobileMappings$Config;Landroid/telephony/TelephonyDisplayInfo;I)Ljava/lang/String;
    .locals 0

    .line 573
    invoke-static {p3}, Lcom/android/settingslib/mobile/MobileMappings;->getIconKey(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object p0

    .line 574
    invoke-static {p2}, Lcom/android/settingslib/mobile/MobileMappings;->mapIconSets(Lcom/android/settingslib/mobile/MobileMappings$Config;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget p0, p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    if-eqz p0, :cond_0

    .line 576
    invoke-static {p1, p4}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public isActiveCellularNetwork(Landroid/content/Context;)Z
    .locals 0

    .line 551
    invoke-static {p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->activeNetworkIsCellular(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isProviderModelEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 558
    invoke-static {p1}, Lcom/android/settings/Utils;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
