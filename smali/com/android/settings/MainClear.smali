.class public Lcom/android/settings/MainClear;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "MainClear.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field static final CREDENTIAL_CONFIRM_REQUEST:I = 0x38

.field static final KEYGUARD_REQUEST:I = 0x37


# instance fields
.field private mContentView:Landroid/view/View;

.field mEsimStorage:Landroid/widget/CheckBox;

.field mEsimStorageContainer:Landroid/view/View;

.field mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field mInitiateButton:Lcom/google/android/setupcompat/template/FooterButton;

.field protected final mInitiateListener:Landroid/view/View$OnClickListener;

.field mScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 246
    new-instance v0, Lcom/android/settings/MainClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MainClear$1;-><init>(Lcom/android/settings/MainClear;)V

    iput-object v0, p0, Lcom/android/settings/MainClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MainClear;I)Z
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings/MainClear;->runKeyguardConfirmation(I)Z

    move-result p0

    return p0
.end method

.method private getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V
    .locals 2

    .line 437
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 440
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 441
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 442
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 443
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 444
    invoke-direct {p0, v1, p2}, Lcom/android/settings/MainClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_1
    instance-of p0, p1, Landroid/widget/TextView;

    if-eqz p0, :cond_2

    .line 447
    check-cast p1, Landroid/widget/TextView;

    .line 448
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string p0, ","

    .line 449
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    return-void
.end method

