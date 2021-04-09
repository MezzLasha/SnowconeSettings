.class public Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ViewAirplaneModeNetworksLayoutPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mButton:Landroid/widget/Button;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field mTextView:Landroid/widget/TextView;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController$1;-><init>(Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p2, :cond_0

    .line 73
    new-instance v0, Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;)V

    iput-object v0, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 74
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 75
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    .line 76
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    .line 71
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Lifecycle must be set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private generateLayout()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 137
    sget v1, Lcom/android/settings/R$id;->airplane_mode_text:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mTextView:Landroid/widget/TextView;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mButton:Landroid/widget/Button;

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->view_airplane_mode_networks_button:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mButton:Landroid/widget/Button;

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 143
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->refreshLayout()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 93
    invoke-direct {p0}, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->generateLayout()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "view_airplane_mode_netwokrs_button"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn()Z

    move-result p0

    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStart()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 99
    iget-object p0, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeEnabler;->start()V

    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 105
    iget-object p0, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeEnabler;->stop()V

    return-void
.end method

.method refreshLayout()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 152
    sget v2, Lcom/android/settings/R$string;->viewing_airplane_mode_networks:I

    goto :goto_0

    .line 153
    :cond_0
    sget v2, Lcom/android/settings/R$string;->condition_airplane_title:I

    .line 152
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 155
    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mButton:Landroid/widget/Button;

    if-eqz p0, :cond_3

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 156
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/settings/network/ViewAirplaneModeNetworksLayoutPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz p0, :cond_0

    .line 165
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method
