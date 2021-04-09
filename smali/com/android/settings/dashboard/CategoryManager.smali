.class public Lcom/android/settings/dashboard/CategoryManager;
.super Ljava/lang/Object;
.source "CategoryManager.java"


# static fields
.field private static sInstance:Lcom/android/settings/dashboard/CategoryManager;


# instance fields
.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategoryByKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private final mTileByComponentCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    .line 67
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/CategoryManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/settings/dashboard/CategoryManager;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/settings/dashboard/CategoryManager;->sInstance:Lcom/android/settings/dashboard/CategoryManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/settings/dashboard/CategoryManager;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/CategoryManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/dashboard/CategoryManager;->sInstance:Lcom/android/settings/dashboard/CategoryManager;

    .line 61
    :cond_0
    sget-object p0, Lcom/android/settings/dashboard/CategoryManager;->sInstance:Lcom/android/settings/dashboard/CategoryManager;

    return-object p0
.end method

.method static synthetic lambda$getTileByComponentMap$0(Ljava/util/Map;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 3

    const/4 v0, 0x0

    .line 117
    :goto_0
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 118
    invoke-virtual {p1, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private logTiles(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private declared-synchronized tryInitCategories(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 137
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/CategoryManager;->tryInitCategories(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized tryInitCategories(Landroid/content/Context;Z)V
    .locals 4

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;

    if-nez v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz p2, :cond_0

    .line 144
    iget-object p2, p0, Lcom/android/settings/dashboard/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 146
    :cond_0
    iget-object p2, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 147
    iget-object p2, p0, Lcom/android/settings/dashboard/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/android/settingslib/drawer/TileUtils;->getCategories(Landroid/content/Context;Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;

    .line 148
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 149
    iget-object v2, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 151
    :cond_1
    iget-object p2, p0, Lcom/android/settings/dashboard/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, p2, v1}, Lcom/android/settings/dashboard/CategoryManager;->backwardCompatCleanupForCategory(Ljava/util/Map;Ljava/util/Map;)V

    .line 152
    iget-object p2, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/CategoryManager;->sortCategories(Landroid/content/Context;Ljava/util/Map;)V

    .line 153
    iget-object p2, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/android/settings/dashboard/CategoryManager;->filterDuplicateTiles(Ljava/util/Map;)V

    if-eqz v0, :cond_2

    .line 155
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/CategoryManager;->logTiles(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized backwardCompatCleanupForCategory(Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 169
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 172
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 175
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 185
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    .line 186
    sget-object v6, Lcom/android/settingslib/drawer/CategoryKey;->KEY_COMPAT_MAP:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v2

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    .line 195
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    .line 196
    sget-object v2, Lcom/android/settingslib/drawer/CategoryKey;->KEY_COMPAT_MAP:Ljava/util/Map;

    .line 197
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 198
    invoke-virtual {v1, v2}, Lcom/android/settingslib/drawer/Tile;->setCategory(Ljava/lang/String;)V

    .line 200
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/DashboardCategory;

    if-nez v3, :cond_5

    .line 202
    new-instance v3, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {v3, v2}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_5
    invoke-virtual {v3, v1}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 209
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized filterDuplicateTiles(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 232
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 233
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 234
    invoke-virtual {v0}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v1

    .line 235
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 236
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 238
    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v4

    .line 239
    instance-of v5, v4, Lcom/android/settingslib/drawer/ProviderTile;

    if-eqz v5, :cond_2

    .line 240
    invoke-virtual {v4}, Lcom/android/settingslib/drawer/Tile;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 241
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 242
    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/DashboardCategory;->removeTile(I)V

    goto :goto_1

    .line 244
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 247
    :cond_2
    invoke-virtual {v4}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 248
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 249
    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/DashboardCategory;->removeTile(I)V

    goto :goto_1

    .line 251
    :cond_3
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 256
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCategories(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 78
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/CategoryManager;->tryInitCategories(Landroid/content/Context;)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTileByComponentMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 111
    :try_start_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v1, "CategoryManager"

    const-string v2, "Category is null, no tiles"

    .line 113
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-object v0

    .line 116
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/settings/dashboard/-$$Lambda$CategoryManager$ppgVV0-7kpqqZoqI_Jlmr_ZXmGc;

    invoke-direct {v2, v0}, Lcom/android/settings/dashboard/-$$Lambda$CategoryManager$ppgVV0-7kpqqZoqI_Jlmr_ZXmGc;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTilesByCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 0

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/CategoryManager;->tryInitCategories(Landroid/content/Context;)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/drawer/DashboardCategory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reloadAllCategories(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dashboard/CategoryManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/CategoryManager;->tryInitCategories(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized sortCategories(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 221
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/DashboardCategory;->sortTiles(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 224
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateCategoryFromDenylist(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;

    if-nez v0, :cond_0

    const-string p1, "CategoryManager"

    const-string v0, "Category is null, skipping denylist update"

    .line 95
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 98
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 99
    iget-object v2, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    move v3, v0

    .line 100
    :goto_1
    invoke-virtual {v2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 101
    invoke-virtual {v2, v3}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v4

    .line 102
    invoke-virtual {v4}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 103
    invoke-virtual {v2, v3}, Lcom/android/settingslib/drawer/DashboardCategory;->removeTile(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
