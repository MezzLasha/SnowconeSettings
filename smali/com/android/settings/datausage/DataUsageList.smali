.class public Lcom/android/settings/datausage/DataUsageList;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "DataUsageList.java"

# interfaces
.implements Lcom/android/settings/network/MobileDataEnabledListener$Client;


# static fields
.field static final LOADER_CHART_DATA:I = 0x2

.field static final LOADER_SUMMARY:I = 0x3


# instance fields
.field private mApps:Landroidx/preference/PreferenceGroup;

.field private mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mCycleSpinner:Landroid/widget/Spinner;

.field private mCycles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

.field private mHeader:Landroid/view/View;

.field mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field final mNetworkCycleDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleChartData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNetworkStatsDetailCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Landroid/app/usage/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkType:I

.field mSubId:I

.field mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private mUsageAmount:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 106
    iput v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 502
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$4;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$4;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 526
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$5;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$5;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mNetworkCycleDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 552
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$6;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$6;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mNetworkStatsDetailCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/DataUsageList;)Ljava/util/List;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/datausage/DataUsageList;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateDetailData()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/datausage/DataUsageList;Landroid/app/usage/NetworkStats;[I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageList;->bindStats(Landroid/app/usage/NetworkStats;[I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/datausage/DataUsageList;)Landroidx/preference/PreferenceGroup;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroidx/preference/PreferenceGroup;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/datausage/DataUsageList;)Landroidx/preference/Preference;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroidx/preference/Preference;

    return-object p0
.end method

.method private static accumulate(ILandroid/util/SparseArray;Landroid/app/usage/NetworkStats$Bucket;ILjava/util/ArrayList;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/settingslib/AppItem;",
            ">;",
            "Landroid/app/usage/NetworkStats$Bucket;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/AppItem;",
            ">;J)J"
        }
    .end annotation

    .line 489
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v0

    .line 490
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/AppItem;

    if-nez v1, :cond_0

    .line 492
    new-instance v1, Lcom/android/settingslib/AppItem;

    invoke-direct {v1, p0}, Lcom/android/settingslib/AppItem;-><init>(I)V

    .line 493
    iput p3, v1, Lcom/android/settingslib/AppItem;->category:I

    .line 494
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    iget p0, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 497
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settingslib/AppItem;->addUid(I)V

    .line 498
    iget-wide p0, v1, Lcom/android/settingslib/AppItem;->total:J

    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide p3

    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v2

    add-long/2addr p3, v2

    add-long/2addr p0, p3

    iput-wide p0, v1, Lcom/android/settingslib/AppItem;->total:J

    .line 499
    invoke-static {p5, p6, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private bindStats(Landroid/app/usage/NetworkStats;[I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 358
    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->removeAll()V

    if-nez v1, :cond_0

    return-void

    .line 366
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 369
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v11

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    .line 371
    invoke-virtual {v12}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v13

    .line 372
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 374
    new-instance v15, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v15}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    const-wide/16 v16, 0x0

    move-wide/from16 v9, v16

    .line 375
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    invoke-virtual {v1, v15}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 377
    invoke-virtual {v15}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v8

    .line 380
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 381
    invoke-static {v8}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    const/4 v7, -0x4

    const/16 v18, 0x2

    if-eqz v6, :cond_4

    .line 382
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v13, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eq v4, v11, :cond_1

    .line 385
    invoke-static {v4}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v4

    const/4 v7, 0x0

    move-object v5, v14

    move-object v6, v15

    move/from16 v19, v8

    move-object v8, v3

    .line 386
    invoke-static/range {v4 .. v10}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/app/usage/NetworkStats$Bucket;ILjava/util/ArrayList;J)J

    move-result-wide v9

    goto :goto_1

    :cond_1
    move/from16 v19, v8

    :goto_1
    move/from16 v7, v18

    move/from16 v4, v19

    goto :goto_4

    .line 394
    :cond_2
    invoke-virtual {v12, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    if-nez v6, :cond_3

    move/from16 v5, v18

    goto :goto_2

    .line 400
    :cond_3
    invoke-static {v4}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v7

    :goto_2
    move v4, v7

    move v7, v5

    goto :goto_4

    :cond_4
    move v4, v8

    if-eq v4, v7, :cond_6

    const/4 v5, -0x5

    if-eq v4, v5, :cond_6

    const/16 v5, 0x425

    if-ne v4, v5, :cond_5

    goto :goto_3

    :cond_5
    const/16 v4, 0x3e8

    :cond_6
    :goto_3
    move/from16 v7, v18

    :goto_4
    move-object v5, v14

    move-object v6, v15

    move-object v8, v3

    .line 412
    invoke-static/range {v4 .. v10}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/app/usage/NetworkStats$Bucket;ILjava/util/ArrayList;J)J

    move-result-wide v9

    goto :goto_0

    .line 414
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/NetworkStats;->close()V

    .line 416
    array-length v1, v2

    move v4, v5

    :goto_5
    if-ge v4, v1, :cond_a

    .line 418
    aget v6, v2, v4

    .line 420
    new-instance v7, Landroid/os/UserHandle;

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v13, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_6

    .line 424
    :cond_8
    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/AppItem;

    if-nez v7, :cond_9

    .line 426
    new-instance v7, Lcom/android/settingslib/AppItem;

    invoke-direct {v7, v6}, Lcom/android/settingslib/AppItem;-><init>(I)V

    const-wide/16 v11, -0x1

    .line 427
    iput-wide v11, v7, Lcom/android/settingslib/AppItem;->total:J

    .line 428
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    iget v6, v7, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v14, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    const/4 v6, 0x1

    .line 431
    iput-boolean v6, v7, Lcom/android/settingslib/AppItem;->restricted:Z

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 434
    :cond_a
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v1, v5

    .line 435
    :goto_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    cmp-long v2, v9, v16

    if-eqz v2, :cond_b

    .line 436
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/AppItem;

    iget-wide v6, v2, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v11, 0x64

    mul-long/2addr v6, v11

    div-long/2addr v6, v9

    long-to-int v2, v6

    goto :goto_8

    :cond_b
    move v2, v5

    .line 437
    :goto_8
    new-instance v4, Lcom/android/settings/datausage/AppDataUsagePreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 438
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/AppItem;

    iget-object v8, v0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v4, v6, v7, v2, v8}, Lcom/android/settings/datausage/AppDataUsagePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/AppItem;ILcom/android/settingslib/net/UidDetailProvider;)V

    .line 439
    new-instance v2, Lcom/android/settings/datausage/DataUsageList$3;

    invoke-direct {v2, v0}, Lcom/android/settings/datausage/DataUsageList$3;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 448
    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    return-void
