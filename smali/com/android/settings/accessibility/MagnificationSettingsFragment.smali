.class public Lcom/android/settings/accessibility/MagnificationSettingsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MagnificationSettingsFragment.java"


# static fields
.field static final DIALOG_MAGNIFICATION_CAPABILITY:I = 0x1

.field static final DIALOG_MAGNIFICATION_SWITCH_SHORTCUT:I = 0x2

.field static final EXTRA_CAPABILITY:Ljava/lang/String; = "capability"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mCapabilities:I

.field mDialog:Landroid/app/Dialog;

.field mMagnifyFullScreenCheckBox:Landroid/widget/CheckBox;

.field mMagnifyWindowCheckBox:Landroid/widget/CheckBox;

.field private mModePreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 285
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->accessibility_magnification_service_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    return-void
.end method

.method private callOnAlertDialogCheckboxClicked(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 153
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->updateCapabilities(Z)V

    .line 154
    iget-object p1, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mModePreference:Landroidx/preference/Preference;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    iget p0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    invoke-static {p2, p0}, Lcom/android/settings/accessibility/MagnificationCapabilities;->getSummary(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 154
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initModePreference()V
    .locals 2

    const-string v0, "magnification_mode"

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mModePreference:Landroidx/preference/Preference;

    .line 145
    new-instance v1, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$vG_BKDGrlZmuNZo_HO0vGB5Jhng;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$vG_BKDGrlZmuNZo_HO0vGB5Jhng;-><init>(Lcom/android/settings/accessibility/MagnificationSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private initializeDialogCheckBox(Landroid/app/Dialog;)V
    .locals 4

    .line 192
    sget v0, Lcom/android/settings/R$id;->magnify_full_screen:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 193
    sget v1, Lcom/android/settings/R$id;->container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 194
    sget v3, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyFullScreenCheckBox:Landroid/widget/CheckBox;

    .line 196
    sget v0, Lcom/android/settings/R$id;->magnify_window_screen:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 197
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 198
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyWindowCheckBox:Landroid/widget/CheckBox;

    .line 200
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->updateAlertDialogCheckState()V

    .line 201
    invoke-direct {p0, v2, v0}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->updateAlertDialogEnableState(Landroid/view/View;Landroid/view/View;)V

    .line 203
    iget-object p1, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyFullScreenCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyWindowCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->setTextAreasClickListener(Landroid/view/View;Landroid/widget/CheckBox;Landroid/view/View;Landroid/widget/CheckBox;)V

    return-void
.end method

.method private isTripleTapEnabled()Z
    .locals 2

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_display_magnification_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static synthetic lambda$UjVd_6D6CwGyebDcToOsCMeLczI(Lcom/android/settings/accessibility/MagnificationSettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->onSwitchShortcutDialogPositiveButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$initModePreference$0(Landroidx/preference/Preference;)Z
    .locals 0

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/accessibility/MagnificationCapabilities;->getCapabilities(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    const/4 p1, 0x1

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return p1
.end method

.method public static synthetic lambda$kbquM5zVQ4xpQqJmI05_JBX-768(Lcom/android/settings/accessibility/MagnificationSettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->callOnAlertDialogCheckboxClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$setTextAreasClickListener$1(Landroid/widget/CheckBox;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 210
    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    const/4 p1, 0x0

    .line 211
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->updateCapabilities(Z)V

    .line 212
    invoke-direct {p0, p2, p3}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->updateAlertDialogEnableState(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$setTextAreasClickListener$2(Landroid/widget/CheckBox;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 216
    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    const/4 p4, 0x0

    .line 217
    invoke-direct {p0, p4}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->updateCapabilities(Z)V

    .line 218
    invoke-direct {p0, p2, p3}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->updateAlertDialogEnableState(Landroid/view/View;Landroid/view/View;)V

    .line 220
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->isTripleTapEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :cond_0
    return-void
.end method

.method private onSwitchShortcutDialogPositiveButtonClicked(Landroid/view/View;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->optOutMagnificationFromTripleTap()V

    .line 162
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->optInMagnificationToAccessibilityButton()V

    .line 164
    iget-object p0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private optInMagnificationToAccessibilityButton()V
    .locals 5

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_button_targets"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.server.accessibility.MagnificationController"

    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 180
    :cond_0
    new-instance v3, Ljava/util/StringJoiner;

    const/16 v4, 0x3a

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 183
    invoke-virtual {v3, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 185
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 188
    invoke-virtual {v3}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private optOutMagnificationFromTripleTap()V
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_display_magnification_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setTextAreasClickListener(Landroid/view/View;Landroid/widget/CheckBox;Landroid/view/View;Landroid/widget/CheckBox;)V
    .locals 1

    .line 209
    new-instance v0, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$k3Qf9m91ljsIb82UkusitY2n4PI;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$k3Qf9m91ljsIb82UkusitY2n4PI;-><init>(Lcom/android/settings/accessibility/MagnificationSettingsFragment;Landroid/widget/CheckBox;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    new-instance p2, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$_bpglh7blRP3FWct1t5Te3RurMQ;

    invoke-direct {p2, p0, p4, p1, p3}, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$_bpglh7blRP3FWct1t5Te3RurMQ;-><init>(Lcom/android/settings/accessibility/MagnificationSettingsFragment;Landroid/widget/CheckBox;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setViewAndChildrenEnabled(Landroid/view/View;Z)V
    .locals 2

    .line 257
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 258
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 259
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 260
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 261
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 262
    invoke-direct {p0, v1, p2}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->setViewAndChildrenEnabled(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateAlertDialogCheckState()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyWindowCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->updateCheckStatus(Landroid/widget/CheckBox;I)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyFullScreenCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->updateCheckStatus(Landroid/widget/CheckBox;I)V

    return-void
.end method

.method private updateAlertDialogEnableState(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 239
    iget v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 247
    invoke-direct {p0, p1, v2}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->setViewAndChildrenEnabled(Landroid/view/View;Z)V

    .line 248
    invoke-direct {p0, p2, v2}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->setViewAndChildrenEnabled(Landroid/view/View;Z)V

    goto :goto_0

    .line 251
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported ACCESSIBILITY_MAGNIFICATION_CAPABILITY "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 244
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->setViewAndChildrenEnabled(Landroid/view/View;Z)V

    goto :goto_0

    .line 241
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->setViewAndChildrenEnabled(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method private updateCapabilities(Z)V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyFullScreenCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    or-int/2addr v0, v1

    .line 272
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyWindowCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    or-int/2addr v0, v1

    .line 274
    iput v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    if-eqz p1, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/MagnificationCapabilities;->setCapabilities(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method private updateCheckStatus(Landroid/widget/CheckBox;I)V
    .locals 0

    .line 235
    iget p0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    and-int/2addr p0, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x739

    return p0

    :cond_1
    const/16 p0, 0x718

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MagnificationSettingsFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x717

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 118
    sget p0, Lcom/android/settings/R$xml;->accessibility_magnification_service_settings:I

    return p0
.end method

.method public synthetic lambda$initModePreference$0$MagnificationSettingsFragment(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->lambda$initModePreference$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$setTextAreasClickListener$1$MagnificationSettingsFragment(Landroid/widget/CheckBox;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->lambda$setTextAreasClickListener$1(Landroid/widget/CheckBox;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setTextAreasClickListener$2$MagnificationSettingsFragment(Landroid/widget/CheckBox;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->lambda$setTextAreasClickListener$2(Landroid/widget/CheckBox;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "capability"

    .line 75
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    .line 77
    :cond_0
    iget p1, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    if-nez p1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/accessibility/MagnificationCapabilities;->getCapabilities(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    :cond_1
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->accessibility_magnification_switch_shortcut_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$UjVd_6D6CwGyebDcToOsCMeLczI;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$UjVd_6D6CwGyebDcToOsCMeLczI;-><init>(Lcom/android/settings/accessibility/MagnificationSettingsFragment;)V

    .line 135
    invoke-static {v0, p1, v1}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->showMagnificationSwitchShortcutDialog(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mDialog:Landroid/app/Dialog;

    return-object p1

    .line 140
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported dialogId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->accessibility_magnification_mode_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$kbquM5zVQ4xpQqJmI05_JBX-768;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$kbquM5zVQ4xpQqJmI05_JBX-768;-><init>(Lcom/android/settings/accessibility/MagnificationSettingsFragment;)V

    invoke-static {v0, p1, v1}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->showMagnificationModeDialog(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mDialog:Landroid/app/Dialog;

    .line 130
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->initializeDialogCheckBox(Landroid/app/Dialog;)V

    .line 131
    iget-object p0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 90
    iget v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    const-string v1, "capability"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 84
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->initModePreference()V

    return-void
.end method
