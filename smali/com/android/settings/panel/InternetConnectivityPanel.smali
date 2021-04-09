.class public Lcom/android/settings/panel/InternetConnectivityPanel;
.super Ljava/lang/Object;
.source "InternetConnectivityPanel.java"

# interfaces
.implements Lcom/android/settings/panel/PanelContent;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/settings/panel/InternetConnectivityPanel;
    .locals 1

    .line 43
    new-instance v0, Lcom/android/settings/panel/InternetConnectivityPanel;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/InternetConnectivityPanel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getCustomizedButtonTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 84
    iget-object p0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->settings_button:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x676

    return p0
.end method

.method public getSeeMoreIntent()Landroid/content/Intent;
    .locals 1

    .line 72
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "android.settings.NETWORK_PROVIDER_SETTINGS"

    goto :goto_0

    :cond_0
    const-string p0, "android.settings.WIRELESS_SETTINGS"

    .line 73
    :goto_0
    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p0, 0x10000000

    .line 74
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSlices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget-object p0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 60
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->PROVIDER_MODEL_SLICE_URI:Landroid/net/Uri;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->AIRPLANE_SAFE_NETWORKS_SLICE_URI:Landroid/net/Uri;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_SLICE_URI:Landroid/net/Uri;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->MOBILE_DATA_SLICE_URI:Landroid/net/Uri;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object p0, Lcom/android/settings/network/AirplaneModePreferenceController;->SLICE_URI:Landroid/net/Uri;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget v0, Lcom/android/settings/R$string;->provider_internet_settings:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->internet_connectivity_panel_title:I

    .line 52
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public isCustomizedButtonUsed()Z
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onClickCustomizedButton()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/panel/InternetConnectivityPanel;->getSeeMoreIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
