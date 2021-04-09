.class public Lcom/android/settings/accounts/AccountPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AccountPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;,
        Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;
    }
.end annotation


# instance fields
.field private mAccountProfileOrder:I

.field private mAuthorities:[Ljava/lang/String;

.field private mAuthoritiesCount:I

.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

.field private mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mProfileNotAvailablePreference:Landroidx/preference/Preference;

.field private mProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;I)V
    .locals 6

    .line 140
    new-instance v4, Lcom/android/settings/accounts/AccountRestrictionHelper;

    invoke-direct {v4, p1}, Lcom/android/settings/accounts/AccountRestrictionHelper;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/accounts/AccountPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;Lcom/android/settings/accounts/AccountRestrictionHelper;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;Lcom/android/settings/accounts/AccountRestrictionHelper;I)V
    .locals 2

    .line 147
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    .line 89
    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;Lcom/android/settings/accounts/AccountPreferenceController$1;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthoritiesCount:I

    const/4 v0, 0x1

    .line 95
    iput v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAccountProfileOrder:I

    const-string v0, "user"

    .line 148
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    .line 149
    iput-object p3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz p3, :cond_0

    .line 152
    array-length p1, p3

    iput p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthoritiesCount:I

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 156
    iput-object p4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    .line 157
    iput p5, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mType:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/AccountPreferenceController;)Lcom/android/settings/SettingsPreferenceFragment;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->stopListeningToAccountUpdates()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateUi()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->listenToAccountUpdates()V

    return-void
.end method

