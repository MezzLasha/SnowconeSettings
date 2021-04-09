.class public Lcom/android/settings/network/apn/ApnSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final CARRIERS_PROJECTION:[Ljava/lang/String;

.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;


# instance fields
.field private mAllowAddingApns:Z

.field private mHideImsApn:Z

.field private mHidePresetApnDetails:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:Ljava/lang/String;

.field private mPhoneId:I

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnMode:Z

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelectedKey:Ljava/lang/String;

.field private mSubId:I

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUnavailable:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "_id"

    const-string v1, "name"

    const-string v2, "apn"

    const-string v3, "type"

    const-string v4, "mvno_type"

    const-string v5, "mvno_match_data"

    const-string v6, "edited"

    .line 80
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnSettings;->CARRIERS_PROJECTION:[Ljava/lang/String;

    const-string v0, "content://telephony/carriers/restore"

    .line 106
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn"

    .line 107
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_mobile_networks"

    .line 133
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/apn/ApnSettings$1;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 150
    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/apn/ApnSettings$2;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/apn/ApnSettings;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/network/apn/ApnSettings;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/network/apn/ApnSettings;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/network/apn/ApnSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100()Landroid/net/Uri;
    .locals 1

    .line 65
    sget-object v0, Lcom/android/settings/network/apn/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/network/apn/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnSettings;->getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/network/apn/ApnSettings;I)V
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/network/apn/ApnSettings;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneId:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/network/apn/ApnSettings;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/settings/network/apn/ApnSettings;I)I
    .locals 0

    .line 65
    iput p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/settings/network/apn/ApnSettings;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/network/apn/ApnSettings;I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnSettings;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/network/apn/ApnSettings;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnSettings;->restartPhoneStateListener(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/network/apn/ApnSettings;I)V
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    return-void
.end method

