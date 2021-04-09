.class public Lcom/android/settings/gestures/OneHandedSettingsUtils;
.super Ljava/lang/Object;
.source "OneHandedSettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;,
        Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;,
        Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingsObserver:Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->mContext:Landroid/content/Context;

    .line 51
    new-instance p1, Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;-><init>(Lcom/android/settings/gestures/OneHandedSettingsUtils;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->mSettingsObserver:Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/gestures/OneHandedSettingsUtils;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getSettingsOneHandedModeTimeout(Landroid/content/Context;)I
    .locals 2

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->MEDIUM:Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    .line 107
    invoke-virtual {v0}, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->getValue()I

    move-result v0

    const-string v1, "one_handed_mode_timeout"

    .line 105
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSettingsTapsAppToExit(Landroid/content/Context;)Z
    .locals 2

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "taps_app_to_exit"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isOneHandedModeEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "one_handed_mode_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static setSettingsOneHandedModeEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "one_handed_mode_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setSettingsOneHandedModeTimeout(Landroid/content/Context;I)V
    .locals 1

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "one_handed_mode_timeout"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setSettingsTapsAppToExit(Landroid/content/Context;Z)Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "taps_app_to_exit"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public registerToggleAwareObserver(Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->mSettingsObserver:Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;->observe()V

    .line 127
    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->mSettingsObserver:Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;

    invoke-static {p0, p1}, Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;->access$000(Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;)V

    return-void
.end method

.method public unregisterToggleAwareObserver()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->mSettingsObserver:Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