.method private accountTypeHasAnyRequestedAuthorities(Lcom/android/settingslib/accounts/AuthenticatorHelper;Ljava/lang/String;)Z
    .locals 3

    .line 565
    iget v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthoritiesCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 569
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 572
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No sync authorities for account type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountPrefController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    move p2, v0

    .line 575
    :goto_0
    iget v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthoritiesCount:I

    if-ge p2, v2, :cond_3

    .line 576
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private getAccountTypePreferences(Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;Landroid/util/ArrayMap;)Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/accounts/AuthenticatorHelper;",
            "Landroid/os/UserHandle;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/accounts/AccountTypePreference;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/accounts/AccountTypePreference;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 497
    invoke-virtual/range {p1 .. p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v3

    .line 498
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    .line 501
    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_5

    .line 502
    aget-object v7, v3, v6

    .line 504
    invoke-direct {v0, v1, v7}, Lcom/android/settings/accounts/AccountPreferenceController;->accountTypeHasAnyRequestedAuthorities(Lcom/android/settingslib/accounts/AuthenticatorHelper;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    :goto_1
    move-object/from16 v22, v3

    goto/16 :goto_5

    .line 507
    :cond_0
    iget-object v8, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 511
    :cond_1
    invoke-virtual {v1, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getPackageForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 512
    invoke-virtual {v1, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getLabelIdForType(Ljava/lang/String;)I

    move-result v15

    .line 514
    iget-object v9, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    .line 515
    invoke-virtual {v9, v7, v2}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v14

    .line 516
    iget-object v9, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 517
    iget-object v9, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v9}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v21

    .line 520
    array-length v13, v14

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_4

    aget-object v11, v14, v12

    .line 522
    invoke-static {v11}, Lcom/android/settings/accounts/AccountTypePreference;->buildKey(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p3

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accounts/AccountTypePreference;

    if-eqz v9, :cond_2

    .line 524
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object/from16 v22, v3

    move v2, v12

    move/from16 v23, v13

    move-object/from16 v24, v14

    move/from16 v25, v15

    goto :goto_4

    .line 527
    :cond_2
    iget-object v9, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 528
    invoke-virtual {v1, v9}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 529
    iget-object v5, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/android/settings/accounts/AccountRestrictionHelper;->showAccount([Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    .line 532
    :cond_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v9, "account"

    .line 533
    invoke-virtual {v5, v9, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v9, "user_handle"

    .line 535
    invoke-virtual {v5, v9, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v9, "account_type"

    .line 537
    invoke-virtual {v5, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v22, v3

    const-string v3, "account_label"

    .line 539
    invoke-virtual {v5, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "account_title_res"

    .line 541
    invoke-virtual {v5, v3, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "android.intent.extra.USER"

    .line 543
    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 544
    new-instance v3, Lcom/android/settings/accounts/AccountTypePreference;

    iget-object v9, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 545
    invoke-virtual {v9, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v2

    const-class v9, Lcom/android/settings/accounts/AccountDetailDashboardFragment;

    .line 547
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    move-object v9, v3

    move-object/from16 v10, v21

    move-object/from16 v17, v11

    move v11, v2

    move v2, v12

    move-object/from16 v12, v17

    move/from16 v23, v13

    move-object/from16 v13, v19

    move-object/from16 v24, v14

    move v14, v15

    move/from16 v25, v15

    move-object v15, v8

    move-object/from16 v17, v5

    move-object/from16 v18, v20

    invoke-direct/range {v9 .. v18}, Lcom/android/settings/accounts/AccountTypePreference;-><init>(Landroid/content/Context;ILandroid/accounts/Account;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    .line 544
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v12, v2, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    move/from16 v13, v23

    move-object/from16 v14, v24

    move/from16 v15, v25

    goto/16 :goto_2

    :cond_4
    move-object/from16 v22, v3

    .line 549
    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    goto/16 :goto_0

    .line 552
    :cond_5
    new-instance v1, Lcom/android/settings/accounts/AccountPreferenceController$1;

    invoke-direct {v1, v0}, Lcom/android/settings/accounts/AccountPreferenceController$1;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v4
.end method

.method private getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 2

    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 400
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->getAdminApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 404
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 405
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->managing_admin:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isSingleProfile()Z
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private listenToAccountUpdates()V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 426
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    iget-object v2, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    if-eqz v2, :cond_0

    .line 428
    invoke-virtual {v2}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private newAddAccountPreference()Lcom/android/settingslib/RestrictedPreference;
    .locals 2

    .line 366
    new-instance v0, Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 367
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "add_account"

    .line 368
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 369
    sget v1, Lcom/android/settings/R$string;->add_account_label:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 370
    sget v1, Lcom/android/settings/R$drawable;->ic_add_24dp:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 371
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/16 p0, 0x3e8

    .line 372
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOrder(I)V

    return-object v0
.end method

.method private newManagedProfileSettings()Landroidx/preference/Preference;
    .locals 2

    .line 389
    new-instance v0, Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v1, "work_profile_setting"

    .line 390
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 391
    sget v1, Lcom/android/settings/R$string;->managed_profile_settings_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 392
    sget v1, Lcom/android/settings/R$drawable;->ic_settings_24dp:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 393
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/16 p0, 0x3e9

    .line 394
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOrder(I)V

    return-object v0
.end method

.method private newRemoveWorkProfilePreference()Lcom/android/settingslib/RestrictedPreference;
    .locals 2

    .line 377
    new-instance v0, Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 378
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "remove_profile"

    .line 379
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 380
    sget v1, Lcom/android/settings/R$string;->remove_managed_profile_label:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 381
    sget v1, Lcom/android/settings/R$drawable;->ic_delete:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 382
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/16 p0, 0x3ea

    .line 383
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOrder(I)V

    return-object v0
.end method

.method private stopListeningToAccountUpdates()V
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 436
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    iget-object v2, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    if-eqz v2, :cond_0

    .line 438
    invoke-virtual {v2}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAccountTypes(Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;)V
    .locals 6

    .line 444
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 445
    invoke-virtual {v0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 449
    :cond_0
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 450
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    invoke-direct {v0, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 452
    iget-object v2, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v3, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 453
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 452
    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/accounts/AccountPreferenceController;->getAccountTypePreferences(Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;Landroid/util/ArrayMap;)Ljava/util/ArrayList;

    move-result-object p0

    .line 455
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 457
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountTypePreference;

    .line 458
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 459
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 460
    iget-object v5, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 461
    iget-object v5, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v5, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 462
    iget-object v5, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 465
    :cond_2
    iget-object p0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->addAccountPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz p0, :cond_3

    .line 466
    iget-object v1, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 468
    :cond_3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 469
    iget-object v1, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object v2, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    .line 470
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 469
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 471
    iget-object v1, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 474
    :cond_4
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 476
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroidx/preference/Preference;

    if-nez v0, :cond_5

    .line 477
    new-instance v0, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 478
    invoke-virtual {v2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroidx/preference/Preference;

    .line 480
    :cond_5
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 481
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$drawable;->empty_icon:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 482
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->managed_profile_not_available_label:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 485
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 487
    :cond_6
    iget-object p0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->removeWorkProfilePreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz p0, :cond_7

    .line 488
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 490
    :cond_7
    iget-object p0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->managedProfilePreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_8

    .line 491
    iget-object p1, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_8
    :goto_2
    return-void
.end method

.method private updateProfileUi(Landroid/content/pm/UserInfo;)V
    .locals 8

    .line 305
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 310
    iput-boolean v1, v0, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->pendingRemoval:Z

    .line 311
    iput-object p1, v0, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 312
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    new-instance v1, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 315
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {v1, v2, p1, p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v1, v0, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    :cond_1
    return-void

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 320
    new-instance v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    invoke-direct {v2}, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;-><init>()V

    .line 321
    iput-object p1, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 322
    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 324
    invoke-virtual {v4}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 323
    invoke-virtual {v3, v4}, Lcom/android/settings/accounts/AccountRestrictionHelper;->createAccessiblePreferenceCategory(Landroid/content/Context;)Lcom/android/settings/AccessiblePreferenceCategory;

    move-result-object v3

    .line 325
    iget v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAccountProfileOrder:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAccountProfileOrder:I

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 326
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->isSingleProfile()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 327
    sget v4, Lcom/android/settings/R$string;->account_for_section_header:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 328
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v6

    iget-object v7, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 327
    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->account_settings:I

    .line 330
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-virtual {v3, v1}, Lcom/android/settings/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    const/4 v6, 0x3

    if-eqz v4, :cond_5

    .line 332
    iget v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mType:I

    if-ne v4, v6, :cond_4

    .line 333
    sget v4, Lcom/android/settings/R$string;->category_work:I

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(I)V

    .line 334
    invoke-direct {p0, v0, p1}, Lcom/android/settings/accounts/AccountPreferenceController;->getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v4

    .line 335
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->accessibility_category_work:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    .line 337
    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-virtual {v3, v1}, Lcom/android/settings/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    .line 339
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->newRemoveWorkProfilePreference()Lcom/android/settingslib/RestrictedPreference;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->removeWorkProfilePreference:Lcom/android/settingslib/RestrictedPreference;

    .line 340
    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    .line 341
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const-string v6, "no_remove_managed_profile"

    .line 340
    invoke-virtual {v4, v1, v6, v5}, Lcom/android/settings/accounts/AccountRestrictionHelper;->enforceRestrictionOnPreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V

    .line 342
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->newManagedProfileSettings()Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->managedProfilePreference:Landroidx/preference/Preference;

    goto :goto_0

    .line 344
    :cond_5
    iget v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mType:I

    if-ne v1, v6, :cond_6

    .line 345
    sget v1, Lcom/android/settings/R$string;->category_personal:I

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 346
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->accessibility_category_personal:I

    .line 347
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-virtual {v3, v1}, Lcom/android/settings/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    .line 350
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 352
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 354
    :cond_7
    iput-object v3, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 355
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 356
    new-instance v1, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 357
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v1, v0, v3, p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v1, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 358
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->newAddAccountPreference()Lcom/android/settingslib/RestrictedPreference;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->addAccountPreference:Lcom/android/settingslib/RestrictedPreference;

    .line 359
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    const-string v4, "no_modify_accounts"

    invoke-virtual {v1, v0, v4, v3}, Lcom/android/settings/accounts/AccountRestrictionHelper;->enforceRestrictionOnPreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V

    .line 362
    :cond_8
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private updateUi()V
    .locals 6

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AccountPrefController"

    const-string v0, "We should not be showing settings for a managed profile"

    .line 269
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 274
    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    iput-boolean v3, v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->pendingRemoval:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isRestrictedProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 279
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateProfileUi(Landroid/content/pm/UserInfo;)V

    goto :goto_3

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 282
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_5

    .line 284
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mType:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 286
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v5}, Lcom/android/settings/accounts/AccountPreferenceController;->updateProfileUi(Landroid/content/pm/UserInfo;)V

    goto :goto_2

    .line 287
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_4

    iget v5, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mType:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_4

    .line 289
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v5}, Lcom/android/settings/accounts/AccountPreferenceController;->updateProfileUi(Landroid/content/pm/UserInfo;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 293
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->cleanUpPreferences()V

    .line 298
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_4
    if-ge v1, v0, :cond_6

    .line 300
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    invoke-direct {p0, v2}, Lcom/android/settings/accounts/AccountPreferenceController;->updateAccountTypes(Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method


# virtual methods
.method cleanUpPreferences()V
    .locals 4

    .line 409
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 415
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    .line 416
    iget-boolean v3, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->pendingRemoval:Z

    if-eqz v3, :cond_1

    .line 417
    iget-object v2, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 418
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 172
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 173
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateUi()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateAccountTypes(Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;)V

    goto :goto_0

    .line 223
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing Settings screen for: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountPrefController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 213
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->stopListeningToAccountUpdates()V

    .line 214
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 8

    .line 229
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-interface {v0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v0

    .line 231
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 233
    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    .line 234
    iget-object v5, v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->addAccountPreference:Lcom/android/settingslib/RestrictedPreference;

    const-string v6, "android.intent.extra.USER"

    const/4 v7, 0x1

    if-ne p1, v5, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {v1, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    .line 236
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    iget-object v0, v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 238
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    const-string v1, "authorities"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v7

    .line 242
    :cond_0
    iget-object v5, v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->removeWorkProfilePreference:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v5, :cond_1

    .line 243
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {v1, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    .line 244
    iget-object p1, v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 245
    invoke-static {p1}, Lcom/android/settings/accounts/RemoveUserFragment;->newInstance(I)Lcom/android/settings/accounts/RemoveUserFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "removeUser"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v7

    .line 249
    :cond_1
    iget-object v5, v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->managedProfilePreference:Landroidx/preference/Preference;

    if-ne p1, v5, :cond_2

    .line 250
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {v1, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    .line 251
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 252
    iget-object v1, v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 253
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 254
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class v0, Lcom/android/settings/accounts/ManagedProfileSettings;

    .line 255
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->managed_profile_settings_title:I

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return v2
.end method

.method public onResume()V
    .locals 2

    .line 206
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateUi()V

    .line 207
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 208
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->listenToAccountUpdates()V

    return-void
.end method

.method public updateDynamicRawDataToIndex(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;)V"
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 182
    sget v1, Lcom/android/settings/R$string;->account_settings_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 185
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 186
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    .line 188
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const-string v5, "no_remove_managed_profile"

    .line 187
    invoke-virtual {v3, v5, v4}, Lcom/android/settings/accounts/AccountRestrictionHelper;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 189
    new-instance v3, Lcom/android/settingslib/search/SearchIndexableRaw;

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v4, "remove_profile"

    .line 190
    iput-object v4, v3, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 191
    sget v4, Lcom/android/settings/R$string;->remove_managed_profile_label:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 192
    iput-object v1, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 193
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_2
    new-instance v3, Lcom/android/settingslib/search/SearchIndexableRaw;

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v4, "work_profile_setting"

    .line 196
    iput-object v4, v3, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 197
    sget v4, Lcom/android/settings/R$string;->managed_profile_settings_title:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 198
    iput-object v1, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 199
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method
