.class public Lcom/android/settings/display/ScreenZoomSettings;
.super Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.source "ScreenZoomSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mDefaultDensity:I

.field private mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lcom/android/settings/display/ScreenZoomSettings$1;

    invoke-direct {v0}, Lcom/android/settings/display/ScreenZoomSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/ScreenZoomSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    iget v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    aget v0, v0, v1

    .line 97
    iget p0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    .line 98
    invoke-static {v1}, Lcom/android/settingslib/display/DisplayDensityConfiguration;->clearForcedDisplayDensity(I)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {v1, v0}, Lcom/android/settingslib/display/DisplayDensityConfiguration;->setForcedDisplayDensity(II)V

    :goto_0
    return-void
.end method

.method protected createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 1

    .line 86
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 87
    iget-object p0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    aget p0, p0, p2

    iput p0, v0, Landroid/content/res/Configuration;->densityDpi:I

    return-object v0
.end method

.method protected getActivityLayoutResId()I
    .locals 0

    .line 43
    sget p0, Lcom/android/settings/R$layout;->screen_zoom_activity:I

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 106
    sget p0, Lcom/android/settings/R$string;->help_url_display_size:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x153

    return p0
.end method

.method protected getPreviewSampleResIds()[I
    .locals 3

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_enable_extra_screen_zoom_preview:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    new-array p0, p0, [I

    .line 50
    sget v2, Lcom/android/settings/R$layout;->screen_zoom_preview_1:I

    aput v2, p0, v0

    sget v0, Lcom/android/settings/R$layout;->screen_zoom_preview_2:I

    aput v0, p0, v1

    const/4 v0, 0x2

    sget v1, Lcom/android/settings/R$layout;->screen_zoom_preview_settings:I

    aput v1, p0, v0

    goto :goto_0

    :cond_0
    new-array p0, v1, [I

    .line 54
    sget v1, Lcom/android/settings/R$layout;->screen_zoom_preview_1:I

    aput v1, p0, v0

    :goto_0
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance p1, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v0

    if-gez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 69
    iput-object v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    new-array v0, v0, [Ljava/lang/String;

    .line 70
    sget v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    .line 71
    iput v2, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mInitialIndex:I

    .line 72
    iput p1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getValues()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    .line 75
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getEntries()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    .line 76
    iput v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mInitialIndex:I

    .line 77
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDensity()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    .line 80
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->screen_zoom_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method