.method private isExtStorageEncrypted()Z
    .locals 1

    .line 454
    invoke-static {}, Landroid/sysprop/VoldProperties;->decrypt()Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 455
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCreateView$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 559
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private loadAccountList(Landroid/os/UserManager;)V
    .locals 23

    move-object/from16 v1, p0

    .line 459
    iget-object v0, v1, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->accounts_label:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 460
    iget-object v0, v1, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->accounts:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 461
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 463
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 464
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    move-object/from16 v5, p1

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 465
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 467
    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v0, "layout_inflater"

    .line 469
    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v7, :cond_9

    .line 474
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    .line 475
    iget v14, v13, Landroid/content/pm/UserInfo;->id:I

    .line 476
    new-instance v15, Landroid/os/UserHandle;

    invoke-direct {v15, v14}, Landroid/os/UserHandle;-><init>(I)V

    .line 477
    invoke-virtual {v8, v14}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v10

    .line 478
    array-length v12, v10

    if-nez v12, :cond_0

    move-object/from16 v18, v6

    move-object/from16 v20, v8

    goto/16 :goto_9

    :cond_0
    add-int v17, v0, v12

    .line 484
    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 485
    invoke-virtual {v0, v14}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v14

    .line 486
    array-length v5, v14

    move-object/from16 v18, v6

    const v6, 0x1020016

    const/4 v0, 0x1

    if-le v7, v0, :cond_2

    .line 489
    invoke-static {v9, v3}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 490
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Landroid/widget/TextView;

    .line 491
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v13

    if-eqz v13, :cond_1

    sget v13, Lcom/android/settings/R$string;->category_work:I

    goto :goto_1

    .line 492
    :cond_1
    sget v13, Lcom/android/settings/R$string;->category_personal:I

    .line 491
    :goto_1
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(I)V

    .line 493
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v12, :cond_8

    .line 497
    aget-object v13, v10, v6

    const/4 v0, 0x0

    :goto_3
    const/16 v16, 0x0

    move/from16 v19, v5

    if-ge v0, v5, :cond_4

    .line 500
    iget-object v5, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v8

    aget-object v8, v14, v0

    iget-object v8, v8, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 501
    aget-object v0, v14, v0

    move-object v5, v0

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v19

    move-object/from16 v8, v20

    goto :goto_3

    :cond_4
    move-object/from16 v20, v8

    move-object/from16 v5, v16

    :goto_4
    const-string v8, "MainClear"

    if-nez v5, :cond_5

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No descriptor for account name="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " type="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v10

    move/from16 v22, v12

    const v8, 0x1020016

    goto/16 :goto_8

    .line 512
    :cond_5
    :try_start_0
    iget v0, v5, Landroid/accounts/AuthenticatorDescription;->iconId:I

    if-eqz v0, :cond_6

    .line 513
    iget-object v0, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v21, v10

    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v4, v0, v10, v15}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 515
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v22, v12

    :try_start_2
    iget v12, v5, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 516
    invoke-virtual {v0, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 515
    invoke-virtual {v10, v0, v15}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v16, v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_6
    move-object/from16 v21, v10

    move/from16 v22, v12

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v21, v10

    :goto_5
    move/from16 v22, v12

    .line 521
    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid icon id for account type "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_3
    move-object/from16 v21, v10

    :catch_4
    move/from16 v22, v12

    .line 519
    :catch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad package name for account type "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    if-nez v16, :cond_7

    .line 524
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    :cond_7
    move-object/from16 v0, v16

    .line 527
    sget v5, Lcom/android/settings/R$layout;->main_clear_account:I

    const/4 v8, 0x0

    invoke-virtual {v9, v5, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v8, 0x1020006

    .line 528
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v8, 0x1020016

    .line 529
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v10, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_8
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v19

    move-object/from16 v8, v20

    move-object/from16 v10, v21

    move/from16 v12, v22

    goto/16 :goto_2

    :cond_8
    move-object/from16 v20, v8

    move/from16 v0, v17

    :goto_9
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, p1

    move-object/from16 v6, v18

    move-object/from16 v8, v20

    goto/16 :goto_0

    :cond_9
    const/4 v5, 0x1

    const/4 v4, 0x0

    if-lez v0, :cond_a

    .line 535
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 536
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 539
    :cond_a
    iget-object v0, v1, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->other_users_present:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 540
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v1

    sub-int/2addr v1, v7

    if-lez v1, :cond_b

    move v12, v5

    goto :goto_a

    :cond_b
    move v12, v4

    :goto_a
    if-eqz v12, :cond_c

    move v10, v4

    goto :goto_b

    :cond_c
    const/16 v10, 0x8

    .line 541
    :goto_b
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 144
    invoke-virtual {v1, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->main_clear_short_title:I

    .line 145
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p0

    return p0
.end method

.method private setUpActionBarAndTitle()V
    .locals 2

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "MainClear"

    if-nez p0, :cond_0

    const-string p0, "No activity attached, skipping setUpActionBarAndTitle"

    .line 121
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "No actionbar, skipping setUpActionBarAndTitle"

    .line 126
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :cond_1
    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method private setUpInitiateButton()V
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/android/settings/MainClear;->mInitiateButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz v0, :cond_0

    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->setup_wizard_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    .line 424
    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 425
    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 426
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->main_clear_button_text:I

    .line 427
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MainClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    .line 428
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 429
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$style;->SudGlifButton_Primary:I

    .line 430
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    .line 431
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    .line 425
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 433
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MainClear;->mInitiateButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-void
.end method


# virtual methods
.method establishInitialState()V
    .locals 6

    .line 289
    invoke-direct {p0}, Lcom/android/settings/MainClear;->setUpActionBarAndTitle()V

    .line 290
    invoke-direct {p0}, Lcom/android/settings/MainClear;->setUpInitiateButton()V

    .line 292
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->erase_external_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MainClear;->mExternalStorageContainer:Landroid/view/View;

    .line 293
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->erase_external:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/MainClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 294
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->erase_esim_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MainClear;->mEsimStorageContainer:Landroid/view/View;

    .line 295
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->erase_esim:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/MainClear;->mEsimStorage:Landroid/widget/CheckBox;

    .line 296
    iget-object v0, p0, Lcom/android/settings/MainClear;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->main_clear_scrollview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/settings/MainClear;->mScrollView:Landroid/widget/ScrollView;

    .line 308
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 310
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/MainClear;->isExtStorageEncrypted()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MainClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v3, Lcom/android/settings/MainClear$2;

    invoke-direct {v3, p0}, Lcom/android/settings/MainClear$2;-><init>(Lcom/android/settings/MainClear;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 311
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/settings/MainClear;->mExternalStorageContainer:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v3, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->erase_external_option_text:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 314
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v3, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->also_erases_external:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 317
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v3, p0, Lcom/android/settings/MainClear;->mExternalStorage:Landroid/widget/CheckBox;

    xor-int/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 332
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/MainClear;->showWipeEuicc()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/MainClear;->showWipeEuiccCheckbox()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 334
    iget-object v0, p0, Lcom/android/settings/MainClear;->mEsimStorageContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/MainClear;->mEsimStorageContainer:Landroid/view/View;

    new-instance v1, Lcom/android/settings/MainClear$3;

    invoke-direct {v1, p0}, Lcom/android/settings/MainClear$3;-><init>(Lcom/android/settings/MainClear;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->also_erases_esim:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 343
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->no_cancel_mobile_plan:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 347
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/MainClear;->mEsimStorage:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 351
    :cond_4
    iget-object v0, p0, Lcom/android/settings/MainClear;->mEsimStorage:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 354
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 355
    invoke-direct {p0, v0}, Lcom/android/settings/MainClear;->loadAccountList(Landroid/os/UserManager;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 357
    iget-object v1, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->main_clear_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 358
    invoke-direct {p0, v1, v0}, Lcom/android/settings/MainClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 359
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/MainClear;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/settings/MainClear$4;

    invoke-direct {v1, p0}, Lcom/android/settings/MainClear$4;-><init>(Lcom/android/settings/MainClear;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 374
    iget-object v0, p0, Lcom/android/settings/MainClear;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method getAccountConfirmationIntent()Landroid/content/Intent;
    .locals 6

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 206
    sget v0, Lcom/android/settings/R$string;->account_type:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    sget v1, Lcom/android/settings/R$string;->account_confirmation_package:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    sget v2, Lcom/android/settings/R$string;->account_confirmation_class:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "MainClear"

    if-nez v3, :cond_3

    .line 210
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 211
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 215
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 216
    invoke-virtual {v3, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 217
    array-length v3, v3

    if-lez v3, :cond_2

    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v3, 0x0

    .line 223
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 224
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 226
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    .line 231
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to resolve Activity: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " accounts installed!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v4

    :cond_3
    :goto_1
    const-string p0, "Resources not set for account confirmation."

    .line 212
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x42

    return p0
.end method

.method hasReachedBottom(Landroid/widget/ScrollView;)Z
    .locals 3

    .line 408
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    .line 412
    invoke-virtual {p1, p0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 413
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p1

    add-int/2addr v2, p1

    sub-int/2addr v1, v2

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method protected isEuiccEnabled(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "euicc"

    .line 402
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/euicc/EuiccManager;

    .line 403
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result p0

    return p0
.end method

.method isValidRequestCode(I)Z
    .locals 0

    const/16 p0, 0x37

    if-eq p1, p0, :cond_1

    const/16 p0, 0x38

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public synthetic lambda$onCreateView$0$MainClear(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/MainClear;->lambda$onCreateView$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 156
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 157
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/MainClear;->onActivityResultInternal(IILandroid/content/Intent;)V

    return-void
.end method

.method onActivityResultInternal(IILandroid/content/Intent;)V
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/settings/MainClear;->isValidRequestCode(I)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/MainClear;->establishInitialState()V

    return-void

    :cond_1
    const/16 p2, 0x38

    if-eq p2, p1, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/MainClear;->getAccountConfirmationIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/settings/MainClear;->showAccountCredentialConfirmation(Landroid/content/Intent;)V

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MainClear;->showFinalConfirmation()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 547
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 549
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    const-string v0, "no_factory_reset"

    .line 548
    invoke-static {p2, v0, p3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p3

    .line 550
    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 551
    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 552
    invoke-static {p2, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 554
    invoke-static {p2}, Lcom/android/settings/Utils;->isDemoUser(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 555
    sget p0, Lcom/android/settings/R$layout;->main_clear_disallowed_screen:I

    invoke-virtual {p1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p3, :cond_3

    .line 557
    new-instance p1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    .line 558
    invoke-virtual {p1, v0, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/-$$Lambda$MainClear$Jv8PtXFW-fkQx_bfM4Hi8oJ6wQs;

    invoke-direct {p2, p0}, Lcom/android/settings/-$$Lambda$MainClear$Jv8PtXFW-fkQx_bfM4Hi8oJ6wQs;-><init>(Lcom/android/settings/MainClear;)V

    .line 559
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 560
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 561
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 564
    :cond_3
    sget p2, Lcom/android/settings/R$layout;->main_clear:I

    invoke-virtual {p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/MainClear;->establishInitialState()V

    .line 567
    iget-object p0, p0, Lcom/android/settings/MainClear;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public onGlobalLayout()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/settings/MainClear;->mInitiateButton:Lcom/google/android/setupcompat/template/FooterButton;

    iget-object v1, p0, Lcom/android/settings/MainClear;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1}, Lcom/android/settings/MainClear;->hasReachedBottom(Landroid/widget/ScrollView;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    return-void
.end method

.method showAccountCredentialConfirmation(Landroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x38

    .line 200
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method showFinalConfirmation()V
    .locals 3

    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 188
    iget-object v1, p0, Lcom/android/settings/MainClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const-string v2, "erase_sd"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    iget-object v1, p0, Lcom/android/settings/MainClear;->mEsimStorage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const-string v2, "erase_esim"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/MainClearConfirm;

    .line 191
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 192
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->main_clear_confirm_title:I

    .line 193
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/MainClear;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method showWipeEuicc()Z
    .locals 3

    .line 385
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 386
    invoke-virtual {p0, v0}, Lcom/android/settings/MainClear;->isEuiccEnabled(Landroid/content/Context;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 389
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "euicc_provisioned"

    .line 390
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    .line 391
    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method showWipeEuiccCheckbox()Z
    .locals 1

    const-string p0, "masterclear.allow_retain_esim_profiles_after_fdr"

    const/4 v0, 0x0

    .line 397
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
