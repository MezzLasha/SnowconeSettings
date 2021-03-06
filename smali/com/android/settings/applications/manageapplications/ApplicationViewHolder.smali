.class public Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ApplicationViewHolder.java"


# instance fields
.field private final mAppIcon:Landroid/widget/ImageView;

.field private final mAppName:Landroid/widget/TextView;

.field final mDisabled:Landroid/widget/TextView;

.field final mSummary:Landroid/widget/TextView;

.field final mSwitch:Landroid/widget/Switch;

.field final mWidgetContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1020016

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppName:Landroid/widget/TextView;

    const v0, 0x1020006

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppIcon:Landroid/widget/ImageView;

    const v0, 0x1020010

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/android/settings/R$id;->appendix:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/android/settings/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    const v0, 0x1020018

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method static newView(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 5

    .line 67
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->preference_app:I

    const/4 v2, 0x0

    .line 68
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x1020018

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v3, Lcom/android/settings/R$layout;->preference_widget_primary_switch:I

    const/4 v4, 0x1

    .line 73
    invoke-virtual {p1, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 75
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/android/settings/R$layout;->preference_two_target_divider:I

    invoke-virtual {p0, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 78
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/16 p0, 0x8

    .line 81
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method setEnabled(Z)V
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method setIcon(I)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setSummary(I)V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateDisableView(Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    .line 117
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 118
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->not_installed:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 120
    :cond_0
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 122
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->disabled:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method

.method updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V
    .locals 4

    .line 130
    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSizeText of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ManageApplications"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 p2, 0x1

    if-eq p3, p2, :cond_2

    const/4 p2, 0x2

    if-eq p3, p2, :cond_1

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    :cond_3
    iget-wide v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    .line 147
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method updateSwitch(Landroid/view/View$OnClickListener;ZZ)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 155
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p2}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    return-void
.end method