.end method

.method private buildArgs(Landroid/net/NetworkTemplate;)Landroid/os/Bundle;
    .locals 1

    .line 304
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "template"

    .line 305
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "app"

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "fields"

    const/16 v0, 0xa

    .line 307
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 2

    .line 165
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 166
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    const-string v1, "network_template"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 167
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/datausage/BillingCycleSettings;

    .line 168
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->billing_cycle:I

    .line 169
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private updateBody()V
    .locals 5

    .line 281
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 288
    sget v1, Lcom/android/settings/R$color;->sim_noitification:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 289
    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 290
    invoke-static {v0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 291
    invoke-virtual {v0, v2}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v1

    :cond_1
    const/16 v0, 0x7f

    .line 298
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 299
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 298
    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 300
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setColors(II)V

    return-void
.end method

.method private updateDetailData()V
    .locals 5

    .line 345
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mNetworkStatsDetailCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 348
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {v0}, Lcom/android/settingslib/net/NetworkCycleData;->getTotalUsage()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 350
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroidx/preference/Preference;

    sget v2, Lcom/android/settings/R$string;->data_used_template:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DataUsageList"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x155

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 246
    sget p0, Lcom/android/settings/R$xml;->data_usage_list:I

    return p0
.end method

.method public synthetic lambda$onViewCreated$0$DataUsageList(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->isBandwidthControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "DataUsageList"

    const-string v0, "No bandwidth control; leaving"

    .line 135
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 140
    :cond_0
    new-instance v0, Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v0, p1}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    const-string v0, "usage_amount"

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroidx/preference/Preference;

    const-string v0, "chart_data"

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/ChartDataUsagePreference;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    const-string v0, "apps_group"

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroidx/preference/PreferenceGroup;

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_provider_model"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "operator_warning"

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "non_carrier_data_usage_warning"

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->processArgument()V

    .line 156
    new-instance v0, Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/MobileDataEnabledListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settingslib/net/UidDetailProvider;->clearCache()V

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 241
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onMobileDataEnabledChange()V
    .locals 0

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->updatePolicy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 229
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 230
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    .line 232
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 215
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    .line 216
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 222
    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageList;->buildArgs(Landroid/net/NetworkTemplate;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mNetworkCycleDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x2

    .line 221
    invoke-virtual {v0, v3, v1, v2}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 224
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateBody()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 161
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 163
    sget p1, Lcom/android/settings/R$layout;->apps_filter_spinner:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    .line 164
    sget p2, Lcom/android/settings/R$id;->filter_settings:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/settings/datausage/-$$Lambda$DataUsageList$QKkfp4bGf-obWVpXdrxRVfyZhJs;

    invoke-direct {p2, p0}, Lcom/android/settings/datausage/-$$Lambda$DataUsageList$QKkfp4bGf-obWVpXdrxRVfyZhJs;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->filter_spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    const/16 p2, 0x8

    .line 175
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 176
    new-instance p1, Lcom/android/settings/datausage/CycleAdapter;

    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$1;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {p1, p2, v0, v1}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    .line 197
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    new-instance p2, Lcom/android/settings/datausage/DataUsageList$2;

    invoke-direct {p2, p0}, Lcom/android/settings/datausage/DataUsageList$2;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 208
    new-instance p1, Lcom/android/settings/widget/LoadingViewController;

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/android/settings/R$id;->loading_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    .line 210
    invoke-virtual {p1}, Lcom/android/settings/widget/LoadingViewController;->showLoadingViewDelayed()V

    return-void
.end method

.method processArgument()V
    .locals 5

    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "network_template"

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const-string v3, "sub_id"

    .line 257
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 258
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    const/4 v3, 0x0

    const-string v4, "network_type"

    .line 259
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/datausage/DataUsageList;->mNetworkType:I

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    if-ne v0, v2, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "android.provider.extra.SUB_ID"

    .line 263
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 265
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    :cond_1
    return-void
.end method

.method startAppDataUsage(Lcom/android/settingslib/AppItem;)V
    .locals 5

    .line 454
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "app_item"

    .line 455
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 456
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    const-string v1, "network_template"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 457
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 458
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    .line 459
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/net/NetworkCycleChartData;

    .line 460
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/settingslib/net/NetworkCycleData;->getEndTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/settingslib/net/NetworkCycleData;->getStartTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 466
    :cond_1
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    const-string v1, "network_cycles"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 467
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    .line 468
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleData;->getEndTime()J

    move-result-wide v1

    const-string p1, "selected_cycle"

    .line 467
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 470
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/datausage/AppDataUsage;

    .line 471
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->data_usage_app_summary_title:I

    .line 472
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 473
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method updatePolicy()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->filter_settings:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 320
    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/datausage/DataUsageBaseFragment;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsageBaseFragment;->isMobileDataAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    const/4 v0, 0x0

    .line 322
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 323
    check-cast v1, Landroid/widget/ImageView;

    const v0, 0x106000b

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    const/16 v0, 0x8

    .line 327
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->updateCycleList(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateDetailData()V

    :cond_1
    return-void
.end method
