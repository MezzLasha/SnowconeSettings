.class public Lcom/android/settings/notification/app/ConversationPriorityPreference;
.super Landroidx/preference/Preference;
.source "ConversationPriorityPreference.java"


# instance fields
.field private mAlertButton:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mImportance:I

.field private mIsConfigurable:Z

.field private mOriginalImportance:I

.field private mPriorityButton:Landroid/view/View;

.field private mPriorityConversation:Z

.field private mSilenceButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getAccentTint()Landroid/content/res/ColorStateList;
    .locals 0

    .line 132
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private getRegularTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 136
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x1010036

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mContext:Landroid/content/Context;

    .line 78
    sget p1, Lcom/android/settingslib/R$layout;->notif_priority_conversation_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 3

    .line 116
    new-instance p2, Landroid/util/Pair;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p2, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 117
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->updateToggles(Landroid/view/ViewGroup;IZZ)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 3

    .line 120
    iget p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mOriginalImportance:I

    const/4 v0, 0x3

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 121
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 122
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->updateToggles(Landroid/view/ViewGroup;IZZ)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 3

    .line 125
    iget p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mOriginalImportance:I

    const/4 v0, 0x3

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 126
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 127
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->updateToggles(Landroid/view/ViewGroup;IZZ)V

    return-void
.end method

.method static synthetic lambda$setSelected$3(Landroid/view/View;Z)V
    .locals 0

    .line 183
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBindViewHolder$0$ConversationPriorityPreference(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->lambda$onBindViewHolder$0(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$ConversationPriorityPreference(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->lambda$onBindViewHolder$1(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$2$ConversationPriorityPreference(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->lambda$onBindViewHolder$2(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 99
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 100
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 102
    sget v0, Lcom/android/settingslib/R$id;->silence:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    .line 103
    sget v0, Lcom/android/settingslib/R$id;->alert:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    .line 104
    sget v0, Lcom/android/settingslib/R$id;->priority_group:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    .line 106
    iget-boolean v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 112
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mImportance:I

    iget-boolean v3, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityConversation:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->updateToggles(Landroid/view/ViewGroup;IZZ)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$dUjmhbq-NInoH81YtUqr0USw65s;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$dUjmhbq-NInoH81YtUqr0USw65s;-><init>(Lcom/android/settings/notification/app/ConversationPriorityPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$gpknmwVrJ3d5veYoDUW6E-V7wsY;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$gpknmwVrJ3d5veYoDUW6E-V7wsY;-><init>(Lcom/android/settings/notification/app/ConversationPriorityPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$G5hdtfxBd7eIySvGUkpxJ0E2OvI;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$G5hdtfxBd7eIySvGUkpxJ0E2OvI;-><init>(Lcom/android/settings/notification/app/ConversationPriorityPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setConfigurable(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    return-void
.end method

.method public setImportance(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mImportance:I

    return-void
.end method

.method public setOriginalImportance(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mOriginalImportance:I

    return-void
.end method

.method public setPriorityConversation(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityConversation:Z

    return-void
.end method

.method setSelected(Landroid/view/View;Z)V
    .locals 6

    .line 165
    invoke-direct {p0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->getAccentTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 166
    invoke-direct {p0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->getRegularTint()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 168
    sget v2, Lcom/android/settingslib/R$id;->icon:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 169
    sget v3, Lcom/android/settingslib/R$id;->label:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 170
    sget v4, Lcom/android/settingslib/R$id;->summary:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    .line 172
    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 173
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    .line 174
    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_3

    .line 177
    sget v0, Lcom/android/settingslib/R$drawable;->button_border_selected:I

    goto :goto_3

    .line 178
    :cond_3
    sget v0, Lcom/android/settingslib/R$drawable;->button_border_unselected:I

    .line 176
    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 182
    new-instance p0, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$Wdi2fP-7G2bQly_qIEQCx5lHwyA;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$Wdi2fP-7G2bQly_qIEQCx5lHwyA;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateToggles(Landroid/view/ViewGroup;IZZ)V
    .locals 2

    if-eqz p4, :cond_0

    .line 142
    new-instance p4, Landroid/transition/AutoTransition;

    invoke-direct {p4}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 v0, 0x64

    .line 143
    invoke-virtual {p4, v0, v1}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    .line 144
    invoke-static {p1, p4}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    const/4 p1, 0x2

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-gt p2, p1, :cond_1

    const/16 p1, -0x3e8

    if-le p2, p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    .line 149
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    .line 150
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {p0, p1, p4}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 153
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    invoke-virtual {p0, p1, p4}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    .line 154
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    .line 155
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    .line 158
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {p0, p1, p4}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    .line 159
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method
