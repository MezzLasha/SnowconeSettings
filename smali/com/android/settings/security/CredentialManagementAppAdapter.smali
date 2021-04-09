.class public Lcom/android/settings/security/CredentialManagementAppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CredentialManagementAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;,
        Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppUriAuthentication:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCredentialManagerPackage:Ljava/lang/String;

.field private final mIncludeExpander:Z

.field private final mIncludeHeader:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSortedAppNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;ZZ)V"
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mContext:Landroid/content/Context;

    .line 191
    iput-object p2, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mCredentialManagerPackage:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 193
    iput-object p3, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mAppUriAuthentication:Ljava/util/Map;

    .line 194
    invoke-direct {p0, p3}, Lcom/android/settings/security/CredentialManagementAppAdapter;->sortPackageNames(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mSortedAppNames:Ljava/util/List;

    .line 195
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 196
    iput-boolean p4, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mIncludeHeader:Z

    .line 197
    iput-boolean p5, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mIncludeExpander:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mCredentialManagerPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mSortedAppNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/security/CredentialManagementAppAdapter;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mIncludeExpander:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/util/Map;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mAppUriAuthentication:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-object p0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 223
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private synthetic lambda$sortPackageNames$0(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 208
    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    .line 209
    invoke-direct {p0, p2}, Lcom/android/settings/security/CredentialManagementAppAdapter;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p0

    if-ne v0, p0, :cond_0

    .line 211
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private sortPackageNames(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 207
    new-instance p1, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppAdapter$lW8wrMkzi8noHfFCvMkz-ZVgGPk;

    invoke-direct {p1, p0}, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppAdapter$lW8wrMkzi8noHfFCvMkz-ZVgGPk;-><init>(Lcom/android/settings/security/CredentialManagementAppAdapter;)V

    invoke-interface {v0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mIncludeHeader:Z

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mAppUriAuthentication:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mIncludeHeader:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 267
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public synthetic lambda$sortPackageNames$0$CredentialManagementAppAdapter(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/security/CredentialManagementAppAdapter;->lambda$sortPackageNames$0(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 248
    instance-of v0, p1, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;

    if-eqz v0, :cond_0

    .line 249
    check-cast p1, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;

    invoke-virtual {p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->bindView()V

    goto :goto_0

    .line 250
    :cond_0
    instance-of v0, p1, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;

    if-eqz v0, :cond_2

    .line 251
    iget-boolean p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mIncludeHeader:Z

    if-eqz p0, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 252
    :cond_1
    check-cast p1, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;

    invoke-virtual {p1, p2}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->bindView(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/settings/R$layout;->request_manage_credentials_header:I

    .line 236
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 238
    new-instance p2, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/security/CredentialManagementAppAdapter;Landroid/view/View;)V

    return-object p2

    .line 240
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/settings/R$layout;->app_authentication_item:I

    .line 241
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 242
    new-instance p2, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;-><init>(Lcom/android/settings/security/CredentialManagementAppAdapter;Landroid/view/View;)V

    return-object p2
.end method
