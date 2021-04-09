.class public Lcom/android/settings/inputmethod/UserDictionarySettings;
.super Landroidx/fragment/app/ListFragment;
.source "UserDictionarySettings.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/ListFragment;",
        "Lcom/android/settingslib/core/instrumentation/Instrumentable;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mLocale:Ljava/lang/String;

.field private mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    return-void
.end method

.method private createAdapter()Landroid/widget/ListAdapter;
    .locals 7

    .line 144
    new-instance v6, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->user_dictionary_item:I

    iget-object v3, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string p0, "word"

    const-string v0, "shortcut"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 p0, 0x2

    new-array v5, p0, [I

    fill-array-data v5, :array_0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v6

    nop

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method public static deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 4

    .line 229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 230
    sget-object p1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    new-array v0, v1, [Ljava/lang/String;

    aput-object p0, v0, v2

    const-string p0, "word=? AND shortcut is null OR shortcut=\'\'"

    invoke-virtual {p2, p1, p0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 234
    :cond_0
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    const-string p0, "word=? AND shortcut=?"

    invoke-virtual {p2, v0, p0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getShortcut(I)Ljava/lang/String;
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 219
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 221
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    .line 223
    :cond_1
    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string p1, "shortcut"

    .line 224
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 223
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWord(I)Ljava/lang/String;
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 209
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 211
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    .line 213
    :cond_1
    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string p1, "word"

    .line 214
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 213
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 190
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "mode"

    .line 191
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "word"

    .line 194
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "shortcut"

    .line 195
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mLocale:Ljava/lang/String;

    const-string p2, "locale"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;

    .line 199
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 200
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->user_dict_settings_add_dialog_title:I

    .line 201
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x202

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 78
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    new-instance p1, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getMetricsCategory()I

    move-result v0

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;-><init>(ILcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "locale"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    move-object p1, v0

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v1

    .line 100
    :goto_2
    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mLocale:Ljava/lang/String;

    const/4 p1, 0x1

    .line 102
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 242
    new-instance p1, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 161
    sget p0, Lcom/android/settings/R$string;->user_dict_settings_add_menu_title:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 162
    invoke-interface {p1, p2, v0, p2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    sget p1, Lcom/android/settings/R$drawable;->ic_add_24dp:I

    .line 163
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p0

    const/4 p1, 0x5

    .line 164
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "settings_silky_home"

    invoke-static {p3, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    sget v0, Lcom/android/settings/R$string;->user_dict_settings_title:I

    invoke-virtual {p3, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 116
    sget v0, Lcom/android/settings/R$string;->user_dict_settings_title:I

    invoke-virtual {p3, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/inputmethod/UserDictionarySettingsUtils;->getLocaleDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 117
    invoke-virtual {p3, p0}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_1
    const p0, 0x10900da

    const/4 p3, 0x0

    .line 121
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 152
    invoke-direct {p0, p3}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getWord(I)Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-direct {p0, p3}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getShortcut(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 247
    iput-object p2, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 248
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/inputmethod/UserDictionarySettings;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 171
    invoke-direct {p0, p1, p1}, Lcom/android/settings/inputmethod/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 179
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 180
    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 138
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 139
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->onResume()V

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const p2, 0x1020004

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 129
    sget p2, Lcom/android/settings/R$string;->user_dict_settings_empty_text:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p0

    const/4 p2, 0x1

    .line 132
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 133
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method
