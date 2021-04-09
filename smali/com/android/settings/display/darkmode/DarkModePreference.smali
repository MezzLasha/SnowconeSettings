.class public Lcom/android/settings/display/darkmode/DarkModePreference;
.super Lcom/android/settings/widget/PrimarySwitchPreference;
.source "DarkModePreference.java"


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mDarkModeObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

.field private mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/PrimarySwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p2, Lcom/android/settings/display/darkmode/DarkModeObserver;

    invoke-direct {p2, p1}, Lcom/android/settings/display/darkmode/DarkModeObserver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mDarkModeObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

    .line 43
    const-class p2, Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mUiModeManager:Landroid/app/UiModeManager;

    .line 44
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mPowerManager:Landroid/os/PowerManager;

    .line 45
    new-instance p2, Lcom/android/settings/display/darkmode/TimeFormatter;

    invoke-direct {p2, p1}, Lcom/android/settings/display/darkmode/TimeFormatter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

    .line 46
    new-instance p1, Lcom/android/settings/display/darkmode/-$$Lambda$DarkModePreference$noFwhyN9EeSTU-yN0p78yxFWzZ0;

    invoke-direct {p1, p0}, Lcom/android/settings/display/darkmode/-$$Lambda$DarkModePreference$noFwhyN9EeSTU-yN0p78yxFWzZ0;-><init>(Lcom/android/settings/display/darkmode/DarkModePreference;)V

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mCallback:Ljava/lang/Runnable;

    .line 53
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mDarkModeObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

    invoke-virtual {p0, p1}, Lcom/android/settings/display/darkmode/DarkModeObserver;->subscribe(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 48
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/lit8 v2, v0, 0x1

    .line 50
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    .line 51
    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/darkmode/DarkModePreference;->updateSummary(ZZ)V

    return-void
.end method

.method private updateSummary(ZZ)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 71
    sget p1, Lcom/android/settings/R$string;->dark_ui_mode_disabled_summary_dark_theme_on:I

    goto :goto_0

    .line 72
    :cond_0
    sget p1, Lcom/android/settings/R$string;->dark_ui_mode_disabled_summary_dark_theme_off:I

    .line 73
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    if-nez p1, :cond_3

    .line 80
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 81
    sget p2, Lcom/android/settings/R$string;->dark_ui_summary_on_auto_mode_auto:I

    goto :goto_1

    .line 82
    :cond_2
    sget p2, Lcom/android/settings/R$string;->dark_ui_summary_off_auto_mode_auto:I

    .line 80
    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    if-eqz p2, :cond_4

    .line 85
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getCustomNightModeEnd()Ljava/time/LocalTime;

    move-result-object p1

    goto :goto_2

    .line 86
    :cond_4
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getCustomNightModeStart()Ljava/time/LocalTime;

    move-result-object p1

    .line 87
    :goto_2
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

    invoke-virtual {v0, p1}, Lcom/android/settings/display/darkmode/TimeFormatter;->of(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_5

    .line 89
    sget p2, Lcom/android/settings/R$string;->dark_ui_summary_on_auto_mode_custom:I

    goto :goto_3

    .line 90
    :cond_5
    sget p2, Lcom/android/settings/R$string;->dark_ui_summary_off_auto_mode_custom:I

    :goto_3
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 88
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 92
    :cond_6
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p2, :cond_7

    .line 93
    sget p2, Lcom/android/settings/R$string;->dark_ui_summary_on_auto_mode_never:I

    goto :goto_4

    .line 94
    :cond_7
    sget p2, Lcom/android/settings/R$string;->dark_ui_summary_off_auto_mode_never:I

    .line 92
    :goto_4
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 97
    :goto_5
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$DarkModePreference()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/darkmode/DarkModePreference;->lambda$new$0()V

    return-void
.end method

.method public onAttached()V
    .locals 1

    .line 58
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 59
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mDarkModeObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/settings/display/darkmode/DarkModeObserver;->subscribe(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDetached()V
    .locals 0

    .line 64
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 65
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mDarkModeObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

    invoke-virtual {p0}, Lcom/android/settings/display/darkmode/DarkModeObserver;->unsubscribe()V

    return-void
.end method
