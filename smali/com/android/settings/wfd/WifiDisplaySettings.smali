.class public final Lcom/android/settings/wfd/WifiDisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;,
        Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;,
        Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAutoGO:Z

.field private mCertCategory:Landroidx/preference/PreferenceGroup;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mListen:Z

.field private mListenChannel:I

.field private mOperatingChannel:I

.field private mPendingChanges:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStarted:Z

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mWifiDisplayCertificationOn:Z

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWpsConfig:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 770
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->wifi_display_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 120
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x4

    .line 116
    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 612
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$13;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 621
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$14;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$14;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 631
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$15;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$15;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 638
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$16;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$16;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 0

    .line 80
    iget p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .line 80
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->update(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->pairWifiDisplay(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setListenMode(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startAutoGO()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopAutoGO()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 0

    .line 80
    iget p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .line 80
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 0

    .line 80
    iget p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .line 80
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 0

    .line 80
    iget p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .line 80
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/wfd/WifiDisplaySettings;II)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->setWifiP2pChannels(II)V

    return-void
.end method

.method private buildCertificationMenu(Landroidx/preference/PreferenceScreen;)V
    .locals 10

    .line 325
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroidx/preference/PreferenceGroup;

    .line 327
    sget v1, Lcom/android/settings/R$string;->wifi_display_certification_heading:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 335
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplaySessionInfo;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 336
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 337
    sget v0, Lcom/android/settings/R$string;->wifi_display_session_info:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 338
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 342
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplaySessionInfo;->getSessionId()I

    move-result p1

    if-eqz p1, :cond_1

    .line 343
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroidx/preference/PreferenceGroup;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$1;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 367
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroidx/preference/PreferenceGroup;

    sget v0, Lcom/android/settings/R$layout;->two_buttons_panel:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 372
    :cond_1
    new-instance p1, Lcom/android/settings/wfd/WifiDisplaySettings$2;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 380
    sget v0, Lcom/android/settings/R$string;->wifi_display_listen_mode:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 381
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 385
    new-instance p1, Lcom/android/settings/wfd/WifiDisplaySettings$3;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 397
    sget v0, Lcom/android/settings/R$string;->wifi_display_autonomous_go:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 398
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 399
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 402
    new-instance p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 403
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 416
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "wifi_display_wps_config"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    const-string v0, "Default"

    const-string v1, "PBC"

    const-string v2, "KEYPAD"

    const-string v3, "DISPLAY"

    .line 418
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    const-string v2, "0"

    const-string v3, "2"

    const-string v4, "1"

    .line 419
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "wps"

    .line 424
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 425
    sget v3, Lcom/android/settings/R$string;->wifi_display_wps_config:I

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 426
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v0, "%1$s"

    .line 429
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 433
    new-instance p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 434
    new-instance v3, Lcom/android/settings/wfd/WifiDisplaySettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v3, "Auto"

    const-string v5, "6"

    const-string v6, "11"

    .line 446
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v7

    .line 447
    filled-new-array {v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "listening_channel"

    .line 448
    invoke-virtual {p1, v9}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 449
    sget v9, Lcom/android/settings/R$string;->wifi_display_listen_channel:I

    invoke-virtual {p1, v9}, Landroidx/preference/Preference;->setTitle(I)V

    .line 450
    invoke-virtual {p1, v7}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {p1, v8}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 452
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v7, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 457
    new-instance p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p1, v7}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 458
    new-instance v7, Lcom/android/settings/wfd/WifiDisplaySettings$6;

    invoke-direct {v7, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {p1, v7}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v7, "36"

    .line 470
    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    .line 471
    filled-new-array {v2, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "operating_channel"

    .line 472
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 473
    sget v4, Lcom/android/settings/R$string;->wifi_display_operating_channel:I

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setTitle(I)V

    .line 474
    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 475
    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 478
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    .locals 3

    .line 305
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;)V

    return-object v1

    .line 309
    :cond_0
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    return-object v0
.end method

.method private findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 4

    .line 314
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 315
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 316
    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "display"

    .line 222
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wifip2p"

    .line 224
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private pairWifiDisplay(Landroid/hardware/display/WifiDisplay;)V
    .locals 1

    .line 575
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private scheduleUpdate(I)V
    .locals 2

    .line 228
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    if-eqz v0, :cond_1

    .line 229
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    :cond_0
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    :cond_1
    return-void
.end method

.method private setListenMode(Z)V
    .locals 1

    .line 523
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$9;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$9;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V

    if-eqz p1, :cond_0

    .line 539
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {p1, p0, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->startListening(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 541
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {p1, p0, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->stopListening(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :goto_0
    return-void
.end method

.method private setWifiP2pChannels(II)V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$10;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method private showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 3

    .line 581
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->wifi_display_options:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 582
    sget v1, Lcom/android/settings/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 583
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 585
    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$11;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$11;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    .line 595
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$12;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$12;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 602
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 603
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_display_options_title:I

    .line 604
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 605
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_display_options_done:I

    .line 606
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_display_options_forget:I

    .line 607
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 608
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 609
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startAutoGO()V
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$7;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method private stopAutoGO()V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$8;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method private toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 566
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, 0x4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    goto :goto_0

    .line 570
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    :goto_0
    return-void
.end method

.method private unscheduleUpdate()V
    .locals 1

    .line 237
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 239
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private update(I)V
    .locals 7

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wifi_display_on"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wifi_display_certification_on"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wifi_display_wps_config"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    .line 261
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    goto :goto_3

    :cond_3
    move v2, v0

    .line 268
    :goto_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 269
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 272
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v0

    move v4, v3

    :goto_4
    if-ge v4, v0, :cond_5

    .line 274
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v5, v4}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v5

    .line 275
    invoke-virtual {v5, v1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 276
    invoke-direct {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 281
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_8

    .line 282
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 284
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    array-length v1, v0

    :goto_5
    if-ge v3, v1, :cond_7

    aget-object v4, v0, v3

    .line 285
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 286
    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 287
    new-instance v5, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    .line 287
    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 293
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    if-eqz v0, :cond_8

    .line 294
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroidx/preference/PreferenceScreen;)V

    :cond_8
    if-eqz v2, :cond_9

    .line 300
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_9
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 146
    sget p0, Lcom/android/settings/R$string;->help_url_remote_display:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x66

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 151
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    .line 154
    sget v0, Lcom/android/settings/R$string;->wifi_display_no_devices_found:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "media_router"

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    const-string v1, "android.media.mirroring_group"

    .line 135
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->setRouterGroupId(Ljava/lang/String;)V

    const-string v0, "display"

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v0, "wifip2p"

    .line 137
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 138
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 140
    sget p1, Lcom/android/settings/R$xml;->wifi_display_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const/4 p1, 0x1

    .line 141
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    sget v0, Lcom/android/settings/R$string;->wifi_display_enable_menu_item:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 202
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 203
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 205
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 218
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 212
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 213
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 215
    iget-boolean p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    const-string v0, "wifi_display_on"

    .line 214
    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1
.end method

.method public onStart()V
    .locals 5

    .line 160
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 164
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    .line 165
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_wps_config"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 175
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    const/4 v0, -0x1

    .line 178
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->update(I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 183
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 193
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->unscheduleUpdate()V

    return-void
.end method
