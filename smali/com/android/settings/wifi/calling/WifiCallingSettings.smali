.class public Lcom/android/settings/wifi/calling/WifiCallingSettings;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "WifiCallingSettings.java"

# interfaces
.implements Lcom/android/settings/support/actionbar/HelpResourceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;,
        Lcom/android/settings/wifi/calling/WifiCallingSettings$InternalViewPagerListener;
    }
.end annotation


# instance fields
.field private mPagerAdapter:Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;

.field private mSil:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTabLayout:Lcom/android/settings/widget/SlidingTabLayout;

.field private mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/calling/WifiCallingSettings;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->updateTitleForCurrentSub()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/calling/WifiCallingSettings;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    return-object p0
.end method

.method private maybeSetViewForSubId()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x1

    const-string v2, "android.provider.extra.SUB_ID"

    .line 109
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 111
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 113
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/RtlCompatibleViewPager;->setCurrentItem(I)V

    :cond_3
    return-void
.end method

.method private updateSubList()V
    .locals 2

    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 202
    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 211
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isWifiCallingProvisioned()Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateTitleForCurrentSub()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {v1}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 222
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_calling_settings_title:I

    .line 223
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 151
    sget p0, Lcom/android/settings/R$string;->help_uri_wifi_calling:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x69

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "settings_silky_home"

    invoke-static {p1, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 126
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 127
    invoke-static {p0}, Lcom/android/settings/search/actionbar/SearchMenuController;->init(Lcom/android/settings/core/InstrumentedFragment;)V

    .line 128
    invoke-static {p0}, Lcom/android/settings/support/actionbar/HelpMenuController;->init(Lcom/android/settingslib/core/lifecycle/ObservableFragment;)V

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->updateSubList()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 89
    sget p3, Lcom/android/settings/R$layout;->wifi_calling_settings_tabs:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 91
    sget p2, Lcom/android/settings/R$id;->sliding_tabs:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/widget/SlidingTabLayout;

    iput-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mTabLayout:Lcom/android/settings/widget/SlidingTabLayout;

    .line 92
    sget p2, Lcom/android/settings/R$id;->view_pager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/widget/RtlCompatibleViewPager;

    iput-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    .line 94
    new-instance p2, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-direct {p2, p0, p3, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettings;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/widget/RtlCompatibleViewPager;)V

    iput-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mPagerAdapter:Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;

    .line 95
    iget-object p3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {p3, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 96
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    new-instance p3, Lcom/android/settings/wifi/calling/WifiCallingSettings$InternalViewPagerListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettings$InternalViewPagerListener;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettings;Lcom/android/settings/wifi/calling/WifiCallingSettings$1;)V

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->maybeSetViewForSubId()V

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStart()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mTabLayout:Lcom/android/settings/widget/SlidingTabLayout;

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SlidingTabLayout;->setViewPager(Lcom/android/settings/widget/RtlCompatibleViewPager;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mTabLayout:Lcom/android/settings/widget/SlidingTabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 146
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->updateTitleForCurrentSub()V

    return-void
.end method

.method queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;
    .locals 1

    .line 230
    new-instance v0, Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
