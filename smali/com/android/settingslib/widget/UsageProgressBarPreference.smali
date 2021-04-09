.class public Lcom/android/settingslib/widget/UsageProgressBarPreference;
.super Landroidx/preference/Preference;
.source "UsageProgressBarPreference.java"


# instance fields
.field private final mNumberPattern:Ljava/util/regex/Pattern;

.field private mPercent:I

.field private mTotalSummary:Ljava/lang/CharSequence;

.field private mUsageSummary:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "[\\d]*\\.?[\\d]+"

    .line 40
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mNumberPattern:Ljava/util/regex/Pattern;

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mPercent:I

    .line 70
    sget p1, Lcom/android/settingslib/widget/R$layout;->preference_usage_progress_bar:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "[\\d]*\\.?[\\d]+"

    .line 40
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mNumberPattern:Ljava/util/regex/Pattern;

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mPercent:I

    .line 58
    sget p1, Lcom/android/settingslib/widget/R$layout;->preference_usage_progress_bar:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private enlargeFontOfNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mNumberPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 154
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    const v1, 0x4019999a    # 2.4f

    invoke-direct {p1, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 155
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    const/16 v2, 0x21

    .line 154
    invoke-virtual {v0, p1, v1, p0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 127
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 129
    sget v0, Lcom/android/settingslib/widget/R$id;->usage_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 130
    iget-object v1, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mUsageSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->enlargeFontOfNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    sget v0, Lcom/android/settingslib/widget/R$id;->total_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    iget-object v1, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mTotalSummary:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x102000d

    .line 137
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 138
    iget v0, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mPercent:I

    if-gez v0, :cond_1

    const/4 p0, 0x1

    .line 139
    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 142
    iget p0, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mPercent:I

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void
.end method
