.class public Lcom/android/settings/widget/SettingsMainSwitchPreference;
.super Landroidx/preference/TwoStatePreference;
.source "SettingsMainSwitchPreference.java"


# instance fields
.field private final mBeforeCheckedChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private final mSwitchChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/widget/OnMainSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mBeforeCheckedChangeListeners:Ljava/util/List;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    .line 50
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mBeforeCheckedChangeListeners:Ljava/util/List;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    .line 55
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mBeforeCheckedChangeListeners:Ljava/util/List;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    .line 60
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mBeforeCheckedChangeListeners:Ljava/util/List;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    .line 66
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 83
    sget v0, Lcom/android/settings/R$layout;->preference_widget_main_switch:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private registerListenerToSwitchBar()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mBeforeCheckedChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;

    .line 209
    iget-object v2, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/OnMainSwitchChangeListener;

    .line 212
    iget-object v2, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    goto :goto_1

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mBeforeCheckedChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 215
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-nez v0, :cond_0

    .line 178
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    :goto_0
    return-void
.end method

.method public hide()V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 76
    sget v0, Lcom/android/settings/R$id;->main_switch_bar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 77
    invoke-virtual {p1}, Lcom/android/settingslib/widget/MainSwitchBar;->show()V

    .line 78
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->updateStatus(Z)V

    .line 79
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->registerListenerToSwitchBar()V

    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 202
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-nez v0, :cond_0

    .line 167
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mBeforeCheckedChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V

    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mTitle:Ljava/lang/String;

    .line 98
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->show()V

    :cond_0
    return-void
.end method

.method public updateStatus(Z)V
    .locals 1

    .line 107
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 110
    iget-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/MainSwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 112
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->show()V

    :cond_0
    return-void
.end method
