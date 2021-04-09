.class public Lcom/android/settingslib/widget/SettingsSpinnerPreference;
.super Landroidx/preference/Preference;
.source "SettingsSpinnerPreference.java"


# instance fields
.field private mAdapter:Lcom/android/settingslib/widget/settingsspinner/SettingsSpinnerAdapter;

.field private mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final mOnSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    new-instance p1, Lcom/android/settingslib/widget/SettingsSpinnerPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/widget/SettingsSpinnerPreference$1;-><init>(Lcom/android/settingslib/widget/SettingsSpinnerPreference;)V

    iput-object p1, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mOnSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 64
    sget p1, Lcom/android/settingslib/widget/R$layout;->settings_spinner_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    new-instance p1, Lcom/android/settingslib/widget/SettingsSpinnerPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/widget/SettingsSpinnerPreference$1;-><init>(Lcom/android/settingslib/widget/SettingsSpinnerPreference;)V

    iput-object p1, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mOnSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 52
    sget p1, Lcom/android/settingslib/widget/R$layout;->settings_spinner_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/widget/SettingsSpinnerPreference;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mPosition:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/settingslib/widget/SettingsSpinnerPreference;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settingslib/widget/SettingsSpinnerPreference;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 104
    sget v0, Lcom/android/settingslib/widget/R$id;->spinner:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/settingsspinner/SettingsSpinner;

    .line 105
    iget-object v0, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mAdapter:Lcom/android/settingslib/widget/settingsspinner/SettingsSpinnerAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 106
    iget v0, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mPosition:I

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 107
    iget-object p0, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mOnSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method
