.class Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;
.super Landroid/os/AsyncTask;
.source "SettingsBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/core/SettingsBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoriesUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

.field private final mContext:Landroid/content/Context;

.field private mPreviousTileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/core/SettingsBaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/core/SettingsBaseActivity;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->this$0:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 309
    invoke-static {p1}, Lcom/android/settings/core/SettingsBaseActivity;->access$208(Lcom/android/settings/core/SettingsBaseActivity;)I

    .line 310
    iput-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->mContext:Landroid/content/Context;

    .line 311
    invoke-static {p1}, Lcom/android/settings/dashboard/CategoryManager;->get(Landroid/content/Context;)Lcom/android/settings/dashboard/CategoryManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    return-void
.end method

.method private getChangedCategories(Z)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 337
    :cond_0
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 338
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    .line 339
    invoke-virtual {v0}, Lcom/android/settings/dashboard/CategoryManager;->getTileByComponentMap()Ljava/util/Map;

    move-result-object v0

    .line 340
    new-instance v1, Lcom/android/settings/core/-$$Lambda$SettingsBaseActivity$CategoriesUpdateTask$HDWe5Q41XysddmLsjecFIKNymvA;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/core/-$$Lambda$SettingsBaseActivity$CategoriesUpdateTask$HDWe5Q41XysddmLsjecFIKNymvA;-><init>(Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 360
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->mPreviousTileMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 361
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 362
    new-instance v0, Lcom/android/settings/core/-$$Lambda$SettingsBaseActivity$CategoriesUpdateTask$pQKj21ZaFYcryL5pjdGIOU7g9T0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/core/-$$Lambda$SettingsBaseActivity$CategoriesUpdateTask$pQKj21ZaFYcryL5pjdGIOU7g9T0;-><init>(Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;Ljava/util/Set;)V

    invoke-interface {v1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-object p1
.end method

.method private synthetic lambda$getChangedCategories$0(Ljava/util/Set;Landroid/content/ComponentName;Lcom/android/settingslib/drawer/Tile;)V
    .locals 4

    .line 341
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->mPreviousTileMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    const-string v1, "SettingsBaseActivity"

    if-nez v0, :cond_0

    .line 344
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tile added: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p3}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v2}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->mContext:Landroid/content/Context;

    .line 351
    invoke-virtual {v0, v3}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 350
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->mContext:Landroid/content/Context;

    .line 352
    invoke-virtual {p3, v2}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->mContext:Landroid/content/Context;

    .line 353
    invoke-virtual {v0, p0}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 352
    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 354
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tile changed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p3}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$getChangedCategories$1(Ljava/util/Set;Landroid/content/ComponentName;)V
    .locals 2

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tile removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsBaseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->mPreviousTileMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 302
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->doInBackground([Ljava/lang/Boolean;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/CategoryManager;->getTileByComponentMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->mPreviousTileMap:Ljava/util/Map;

    .line 317
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    iget-object v1, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/CategoryManager;->reloadAllCategories(Landroid/content/Context;)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    invoke-static {}, Lcom/android/settings/core/SettingsBaseActivity;->access$300()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/CategoryManager;->updateCategoryFromDenylist(Ljava/util/Set;)V

    const/4 v0, 0x0

    .line 319
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->getChangedCategories(Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$getChangedCategories$0$SettingsBaseActivity$CategoriesUpdateTask(Ljava/util/Set;Landroid/content/ComponentName;Lcom/android/settingslib/drawer/Tile;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->lambda$getChangedCategories$0(Ljava/util/Set;Landroid/content/ComponentName;Lcom/android/settingslib/drawer/Tile;)V

    return-void
.end method

.method public synthetic lambda$getChangedCategories$1$SettingsBaseActivity$CategoriesUpdateTask(Ljava/util/Set;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->lambda$getChangedCategories$1(Ljava/util/Set;Landroid/content/ComponentName;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 302
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->onPostExecute(Ljava/util/Set;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 324
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->this$0:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-static {v0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->access$400(Lcom/android/settings/core/SettingsBaseActivity;Ljava/util/Set;)V

    .line 327
    :cond_1
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->this$0:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-static {p0}, Lcom/android/settings/core/SettingsBaseActivity;->access$210(Lcom/android/settings/core/SettingsBaseActivity;)I

    return-void
.end method