.method private addNewApn()V
    .locals 3

    .line 401
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 402
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const-string v2, "sub_id"

    .line 404
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 405
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 406
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoType:Ljava/lang/String;

    const-string v2, "mvno_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    const-string v2, "mvno_match_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private fillList()V
    .locals 14

    .line 300
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 302
    :goto_0
    sget-object v1, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    .line 303
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL)) AND user_visible!=0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    iget-boolean v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mHideImsApn:Z

    if-eqz v2, :cond_1

    const-string v2, " AND NOT (type=\'ims\')"

    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/settings/network/apn/ApnSettings;->CARRIERS_PROJECTION:[Ljava/lang/String;

    .line 313
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "name ASC"

    .line 312
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v2, "apn_list"

    .line 317
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceGroup;

    .line 318
    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 320
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 321
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 323
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/network/apn/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 324
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 325
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v5, 0x1

    .line 326
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    .line 327
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 328
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    .line 329
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    .line 330
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x4

    .line 331
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoType:Ljava/lang/String;

    const/4 v12, 0x5

    .line 332
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    .line 334
    new-instance v12, Lcom/android/settings/network/apn/ApnPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/settings/network/apn/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 336
    invoke-virtual {v12, v9}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v12, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {v12, v8}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 339
    invoke-virtual {v12, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 340
    invoke-virtual {v12, v0}, Lcom/android/settings/network/apn/ApnPreference;->setSubId(I)V

    .line 341
    iget-boolean v6, p0, Lcom/android/settings/network/apn/ApnSettings;->mHidePresetApnDetails:Z

    if-eqz v6, :cond_2

    if-nez v11, :cond_2

    .line 342
    invoke-virtual {v12}, Lcom/android/settings/network/apn/ApnPreference;->setHideDetails()V

    goto :goto_2

    .line 344
    :cond_2
    invoke-virtual {v12, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    if-eqz v10, :cond_4

    const-string v6, "mms"

    .line 347
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    move v5, v8

    .line 348
    :cond_4
    :goto_3
    invoke-virtual {v12, v5}, Lcom/android/settings/network/apn/ApnPreference;->setSelectable(Z)V

    if-eqz v5, :cond_6

    .line 350
    iget-object v5, p0, Lcom/android/settings/network/apn/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v5, :cond_5

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 351
    invoke-virtual {v12}, Lcom/android/settings/network/apn/ApnPreference;->setChecked()V

    .line 353
    :cond_5
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 355
    :cond_6
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 359
    :cond_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 361
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    .line 362
    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_5

    .line 364
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    .line 365
    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_6

    :cond_9
    return-void
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 6

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/apn/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnSettings;->getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string p0, "_id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 439
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 440
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 441
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 443
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method private getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 296
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 470
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 472
    :goto_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private restartPhoneStateListener(I)V
    .locals 3

    .line 174
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 179
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 185
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 187
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v0, 0x1000

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private restoreDefaultApn()Z
    .locals 4

    const/16 v0, 0x3e9

    .line 448
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    const/4 v0, 0x1

    .line 449
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 451
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

    if-nez v1, :cond_0

    .line 452
    new-instance v1, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/network/apn/ApnSettings;Lcom/android/settings/network/apn/ApnSettings$1;)V

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_2

    .line 456
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Restore default APN Handler: Process Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 458
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 459
    new-instance v1, Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 460
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/network/apn/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;

    .line 463
    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;

    .line 464
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v0
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 3

    .line 426
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 429
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 430
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSelectedKey:Ljava/lang/String;

    const-string v2, "apn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    sget-object v1, Lcom/android/settings/network/apn/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnSettings;->getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 0

    const/16 p0, 0x3e9

    if-ne p1, p0, :cond_0

    const/16 p0, 0x243

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUserManager:Landroid/os/UserManager;

    .line 288
    invoke-virtual {p0, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 290
    sget-object p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 231
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->apn_settings_not_available:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    xor-int/lit8 p1, p1, 0x1

    .line 235
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 236
    iget-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    if-eqz p1, :cond_0

    .line 237
    sget p1, Lcom/android/settings/R$xml;->placeholder_prefs:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void

    .line 241
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->apn_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 198
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sub_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    .line 202
    invoke-static {p1, v0}, Lcom/android/settings/network/SubscriptionUtil;->getPhoneId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneId:I

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x1

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->setIfOnlyAvailableForAdmins(Z)V

    .line 208
    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnSettings;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 209
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v0, "carrier_config"

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 213
    iget v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "hide_ims_apn_bool"

    .line 214
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mHideImsApn:Z

    const-string v1, "allow_adding_apns_bool"

    .line 215
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mAllowAddingApns:Z

    if-eqz v1, :cond_0

    const-string v1, "read_only_apn_types_string_array"

    .line 217
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v1}, Lcom/android/settings/network/apn/ApnEditor;->hasAllApns([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ApnSettings"

    const-string v2, "not allowing adding APN because all APN types are read only"

    .line 221
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 222
    iput-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mAllowAddingApns:Z

    :cond_0
    const-string v1, "hide_preset_apn_details_bool"

    .line 225
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mHidePresetApnDetails:Z

    .line 226
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 527
    new-instance p1, Lcom/android/settings/network/apn/ApnSettings$3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/network/apn/ApnSettings$3;-><init>(Lcom/android/settings/network/apn/ApnSettings;Landroid/content/Context;)V

    .line 532
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->restore_default_apn:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 533
    invoke-virtual {p1, p0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 372
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    if-nez v0, :cond_1

    .line 373
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mAllowAddingApns:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->menu_new:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 374
    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v3, Lcom/android/settings/R$drawable;->ic_add_24dp:I

    .line 376
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 377
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    const/4 v0, 0x2

    .line 380
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->menu_restore:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    .line 381
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 384
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 277
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 279
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_0

    .line 280
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 389
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 397
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 394
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->restoreDefaultApn()Z

    return v1

    .line 391
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->addNewApn()V

    return v1
.end method

.method public onPause()V
    .locals 2

    .line 263
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 265
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    .line 269
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange(): Preference - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newValue - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newValue type - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApnSettings"

    .line 415
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 419
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 246
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 248
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnSettings;->restartPhoneStateListener(I)V

    .line 256
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_1

    .line 257
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->fillList()V

    :cond_1
    return-void
.end method
