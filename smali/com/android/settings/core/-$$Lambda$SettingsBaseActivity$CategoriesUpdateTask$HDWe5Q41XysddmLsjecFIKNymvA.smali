.class public final synthetic Lcom/android/settings/core/-$$Lambda$SettingsBaseActivity$CategoriesUpdateTask$HDWe5Q41XysddmLsjecFIKNymvA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/core/-$$Lambda$SettingsBaseActivity$CategoriesUpdateTask$HDWe5Q41XysddmLsjecFIKNymvA;->f$0:Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;

    iput-object p2, p0, Lcom/android/settings/core/-$$Lambda$SettingsBaseActivity$CategoriesUpdateTask$HDWe5Q41XysddmLsjecFIKNymvA;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/core/-$$Lambda$SettingsBaseActivity$CategoriesUpdateTask$HDWe5Q41XysddmLsjecFIKNymvA;->f$0:Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;

    iget-object p0, p0, Lcom/android/settings/core/-$$Lambda$SettingsBaseActivity$CategoriesUpdateTask$HDWe5Q41XysddmLsjecFIKNymvA;->f$1:Ljava/util/Set;

    check-cast p1, Landroid/content/ComponentName;

    check-cast p2, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->lambda$getChangedCategories$0$SettingsBaseActivity$CategoriesUpdateTask(Ljava/util/Set;Landroid/content/ComponentName;Lcom/android/settingslib/drawer/Tile;)V

    return-void
.end method
