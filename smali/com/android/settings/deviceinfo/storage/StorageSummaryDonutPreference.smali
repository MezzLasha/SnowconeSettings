.class public Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;
.super Landroidx/preference/Preference;
.source "StorageSummaryDonutPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mPercent:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 41
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mPercent:D

    .line 50
    sget p1, Lcom/android/settings/R$layout;->storage_summary_donut:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 64
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 65
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 67
    sget v0, Lcom/android/settings/R$id;->donut:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/DonutView;

    if-eqz v0, :cond_0

    .line 69
    iget-wide v1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mPercent:D

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/DonutView;->setPercentage(D)V

    .line 72
    :cond_0
    sget v0, Lcom/android/settings/R$id;->deletion_helper_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 80
    sget v0, Lcom/android/settings/R$id;->deletion_helper_button:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 81
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 83
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 84
    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    const/16 p0, 0x348

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    .line 86
    invoke-virtual {v0, p1, p0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 87
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setPercent(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    long-to-double p1, p1

    long-to-double p3, p3

    div-double/2addr p1, p3

    .line 59
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mPercent:D

    return-void
.end method
