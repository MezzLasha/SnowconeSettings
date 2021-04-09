.class public Lcom/android/settings/panel/PanelFeatureProviderImpl;
.super Ljava/lang/Object;
.source "PanelFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/panel/PanelFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPanel(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/settings/panel/PanelContent;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "PANEL_TYPE_ARGUMENT"

    .line 34
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PANEL_MEDIA_PACKAGE_NAME"

    .line 36
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.settings.panel.action.WIFI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "android.settings.panel.action.VOLUME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "android.settings.panel.action.INTERNET_CONNECTIVITY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "android.settings.panel.action.NFC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 52
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No matching panel for: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :pswitch_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 45
    invoke-static {p1}, Lcom/android/settings/panel/InternetConnectivityPanel;->create(Landroid/content/Context;)Lcom/android/settings/panel/InternetConnectivityPanel;

    move-result-object p0

    return-object p0

    .line 47
    :cond_5
    invoke-static {p1}, Lcom/android/settings/panel/WifiPanel;->create(Landroid/content/Context;)Lcom/android/settings/panel/WifiPanel;

    move-result-object p0

    return-object p0

    .line 49
    :pswitch_1
    invoke-static {p1}, Lcom/android/settings/panel/VolumePanel;->create(Landroid/content/Context;)Lcom/android/settings/panel/VolumePanel;

    move-result-object p0

    return-object p0

    .line 40
    :pswitch_2
    invoke-static {p1}, Lcom/android/settings/panel/InternetConnectivityPanel;->create(Landroid/content/Context;)Lcom/android/settings/panel/InternetConnectivityPanel;

    move-result-object p0

    return-object p0

    .line 42
    :pswitch_3
    invoke-static {p1}, Lcom/android/settings/panel/NfcPanel;->create(Landroid/content/Context;)Lcom/android/settings/panel/NfcPanel;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3f46fa9 -> :sswitch_3
        0x1babcc93 -> :sswitch_2
        0x4878fc3c -> :sswitch_1
        0x7a9da8b7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
