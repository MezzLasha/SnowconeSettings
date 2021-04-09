.class public Lcom/android/settings/widget/PrimarySwitchPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "PrimarySwitchPreference.java"


# instance fields
.field private mChecked:Z

.field private mCheckedSet:Z

.field private mEnableSwitch:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mEnableSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mEnableSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mEnableSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mEnableSwitch:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/PrimarySwitchPreference;)Landroid/widget/Switch;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/PrimarySwitchPreference;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mChecked:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/PrimarySwitchPreference;Z)Z
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onBindViewHolder$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getCheckedState()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 113
    iget-boolean v0, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mCheckedSet:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mChecked:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected getSecondTargetResId()I
    .locals 0

    .line 64
    sget p0, Lcom/android/settings/R$layout;->restricted_preference_widget_primary_switch:I

    return p0
.end method

.method public isChecked()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mChecked:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 70
    sget v0, Lcom/android/settings/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    new-instance v2, Lcom/android/settings/widget/PrimarySwitchPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/widget/PrimarySwitchPreference$1;-><init>(Lcom/android/settings/widget/PrimarySwitchPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    sget-object v2, Lcom/android/settings/widget/-$$Lambda$PrimarySwitchPreference$ZJW7mm5naSvR7NDsbxUq38b7pfw;->INSTANCE:Lcom/android/settings/widget/-$$Lambda$PrimarySwitchPreference$ZJW7mm5naSvR7NDsbxUq38b7pfw;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    :cond_1
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 98
    iget-object p1, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean p0, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mEnableSwitch:Z

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 123
    iget-boolean v0, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mChecked:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 124
    iget-boolean v0, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mCheckedSet:Z

    if-nez v0, :cond_2

    .line 125
    :cond_1
    iput-boolean p1, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mChecked:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mCheckedSet:Z

    .line 127
    iget-object p0, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_2

    .line 128
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    .line 150
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 151
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mEnableSwitch:Z

    .line 140
    iget-object p0, p0, Lcom/android/settings/widget/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 0

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/widget/PrimarySwitchPreference;->getSecondTargetResId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
