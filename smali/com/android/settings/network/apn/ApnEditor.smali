.class public Lcom/android/settings/network/apn/ApnEditor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApnEditor.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/apn/ApnEditor$ApnData;,
        Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;
    }
.end annotation


# static fields
.field static final APN_INDEX:I = 0x2

.field public static final APN_TYPES:[Ljava/lang/String;

.field static final CARRIER_ENABLED_INDEX:I = 0x11

.field static final MCC_INDEX:I = 0x9

.field static final MNC_INDEX:I = 0xa

.field static final NAME_INDEX:I = 0x1

.field static final PROTOCOL_INDEX:I = 0x10

.field static final ROAMING_PROTOCOL_INDEX:I = 0x14

.field private static final TAG:Ljava/lang/String;

.field static final TYPE_INDEX:I = 0xf

.field static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field mApn:Landroidx/preference/EditTextPreference;

.field mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

.field mApnType:Landroidx/preference/EditTextPreference;

.field mAuthType:Landroidx/preference/ListPreference;

.field private mBearerInitialVal:I

.field mBearerMulti:Landroidx/preference/MultiSelectListPreference;

.field mCarrierEnabled:Landroidx/preference/SwitchPreference;

.field private mCarrierUri:Landroid/net/Uri;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field mDefaultApnProtocol:Ljava/lang/String;

.field mDefaultApnRoamingProtocol:Ljava/lang/String;

.field mDefaultApnTypes:[Ljava/lang/String;

.field mMcc:Landroidx/preference/EditTextPreference;

.field mMmsPort:Landroidx/preference/EditTextPreference;

.field mMmsProxy:Landroidx/preference/EditTextPreference;

.field mMmsc:Landroidx/preference/EditTextPreference;

.field mMnc:Landroidx/preference/EditTextPreference;

.field mMvnoMatchData:Landroidx/preference/EditTextPreference;

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field mMvnoType:Landroidx/preference/ListPreference;

.field private mMvnoTypeStr:Ljava/lang/String;

.field mName:Landroidx/preference/EditTextPreference;

.field private mNewApn:Z

.field mPassword:Landroidx/preference/EditTextPreference;

.field mPort:Landroidx/preference/EditTextPreference;

.field mProtocol:Landroidx/preference/ListPreference;

.field mProxy:Landroidx/preference/EditTextPreference;

.field mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

.field private mReadOnlyApn:Z

.field private mReadOnlyApnFields:[Ljava/lang/String;

.field mReadOnlyApnTypes:[Ljava/lang/String;

.field mRoamingProtocol:Landroidx/preference/ListPreference;

.field mServer:Landroidx/preference/EditTextPreference;

.field private mSubId:I

.field mUser:Landroidx/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 69
    const-class v0, Lcom/android/settings/network/apn/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "default"

    const-string v2, "mms"

    const-string v3, "supl"

    const-string v4, "dun"

    const-string v5, "hipri"

    const-string v6, "fota"

    const-string v7, "ims"

    const-string v8, "cbs"

    const-string v9, "ia"

    const-string v10, "emergency"

    const-string v11, "mcx"

    const-string v12, "xcap"

    .line 188
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnEditor;->APN_TYPES:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "name"

    const-string v3, "apn"

    const-string v4, "proxy"

    const-string v5, "port"

    const-string v6, "user"

    const-string v7, "server"

    const-string v8, "password"

    const-string v9, "mmsc"

    const-string v10, "mcc"

    const-string v11, "mnc"

    const-string v12, "numeric"

    const-string v13, "mmsproxy"

    const-string v14, "mmsport"

    const-string v15, "authtype"

    const-string v16, "type"

    const-string v17, "protocol"

    const-string v18, "carrier_enabled"

    const-string v19, "bearer"

    const-string v20, "bearer_bitmask"

    const-string v21, "roaming_protocol"

    const-string v22, "mvno_type"

    const-string v23, "mvno_match_data"

    const-string v24, "edited"

    const-string v25, "user_editable"

    .line 205
    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 138
    iput v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    return-void
.end method

.method private apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 406
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 410
    :cond_0
    invoke-static {p1}, Lcom/android/settings/network/apn/ApnEditor;->hasAllApns([Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 414
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, ","

    .line 415
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 417
    array-length p2, p1

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    aget-object v3, p1, v2

    .line 418
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 419
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "apnTypesMatch: true because match found for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    :cond_3
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string p1, "apnTypesMatch: false"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 668
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->bearer_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 671
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 672
    iget-object v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-eqz v2, :cond_0

    .line 675
    :try_start_0
    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    .line 678
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 684
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 685
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static bitmaskHasTech(II)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    sub-int/2addr p1, v0

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    return v1
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1224
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .line 1192
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1193
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1194
    new-instance v0, Lcom/android/settings/network/apn/ApnEditor$ApnData;

    sget-object v1, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    :cond_0
    return-void
.end method

.method private disableAllFields()V
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 499
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 500
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 501
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 502
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 503
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 505
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 506
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 507
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 508
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 509
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 510
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 511
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 512
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 513
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 514
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 515
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 516
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 517
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private disableFields([Ljava/lang/String;)V
    .locals 4

    .line 486
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 487
    invoke-direct {p0, v3}, Lcom/android/settings/network/apn/ApnEditor;->getPreferenceFromFieldName(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 489
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static formatInteger(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 356
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 357
    invoke-static {p0}, Lcom/android/settings/network/apn/ApnEditor;->getCorrectDigitsFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private static getBitmaskForTech(I)I
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    sub-int/2addr p0, v0

    shl-int p0, v0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getCarrierCustomizedConfig()V
    .locals 4

    const/4 v0, 0x0

    .line 1290
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApn:Z

    const/4 v0, 0x0

    .line 1291
    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 1292
    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    const-string v0, "carrier_config"

    .line 1295
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_3

    .line 1297
    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "read_only_apn_types_string_array"

    .line 1299
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 1301
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1302
    sget-object v1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: read only APN type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 1303
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1302
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "read_only_apn_fields_string_array"

    .line 1305
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    const-string v1, "apn_settings_default_apn_types_string_array"

    .line 1308
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnTypes:[Ljava/lang/String;

    .line 1311
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1312
    sget-object v1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: default apn types: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnTypes:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "apn.settings_default_protocol_string"

    .line 1315
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnProtocol:Ljava/lang/String;

    .line 1317
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1318
    sget-object v1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: default apn protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "apn.settings_default_roaming_protocol_string"

    .line 1321
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnRoamingProtocol:Ljava/lang/String;

    .line 1323
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1324
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: default apn roaming protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnRoamingProtocol:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method static getCorrectDigitsFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 368
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "%02d"

    return-object p0

    :cond_0
    const-string p0, "%03d"

    return-object p0
.end method

.method private getEditableApnType([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1244
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 1246
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, p1, v4

    .line 1248
    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "ia"

    .line 1249
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "emergency"

    .line 1250
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "mcx"

    .line 1251
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    const-string v6, ","

    .line 1255
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1260
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPreferenceFromFieldName(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 2

    .line 434
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "authtype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "mmsport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "proxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "port"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "mmsc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "mnc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "mcc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "apn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "mvno_match_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "server"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_e
    const-string v0, "protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_f
    const-string v0, "roaming_protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_10
    const-string v0, "bearer_bitmask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_11
    const-string v0, "bearer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_12
    const-string v0, "carrier_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_13
    const-string v0, "mmsproxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_14
    const-string v0, "mvno_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 462
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    return-object p0

    .line 448
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    return-object p0

    .line 452
    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    return-object p0

    .line 440
    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    return-object p0

    .line 444
    :pswitch_4
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    return-object p0

    .line 460
    :pswitch_5
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    return-object p0

    .line 442
    :pswitch_6
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    return-object p0

    .line 436
    :pswitch_7
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    return-object p0

    .line 454
    :pswitch_8
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    return-object p0

    .line 458
    :pswitch_9
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    return-object p0

    .line 456
    :pswitch_a
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    return-object p0

    .line 438
    :pswitch_b
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    return-object p0

    .line 475
    :pswitch_c
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    return-object p0

    .line 446
    :pswitch_d
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    return-object p0

    .line 464
    :pswitch_e
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    return-object p0

    .line 466
    :pswitch_f
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    return-object p0

    .line 471
    :pswitch_10
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    return-object p0

    .line 468
    :pswitch_11
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    return-object p0

    .line 450
    :pswitch_12
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    return-object p0

    .line 473
    :pswitch_13
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f4962d1 -> :sswitch_14
        -0x747b9085 -> :sswitch_13
        -0x61c86706 -> :sswitch_12
        -0x5307fc9f -> :sswitch_11
        -0x49581165 -> :sswitch_10
        -0x3df71002 -> :sswitch_f
        -0x3af57168 -> :sswitch_e
        -0x35fdd0bd -> :sswitch_d
        -0x1f00dbe7 -> :sswitch_c
        0x17a1f -> :sswitch_b
        0x1a58d -> :sswitch_a
        0x1a6e2 -> :sswitch_9
        0x3333f0 -> :sswitch_8
        0x337a8b -> :sswitch_7
        0x349881 -> :sswitch_6
        0x368f3a -> :sswitch_5
        0x36ebcb -> :sswitch_4
        0x65fca6e -> :sswitch_3
        0x46909dd4 -> :sswitch_2
        0x4889ba9b -> :sswitch_1
        0x556d58e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static hasAllApns([Ljava/lang/String;)Z
    .locals 6

    .line 379
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 383
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "*"

    .line 384
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 385
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v0, "hasAllApns: true because apnList.contains(APN_TYPE_ALL)"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 388
    :cond_1
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->APN_TYPES:[Ljava/lang/String;

    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 389
    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 394
    :cond_3
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v0, "hasAllApns: true"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private initApnEditorUi()V
    .locals 2

    .line 1264
    sget v0, Lcom/android/settings/R$xml;->apn_editor:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 1266
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->apn_not_set:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    const-string v0, "apn_name"

    .line 1267
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_apn"

    .line 1268
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_http_proxy"

    .line 1269
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_http_port"

    .line 1270
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_user"

    .line 1271
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_server"

    .line 1272
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_password"

    .line 1273
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_mms_proxy"

    .line 1274
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_mms_port"

    .line 1275
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_mmsc"

    .line 1276
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_mcc"

    .line 1277
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_mnc"

    .line 1278
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_type"

    .line 1279
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    const-string v0, "auth_type"

    .line 1280
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    const-string v0, "apn_protocol"

    .line 1281
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    const-string v0, "apn_roaming_protocol"

    .line 1282
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    const-string v0, "carrier_enabled"

    .line 1283
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    const-string v0, "bearer_multi"

    .line 1284
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/MultiSelectListPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    const-string v0, "mvno_type"

    .line 1285
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    const-string v0, "mvno_match_data"

    .line 1286
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    return-void
.end method

.method private synthetic lambda$updateApnDataToDatabase$0(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    .line 1126
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1130
    sget-object p1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t add a new apn to database "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1134
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 692
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 693
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return-object v2

    .line 698
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$array;->mvno_type_entries:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 699
    iget-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApn:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 701
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v7, "mvno_match_data"

    .line 702
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    .line 703
    :goto_1
    iget-object v7, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p1, :cond_b

    .line 704
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 705
    aget-object p1, v3, v0

    const-string v1, "SPN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 707
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 708
    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    .line 709
    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object p1, v1

    .line 713
    :cond_4
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 714
    :cond_5
    aget-object p1, v3, v0

    const-string v1, "IMSI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, ""

    if-eqz p1, :cond_8

    .line 715
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    iget v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    .line 716
    invoke-virtual {p1, v4}, Lcom/android/settings/network/ProxySubscriptionManager;->getAccessibleSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-nez p1, :cond_6

    move-object v4, v1

    goto :goto_2

    .line 718
    :cond_6
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-nez p1, :cond_7

    goto :goto_3

    .line 720
    :cond_7
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 721
    :goto_3
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_4

    .line 722
    :cond_8
    aget-object p1, v3, v0

    const-string v4, "GID"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 724
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 725
    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    .line 726
    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object p1, v1

    .line 730
    :cond_9
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_4

    .line 733
    :cond_a
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 738
    :cond_b
    :goto_4
    :try_start_0
    aget-object p0, v3, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v2
.end method

.method private protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;
    .locals 1

    .line 652
    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IPV4"

    .line 653
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "IP"

    .line 654
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    return-object v0

    .line 658
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$array;->apn_protocol_entries:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 660
    :try_start_0
    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private setCarrierCustomizedConfigToUi()V
    .locals 3

    .line 1332
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnTypes:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnTypes:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->getEditableApnType([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1334
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1335
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1338
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnProtocol:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object v0

    .line 1339
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1340
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1341
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1344
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnRoamingProtocol:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object v0

    .line 1345
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1346
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnRoamingProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1347
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private setLifecycleForAllControllers()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    if-nez v0, :cond_0

    .line 341
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/ProxySubscriptionManager;->setLifecycle(Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    .line 1199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 1202
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    new-array p1, p0, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    const/16 v1, 0x2a

    .line 1204
    aput-char v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1206
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 1200
    :cond_2
    :goto_1
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object p0
.end method

.method private updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    .line 1125
    new-instance v0, Lcom/android/settings/network/apn/-$$Lambda$ApnEditor$p-O_CsviJ5ZAZ_vWcrV2ju0_TPM;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/network/apn/-$$Lambda$ApnEditor$p-O_CsviJ5ZAZ_vWcrV2ju0_TPM;-><init>(Lcom/android/settings/network/apn/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method fillUI(Z)V
    .locals 7

    const/4 v0, 0x0

    .line 569
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p1, :cond_9

    .line 529
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v3, v2}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 530
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 531
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 532
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 533
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 534
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 535
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 536
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 537
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 538
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 539
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 540
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 541
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 542
    iget-boolean p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 543
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    iget v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    .line 544
    invoke-virtual {p1, v4}, Lcom/android/settings/network/ProxySubscriptionManager;->getAccessibleSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-nez p1, :cond_0

    move-object v4, v3

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-nez p1, :cond_1

    move-object p1, v3

    goto :goto_1

    .line 549
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object p1

    .line 551
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 553
    iget-object v5, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v5, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 554
    iget-object v5, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v5, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 555
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 556
    iput-object v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 559
    :cond_2
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0xe

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v5, :cond_3

    .line 561
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v3, p1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2

    .line 563
    :cond_3
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 566
    :goto_2
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 567
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 568
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v0

    :goto_3
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 569
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v3, 0x12

    invoke-virtual {p1, v3, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    .line 571
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 572
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0x13

    invoke-virtual {v3, v4, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, ""

    if-nez v1, :cond_5

    .line 574
    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    if-nez v1, :cond_7

    const-string v1, "0"

    .line 575
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    move v4, v2

    :goto_4
    if-eqz v1, :cond_7

    and-int/lit8 v5, v1, 0x1

    if-ne v5, v2, :cond_6

    .line 581
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 588
    :cond_7
    :goto_5
    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_8
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 594
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v3, 0x15

    invoke-virtual {v1, v3}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 595
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 596
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v3, 0x16

    invoke-virtual {v1, v3}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 597
    iget-boolean p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 598
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 599
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 603
    :cond_9
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 604
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 605
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 606
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 607
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 608
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 609
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 610
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 611
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 612
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 613
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/apn/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 614
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/apn/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 615
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 617
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 619
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 620
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 622
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$array;->apn_auth_entries:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 623
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    aget-object p1, v1, p1

    invoke-virtual {v3, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 625
    :cond_a
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    sget-object v1, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 628
    :goto_6
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 629
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    .line 630
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 629
    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 631
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    .line 632
    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 631
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 633
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    .line 634
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 635
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 637
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$bool;->config_allow_edit_carrier_enabled:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 640
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_7

    .line 642
    :cond_b
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_7
    return-void
.end method

.method getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/apn/ApnEditor$ApnData;
    .locals 6

    .line 1384
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1391
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1392
    new-instance v0, Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1384
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_1

    .line 1394
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez v0, :cond_2

    .line 1397
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get apnData from Uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xd

    return p0
.end method

.method getUserEnteredApnType()Ljava/lang/String;
    .locals 3

    .line 1231
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1232
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1233
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*"

    .line 1234
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1235
    :cond_1
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->APN_TYPES:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->getEditableApnType([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1237
    :cond_2
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserEnteredApnType: changed apn type to editable apn types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public synthetic lambda$updateApnDataToDatabase$0$ApnEditor(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/apn/ApnEditor;->lambda$updateApnDataToDatabase$0(Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 268
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 270
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->setLifecycleForAllControllers()V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_0
    const/4 v1, -0x1

    const-string v2, "sub_id"

    .line 278
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    .line 281
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->initApnEditorUi()V

    .line 282
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->getCarrierCustomizedConfig()V

    const/4 v1, 0x0

    const-string v2, "android.intent.action.EDIT"

    .line 285
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 286
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 287
    sget-object p1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 288
    sget-object p1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Edit request not for carrier table. Uri: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_1
    const-string v2, "android.intent.action.INSERT"

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 293
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    .line 294
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 295
    sget-object p1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insert request not for carrier table. Uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 299
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    const-string v0, "mvno_type"

    .line 300
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    const-string v0, "mvno_match_data"

    .line 301
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    :cond_3
    if-eqz v1, :cond_4

    .line 311
    invoke-virtual {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/apn/ApnEditor$ApnData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    goto :goto_0

    .line 313
    :cond_4
    new-instance p1, Lcom/android/settings/network/apn/ApnEditor$ApnData;

    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {p1, v0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    .line 316
    :goto_0
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v0, 0x17

    .line 317
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 316
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v3, :cond_5

    move p1, v3

    goto :goto_1

    :cond_5
    move p1, v0

    .line 319
    :goto_1
    sget-object v1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: EDITED "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_7

    .line 321
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v2, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0xf

    .line 322
    invoke-virtual {v2, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/settings/network/apn/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const-string p1, "onCreate: apnTypesMatch; read-only APN"

    .line 323
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iput-boolean v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApn:Z

    .line 325
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    goto :goto_2

    .line 326
    :cond_7
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 327
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnEditor;->disableFields([Ljava/lang/String;)V

    .line 330
    :cond_8
    :goto_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-ge v0, p1, :cond_9

    .line 331
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    return-void

    .line 303
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 807
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 809
    iget-boolean p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApn:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 810
    sget v1, Lcom/android/settings/R$string;->menu_delete:I

    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    sget v1, Lcom/android/settings/R$drawable;->ic_delete:I

    .line 811
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 813
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApn:Z

    if-nez p0, :cond_1

    const/4 p0, 0x2

    .line 814
    sget p2, Lcom/android/settings/R$string;->menu_save:I

    invoke-interface {p1, v0, p0, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    const p2, 0x108004e

    .line 815
    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    const/4 p0, 0x3

    .line 817
    sget p2, Lcom/android/settings/R$string;->menu_cancel:I

    invoke-interface {p1, v0, p0, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    const p1, 0x1080038

    .line 818
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 859
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    return p3

    .line 862
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->validateAndSaveApnData()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 863
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 823
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 837
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return v1

    .line 829
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->validateAndSaveApnData()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 830
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    return v1

    .line 825
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->deleteApn()V

    .line 826
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 748
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth_type"

    .line 749
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 751
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 752
    iget-object p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 754
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$array;->apn_auth_entries:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 755
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    return v2

    :cond_0
    const-string v1, "apn_type"

    .line 759
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 760
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnTypes:[Ljava/lang/String;

    .line 761
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 762
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnTypes:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnEditor;->getEditableApnType([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 763
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 764
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_2
    const-string v1, "apn_protocol"

    .line 766
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 767
    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return v2

    .line 771
    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 772
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string v1, "apn_roaming_protocol"

    .line 773
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 774
    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    return v2

    .line 778
    :cond_5
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 779
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string v1, "bearer_multi"

    .line 780
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 781
    check-cast p2, Ljava/util/Set;

    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return v2

    .line 785
    :cond_7
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 786
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    const-string v1, "mvno_type"

    .line 787
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 788
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    return v2

    .line 792
    :cond_9
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 793
    iget-object p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 794
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    const-string v1, "apn_password"

    .line 795
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 796
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    if-eqz p2, :cond_b

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_b
    const-string p2, ""

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_c
    const-string v1, "carrier_enabled"

    .line 797
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2

    :cond_d
    if-eqz p2, :cond_e

    .line 800
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_e
    const/4 p2, 0x0

    :goto_1
    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_f
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 843
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 844
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 p0, 0x1

    .line 845
    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 846
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    .line 348
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 349
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/network/apn/ApnEditor;->fillUI(Z)V

    .line 350
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->setCarrierCustomizedConfigToUi()V

    return-void
.end method

.method setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z
    .locals 0

    .line 909
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {p0, p5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p4, :cond_1

    .line 917
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p3, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    .line 919
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return p0
.end method

.method setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 0

    .line 883
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {p0, p5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p4, :cond_2

    .line 891
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 892
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eqz p3, :cond_3

    .line 895
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return p0
.end method

.method showError()V
    .locals 0

    .line 1188
    invoke-static {p0}, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/network/apn/ApnEditor;)V

    return-void
.end method

.method validateAndSaveApnData()Z
    .locals 13

    .line 935
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApn:Z

    const/4 v6, 0x1

    .line 1057
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v0, :cond_0

    return v6

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 940
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 941
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 942
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 944
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->validateApnData()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    .line 946
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->showError()V

    return v11

    .line 950
    :cond_1
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 953
    iget-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    const/4 v5, 0x1

    const-string v2, "name"

    move-object v0, p0

    move-object v1, v12

    .line 954
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const/4 v5, 0x2

    const-string v2, "apn"

    move-object v3, v8

    .line 960
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 966
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    .line 968
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    const-string v2, "proxy"

    move-object v0, p0

    .line 966
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 972
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    .line 974
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const-string v2, "port"

    move-object v0, p0

    .line 972
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 978
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    .line 980
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc

    const-string v2, "mmsproxy"

    move-object v0, p0

    .line 978
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 984
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    .line 986
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xd

    const-string v2, "mmsport"

    move-object v0, p0

    .line 984
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 990
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    .line 992
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    const-string v2, "user"

    move-object v0, p0

    .line 990
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 996
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    .line 998
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    const-string v2, "server"

    move-object v0, p0

    .line 996
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1002
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    .line 1004
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    const-string v2, "password"

    move-object v0, p0

    .line 1002
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1008
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    .line 1010
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8

    const-string v2, "mmsc"

    move-object v0, p0

    .line 1008
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1014
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1018
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0xe

    const-string v2, "authtype"

    move-object v0, p0

    move-object v1, v12

    .line 1016
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    move v4, v0

    .line 1023
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    .line 1025
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    const-string v2, "protocol"

    move-object v0, p0

    move-object v1, v12

    .line 1023
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1029
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    .line 1031
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x14

    const-string v2, "roaming_protocol"

    move-object v0, p0

    .line 1029
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1037
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xf

    const-string v2, "type"

    move-object v0, p0

    .line 1035
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const/16 v5, 0x9

    const-string v2, "mcc"

    move-object v3, v9

    .line 1041
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const/16 v5, 0xa

    const-string v2, "mnc"

    move-object v3, v10

    .line 1047
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "numeric"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1056
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "current"

    .line 1057
    invoke-virtual {v12, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1061
    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v0

    .line 1063
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v11

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1064
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    move v8, v11

    goto :goto_1

    .line 1068
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/network/apn/ApnEditor;->getBitmaskForTech(I)I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_5
    move v8, v1

    :goto_1
    const/16 v5, 0x13

    const-string v2, "bearer_bitmask"

    move-object v0, p0

    move-object v1, v12

    move v3, v8

    .line 1071
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v4

    if-eqz v8, :cond_7

    .line 1078
    iget v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    if-nez v0, :cond_6

    goto :goto_2

    .line 1080
    :cond_6
    invoke-static {v8, v0}, Lcom/android/settings/network/apn/ApnEditor;->bitmaskHasTech(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1081
    iget v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    move v3, v0

    goto :goto_3

    :cond_7
    :goto_2
    move v3, v11

    :goto_3
    const/16 v5, 0x12

    const-string v2, "bearer"

    move-object v0, p0

    move-object v1, v12

    .line 1088
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v4

    .line 1094
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    .line 1096
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x15

    const-string v2, "mvno_type"

    move-object v0, p0

    .line 1094
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1100
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    .line 1102
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x16

    const-string v2, "mvno_match_data"

    move-object v0, p0

    .line 1100
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1108
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    const/16 v5, 0x11

    const-string v2, "carrier_enabled"

    move-object v0, p0

    move-object v1, v12

    .line 1106
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    const-string v1, "edited"

    .line 1112
    invoke-virtual {v12, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v0, :cond_9

    .line 1115
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 1116
    :goto_4
    invoke-direct {p0, v0, v12}, Lcom/android/settings/network/apn/ApnEditor;->updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V

    :cond_9
    return v6
.end method

.method validateApnData()Ljava/lang/String;
    .locals 10

    .line 1149
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1150
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1151
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1152
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v3}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    .line 1155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->error_name_empty:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1156
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->error_apn_empty:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_5

    .line 1158
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    .line 1160
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xfffe

    and-int/2addr v0, v1

    if-eq v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1161
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->error_mnc_not23:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1159
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->error_mcc_not3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_8

    .line 1167
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 1168
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/network/apn/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1170
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v5, v3

    :goto_3
    if-ge v5, v2, :cond_6

    aget-object v6, v1, v5

    .line 1171
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    sget-object v7, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "validateApnData: appending type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1175
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v1, v4, :cond_7

    .line 1176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1178
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->error_adding_apn_type:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0
.end method
