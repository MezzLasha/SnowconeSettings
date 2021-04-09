.class public abstract Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "BaseTimeZonePicker.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

.field private final mDefaultExpandSearch:Z

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mSearchEnabled:Z

.field private final mSearchHintResId:I

.field private mSearchView:Landroid/widget/SearchView;

.field private mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

.field private final mTitleResId:I


# direct methods
.method protected constructor <init>(IIZZ)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 70
    iput p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTitleResId:I

    .line 71
    iput p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchHintResId:I

    .line 72
    iput-boolean p3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchEnabled:Z

    .line 73
    iput-boolean p4, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mDefaultExpandSearch:Z

    return-void
.end method


# virtual methods
.method protected abstract createAdapter(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
.end method

.method protected getLocale()Ljava/util/Locale;
    .locals 1

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 79
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTitleResId:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 120
    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchEnabled:Z

    if-eqz v0, :cond_1

    .line 121
    sget v0, Lcom/android/settings/R$menu;->time_zone_base_search_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 123
    sget p2, Lcom/android/settings/R$id;->time_zone_search_menu:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SearchView;

    iput-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroid/widget/SearchView;

    .line 126
    iget v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchHintResId:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 129
    iget-boolean p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mDefaultExpandSearch:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 131
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p1, v0}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 132
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroid/widget/SearchView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->setActivated(Z)V

    .line 133
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    invoke-virtual {p1, v1, p2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroid/widget/SearchView;

    const p2, 0x102045d

    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 139
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result p2

    .line 140
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    .line 139
    invoke-virtual {p1, v0, p2, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 141
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroid/widget/SearchView;

    const p1, 0x1020459

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 145
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 146
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 147
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 86
    sget p3, Lcom/android/settings/R$layout;->recycler_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 87
    sget p2, Lcom/android/settings/R$id;->recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p3, v1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 90
    iget-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p2

    new-instance p3, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datetime/timezone/-$$Lambda$CORcHRZwHiFquA0nfpxZGC5-8t4;

    invoke-direct {v2, p0}, Lcom/android/settings/datetime/timezone/-$$Lambda$CORcHRZwHiFquA0nfpxZGC5-8t4;-><init>(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)V

    invoke-direct {p3, v1, v2}, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;)V

    const/4 p0, 0x0

    .line 94
    invoke-virtual {p2, v0, p0, p3}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-object p1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    if-eqz p0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getFilter()Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTimeZoneDataReady(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 101
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->createAdapter(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    .line 103
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method
