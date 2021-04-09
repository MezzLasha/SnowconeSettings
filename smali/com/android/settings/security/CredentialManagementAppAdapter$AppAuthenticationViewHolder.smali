.class public Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CredentialManagementAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/CredentialManagementAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppAuthenticationViewHolder"
.end annotation


# instance fields
.field private final mAppIconView:Landroid/widget/ImageView;

.field private final mAppNameView:Landroid/widget/TextView;

.field private final mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mExpandedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExpanderIconView:Landroid/widget/ImageView;

.field private final mNumberOfUrisView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/security/CredentialManagementAppAdapter;Landroid/view/View;)V
    .locals 1

    .line 107
    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    .line 108
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 109
    sget p1, Lcom/android/settings/R$id;->app_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppIconView:Landroid/widget/ImageView;

    .line 110
    sget p1, Lcom/android/settings/R$id;->app_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppNameView:Landroid/widget/TextView;

    .line 111
    sget p1, Lcom/android/settings/R$id;->number_of_uris:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    .line 112
    sget p1, Lcom/android/settings/R$id;->expand:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    .line 113
    sget v0, Lcom/android/settings/R$id;->uris:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 114
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpandedApps:Ljava/util/List;

    .line 116
    new-instance p2, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppAdapter$AppAuthenticationViewHolder$OsNXKvILekBzduv1SZYLxZfh6Fw;

    invoke-direct {p2, p0}, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppAdapter$AppAuthenticationViewHolder$OsNXKvILekBzduv1SZYLxZfh6Fw;-><init>(Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private bindChildView(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 170
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 171
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 172
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setInitialPrefetchItemCount(I)V

    .line 173
    new-instance v1, Lcom/android/settings/security/UriAuthenticationPolicyAdapter;

    new-instance v2, Ljava/util/ArrayList;

    .line 174
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lcom/android/settings/security/UriAuthenticationPolicyAdapter;-><init>(Ljava/util/List;)V

    .line 175
    iget-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 176
    iget-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 177
    iget-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 178
    iget-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {p0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$600(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method private bindPolicyView(Ljava/lang/String;)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$400(Lcom/android/settings/security/CredentialManagementAppAdapter;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpandedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->ic_expand_less:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$500(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->bindChildView(Ljava/util/Map;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    .line 155
    invoke-static {v1}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$500(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->getNumberOfUrlsText(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    const p1, 0x108039b

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$500(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->bindChildView(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private getNumberOfUrlsText(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 182
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    const-string p0, " URLs"

    goto :goto_0

    :cond_0
    const-string p0, " URL"

    .line 183
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {p1}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$300(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpandedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpandedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpandedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->bindPolicyView(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindView(I)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$300(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$100(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v2}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$100(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v2}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$100(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->bindPolicyView(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$0$CredentialManagementAppAdapter$AppAuthenticationViewHolder(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method
