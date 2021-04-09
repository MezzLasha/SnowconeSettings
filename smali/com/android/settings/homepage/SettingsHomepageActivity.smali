.class public Lcom/android/settings/homepage/SettingsHomepageActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SettingsHomepageActivity.java"


# instance fields
.field private mSearchBoxHeight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private showFragment(Landroidx/fragment/app/Fragment;I)V
    .locals 1

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 102
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_0

    .line 105
    invoke-virtual {v0, p2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 109
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private showSuggestionFragment()V
    .locals 2

    .line 84
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getContextualSuggestionFragment()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    sget v1, Lcom/android/settings/R$id;->contextual_suggestion_content:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Landroidx/fragment/app/Fragment;I)V

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->suggestion_height:I

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->setHomepageContainerTopOffset(I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SettingsHomepageActivity"

    const-string v1, "Cannot show fragment"

    .line 95
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method getSearchBoxHeight()I
    .locals 3

    .line 130
    iget v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mSearchBoxHeight:I

    if-eqz v0, :cond_0

    return v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->search_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->search_bar_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 138
    iput v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mSearchBoxHeight:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget p1, Lcom/android/settings/R$layout;->settings_homepage_container:I

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 53
    sget p1, Lcom/android/settings/R$id;->settings_homepage_container:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x300

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 57
    sget p1, Lcom/android/settings/R$id;->app_bar_container:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getSearchBoxHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->setDefaultHomepageContainerPaddingTop()V

    .line 61
    sget p1, Lcom/android/settings/R$id;->search_action_bar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    .line 62
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v0

    const/16 v1, 0x5de

    .line 63
    invoke-interface {v0, p0, p1, v1}, Lcom/android/settings/search/SearchFeatureProvider;->initSearchToolbar(Landroid/app/Activity;Landroid/widget/Toolbar;I)V

    .line 65
    sget p1, Lcom/android/settings/R$id;->account_avatar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 66
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accounts/AvatarViewMixin;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/accounts/AvatarViewMixin;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 67
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settings/core/HideNonSystemOverlayMixin;

    invoke-direct {v0, p0}, Lcom/android/settings/core/HideNonSystemOverlayMixin;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 69
    const-class p1, Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "settings_silky_home"

    .line 71
    invoke-static {p0, p1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showSuggestionFragment()V

    :cond_0
    const-string p1, "settings_contextual_home"

    .line 74
    invoke-static {p0, p1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    new-instance p1, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    invoke-direct {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;-><init>()V

    sget v0, Lcom/android/settings/R$id;->contextual_cards_content:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Landroidx/fragment/app/Fragment;I)V

    .line 78
    :cond_1
    new-instance p1, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-direct {p1}, Lcom/android/settings/homepage/TopLevelSettings;-><init>()V

    sget v0, Lcom/android/settings/R$id;->main_content:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Landroidx/fragment/app/Fragment;I)V

    .line 79
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    .line 80
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    return-void
.end method

.method setDefaultHomepageContainerPaddingTop()V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->setHomepageContainerTopOffset(I)V

    return-void
.end method

.method setHomepageContainerTopOffset(I)V
    .locals 1

    .line 114
    sget v0, Lcom/android/settings/R$id;->homepage_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getSearchBoxHeight()I

    move-result p0

    add-int/2addr p0, p1

    const/4 p1, 0x0

    .line 116
    invoke-virtual {v0, p1, p0, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    const/4 p0, 0x1

    .line 119
    invoke-virtual {v0, p0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
