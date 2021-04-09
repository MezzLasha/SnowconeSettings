.class public Lcom/android/settings/overlay/FeatureFactoryImpl;
.super Lcom/android/settings/overlay/FeatureFactory;
.source "FeatureFactoryImpl.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

.field private mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

.field private mAwareFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

.field private mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

.field private mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

.field private mContextualCardFeatureProvider:Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProvider;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field private mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

.field private mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

.field private mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

.field private mLocaleFeatureProvider:Lcom/android/settings/localepicker/LocaleFeatureProvider;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPanelFeatureProvider:Lcom/android/settings/panel/PanelFeatureProvider;

.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field private mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

.field private mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

.field private mSlicesFeatureProvider:Lcom/android/settings/slices/SlicesFeatureProvider;

.field private mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

.field private mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

.field private mWifiTrackerLibProvider:Lcom/android/settings/wifi/WifiTrackerLibProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/overlay/FeatureFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountFeatureProvider()Lcom/android/settings/accounts/AccountFeatureProvider;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/android/settings/accounts/AccountFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/accounts/AccountFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

    .line 240
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

    return-object p0
.end method

.method public getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 149
    new-instance v0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 151
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "device_policy"

    .line 153
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 155
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    return-object p0
.end method

.method public getAssistGestureFeatureProvider()Lcom/android/settings/gestures/AssistGestureFeatureProvider;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/android/settings/gestures/AssistGestureFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/gestures/AssistGestureFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    .line 224
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    return-object p0
.end method

.method public getAwareFeatureProvider()Lcom/android/settings/aware/AwareFeatureProvider;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAwareFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lcom/android/settings/aware/AwareFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/aware/AwareFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAwareFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    .line 274
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAwareFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    return-object p0
.end method

.method public getBatteryStatusFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryStatusFeatureProviderImpl;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/BatteryStatusFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    return-object p0
.end method

.method public getBluetoothFeatureProvider(Landroid/content/Context;)Lcom/android/settings/bluetooth/BluetoothFeatureProvider;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothFeatureProviderImpl;

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/bluetooth/BluetoothFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    .line 266
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    return-object p0
.end method

.method public getContextualCardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProvider;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mContextualCardFeatureProvider:Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProvider;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProviderImpl;

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mContextualCardFeatureProvider:Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProvider;

    .line 257
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mContextualCardFeatureProvider:Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProvider;

    return-object p0
.end method

.method public getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    return-object p0
.end method

.method public getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/DockUpdaterFeatureProvider;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    .line 142
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    return-object p0
.end method

.method public getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;
    .locals 8

    .line 168
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 170
    new-instance p1, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    const-string v0, "device_policy"

    .line 171
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 173
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 174
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    const-string v0, "connectivity"

    .line 175
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 176
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;-><init>(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Landroid/net/ConnectivityManager;Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    .line 178
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    return-object p0
.end method

.method public getFaceFeatureProvider()Lcom/android/settings/biometrics/face/FaceFeatureProvider;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lcom/android/settings/biometrics/face/FaceFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/biometrics/face/FaceFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    .line 282
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    return-object p0
.end method

.method public getLocaleFeatureProvider()Lcom/android/settings/localepicker/LocaleFeatureProvider;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mLocaleFeatureProvider:Lcom/android/settings/localepicker/LocaleFeatureProvider;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/android/settings/localepicker/LocaleFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/localepicker/LocaleFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mLocaleFeatureProvider:Lcom/android/settings/localepicker/LocaleFeatureProvider;

    .line 163
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mLocaleFeatureProvider:Lcom/android/settings/localepicker/LocaleFeatureProvider;

    return-object p0
.end method

.method public getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-direct {v0}, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method public getPanelFeatureProvider()Lcom/android/settings/panel/PanelFeatureProvider;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPanelFeatureProvider:Lcom/android/settings/panel/PanelFeatureProvider;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcom/android/settings/panel/PanelFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/panel/PanelFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPanelFeatureProvider:Lcom/android/settings/panel/PanelFeatureProvider;

    .line 248
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPanelFeatureProvider:Lcom/android/settings/panel/PanelFeatureProvider;

    return-object p0
.end method

.method public getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 116
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    return-object p0
.end method

.method public getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/android/settings/search/SearchFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/search/SearchFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

    .line 186
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

    return-object p0
.end method

.method public getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/android/settings/security/SecurityFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/security/SecurityFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

    return-object p0
.end method

.method public getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSlicesFeatureProvider:Lcom/android/settings/slices/SlicesFeatureProvider;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/slices/SlicesFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSlicesFeatureProvider:Lcom/android/settings/slices/SlicesFeatureProvider;

    .line 232
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSlicesFeatureProvider:Lcom/android/settings/slices/SlicesFeatureProvider;

    return-object p0
.end method

.method public getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    .line 208
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    return-object p0
.end method

.method public getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSurveyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SurveyFeatureProvider;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserFeatureProvider(Landroid/content/Context;)Lcom/android/settings/users/UserFeatureProvider;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/android/settings/users/UserFeatureProviderImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/users/UserFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    .line 216
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    return-object p0
.end method

.method public getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProvider;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mWifiTrackerLibProvider:Lcom/android/settings/wifi/WifiTrackerLibProvider;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Lcom/android/settings/wifi/WifiTrackerLibProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiTrackerLibProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mWifiTrackerLibProvider:Lcom/android/settings/wifi/WifiTrackerLibProvider;

    .line 290
    :cond_0
    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mWifiTrackerLibProvider:Lcom/android/settings/wifi/WifiTrackerLibProvider;

    return-object p0
.end method
