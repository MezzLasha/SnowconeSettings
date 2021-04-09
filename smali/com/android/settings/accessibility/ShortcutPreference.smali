.class public Lcom/android/settings/accessibility/ShortcutPreference;
.super Landroidx/preference/Preference;
.source "ShortcutPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field private mClickCallback:Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;

.field private mSettingsEditable:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mClickCallback:Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mChecked:Z

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mSettingsEditable:Z

    .line 64
    sget p2, Lcom/android/settings/R$layout;->accessibility_shortcut_secondary_action:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 65
    sget p2, Lcom/android/settings/R$layout;->preference_widget_primary_switch:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 66
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-void
.end method

.method private callOnSettingsClicked()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mClickCallback:Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0, p0}, Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;->onSettingsClicked(Lcom/android/settings/accessibility/ShortcutPreference;)V

    :cond_0
    return-void
.end method

.method private callOnToggleClicked()V
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ShortcutPreference;->setChecked(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mClickCallback:Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0, p0}, Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;->onToggleClicked(Lcom/android/settings/accessibility/ShortcutPreference;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/accessibility/ShortcutPreference;->callOnSettingsClicked()V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
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

.method private synthetic lambda$onBindViewHolder$2(Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/settings/accessibility/ShortcutPreference;->callOnToggleClicked()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Landroid/view/View;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/android/settings/accessibility/ShortcutPreference;->callOnToggleClicked()V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mChecked:Z

    return p0
.end method

.method public isSettingsEditable()Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mSettingsEditable:Z

    return p0
.end method

.method public synthetic lambda$onBindViewHolder$0$ShortcutPreference(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ShortcutPreference;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$2$ShortcutPreference(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ShortcutPreference;->lambda$onBindViewHolder$2(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$3$ShortcutPreference(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ShortcutPreference;->lambda$onBindViewHolder$3(Landroid/view/View;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 71
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 73
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 74
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101030e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 77
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->main_frame:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 79
    new-instance v4, Lcom/android/settings/accessibility/-$$Lambda$ShortcutPreference$s18opwqXQJK_LrOXcn-RNo8pnds;

    invoke-direct {v4, p0}, Lcom/android/settings/accessibility/-$$Lambda$ShortcutPreference$s18opwqXQJK_LrOXcn-RNo8pnds;-><init>(Lcom/android/settings/accessibility/ShortcutPreference;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-boolean v4, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mSettingsEditable:Z

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 81
    iget-boolean v4, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mSettingsEditable:Z

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 83
    iget-boolean v4, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mSettingsEditable:Z

    if-eqz v4, :cond_0

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    move v4, v2

    .line 82
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 86
    :cond_1
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->switchWidget:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    if-eqz v1, :cond_3

    .line 89
    sget-object v4, Lcom/android/settings/accessibility/-$$Lambda$ShortcutPreference$lgzoBUDALjr3HbCWHGRdOVIJex0;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$ShortcutPreference$lgzoBUDALjr3HbCWHGRdOVIJex0;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->accessibility_shortcut_settings:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 92
    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 94
    iget-boolean v4, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mChecked:Z

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 95
    new-instance v4, Lcom/android/settings/accessibility/-$$Lambda$ShortcutPreference$dIhEkZxFPivjCVRvRPQZu7QL5WI;

    invoke-direct {v4, p0}, Lcom/android/settings/accessibility/-$$Lambda$ShortcutPreference$dIhEkZxFPivjCVRvRPQZu7QL5WI;-><init>(Lcom/android/settings/accessibility/ShortcutPreference;)V

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-boolean v4, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mSettingsEditable:Z

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setClickable(Z)V

    .line 97
    iget-boolean v4, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mSettingsEditable:Z

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 99
    iget-boolean v4, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mSettingsEditable:Z

    if-eqz v4, :cond_2

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_1

    :cond_2
    move v0, v2

    .line 98
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setBackgroundResource(I)V

    .line 102
    :cond_3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 104
    iget-boolean v1, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mSettingsEditable:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :cond_5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/accessibility/-$$Lambda$ShortcutPreference$Q7zMC5xtid3x2TqSOBlVJXSvsec;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/-$$Lambda$ShortcutPreference$Q7zMC5xtid3x2TqSOBlVJXSvsec;-><init>(Lcom/android/settings/accessibility/ShortcutPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mSettingsEditable:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 109
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mSettingsEditable:Z

    xor-int/2addr p0, v3

    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 119
    iput-boolean p1, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mChecked:Z

    .line 120
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setOnClickCallback(Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mClickCallback:Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;

    return-void
.end method

.method public setSettingsEditable(Z)V
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mSettingsEditable:Z

    if-eq v0, p1, :cond_0

    .line 139
    iput-boolean p1, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mSettingsEditable:Z

    .line 140
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
