.class public Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;
.super Ljava/lang/Object;
.source "BluetoothSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mContext:Landroid/content/Context;

.field private mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field private mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

.field private mSwitch:Lcom/android/settings/widget/SwitchWidgetController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/RestrictionUtils;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/widget/FooterPreference;)V
    .locals 6

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    .line 62
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    .line 63
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    .line 64
    iput-object p4, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 66
    invoke-virtual {p3}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    .line 67
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->updateText(Z)V

    .line 69
    new-instance p2, Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 71
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    const/16 v4, 0x366

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;ILcom/android/settings/bluetooth/RestrictionUtils;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 74
    invoke-virtual {p2, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setToggleCallback(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 75
    new-instance p2, Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-direct {p2, p1}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/widget/FooterPreference;)V
    .locals 1

    .line 55
    new-instance v0, Lcom/android/settings/bluetooth/RestrictionUtils;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/RestrictionUtils;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/RestrictionUtils;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/widget/FooterPreference;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 102
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/location/ScanningSettings;

    .line 103
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x56e

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->start()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->updateText(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 90
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->stop()V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->updateText(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method updateText(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->isBluetoothScanningEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    new-instance p1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v0, "link"

    invoke-direct {p1, v0, p0}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->bluetooth_scanning_on_info_message:I

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 113
    invoke-static {v0, v1}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 115
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    sget p1, Lcom/android/settings/R$string;->bluetooth_empty_list_bluetooth_off:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_0
    return-void
.end method
