.class public Lcom/android/settings/display/BrightnessLevelPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BrightnessLevelPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_FOR_VR_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_URI:Landroid/net/Uri;


# instance fields
.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mMaxBrightness:F

.field private final mMaxVrBrightness:F

.field private final mMinBrightness:F

.field private final mMinVrBrightness:F

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "screen_brightness_float"

    .line 65
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_URI:Landroid/net/Uri;

    const-string v0, "screen_brightness_for_vr"

    .line 66
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_FOR_VR_URI:Landroid/net/Uri;

    const-string v0, "screen_auto_brightness_adj"

    .line 67
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 3

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v0, Lcom/android/settings/display/BrightnessLevelPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    .line 71
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/BrightnessLevelPreferenceController$1;-><init>(Lcom/android/settings/display/BrightnessLevelPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    const-string p2, "power"

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x0

    .line 84
    invoke-virtual {p1, p2}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p2

    iput p2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinBrightness:F

    const/4 p2, 0x1

    .line 86
    invoke-virtual {p1, p2}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p2

    iput p2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxBrightness:F

    const/4 p2, 0x5

    .line 88
    invoke-virtual {p1, p2}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p2

    iput p2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinVrBrightness:F

    const/4 p2, 0x6

    .line 90
    invoke-virtual {p1, p2}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p1

    iput p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxVrBrightness:F

    .line 92
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/BrightnessLevelPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/display/BrightnessLevelPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->updatedSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method private getCurrentBrightness()D
    .locals 4

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->isInVrMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxBrightness:F

    const-string v2, "screen_brightness_for_vr_float"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iget v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinVrBrightness:F

    iget v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxVrBrightness:F

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGammaFloat(FFF)I

    move-result v0

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinBrightness:F

    const-string v2, "screen_brightness_float"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iget v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinBrightness:F

    iget v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxBrightness:F

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGammaFloat(FFF)I

    move-result v0

    :goto_0
    int-to-double v0, v0

    const/4 v2, 0x0

    const v3, 0xffff

    .line 145
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->getPercentage(DII)D

    move-result-wide v0

    return-wide v0
.end method

.method private getPercentage(DII)D
    .locals 2

    int-to-double v0, p4

    cmpl-double p0, p1, v0

    if-lez p0, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    :cond_0
    int-to-double v0, p3

    cmpg-double p0, p1, v0

    if-gez p0, :cond_1

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_1
    sub-double/2addr p1, v0

    sub-int/2addr p4, p3

    int-to-double p3, p4

    div-double/2addr p1, p3

    return-wide p1
.end method

.method private updatedSummary(Landroidx/preference/Preference;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 130
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->getCurrentBrightness()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "brightness"

    .line 108
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "brightness"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isInVrMode()Z
    .locals 2

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->safeGetVrManager()Landroid/service/vr/IVrManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 169
    :try_start_0
    invoke-interface {p0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "BrightnessPrefCtrl"

    const-string v1, "Failed to check vr mode!"

    .line 171
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_FOR_VR_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method safeGetVrManager()Landroid/service/vr/IVrManager;
    .locals 0

    const-string p0, "vrmanager"

    .line 160
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->updatedSummary(Landroidx/preference/Preference;)V

    return-void
.end method
