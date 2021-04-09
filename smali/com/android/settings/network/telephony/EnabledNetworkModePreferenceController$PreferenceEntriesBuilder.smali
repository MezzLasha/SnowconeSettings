.class final Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;
.super Ljava/lang/Object;
.source "EnabledNetworkModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreferenceEntriesBuilder"
.end annotation


# instance fields
.field private mAllowed5gNetworkType:Z

.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mContext:Landroid/content/Context;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEntriesValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIs5gEntryDisplayed:Z

.field private mIsGlobalCdma:Z

.field private mSelectedEntry:I

.field private mShow4gForLTE:Z

.field private mSubId:I

.field private mSummary:Ljava/lang/String;

.field private mSupported5gRadioAccessFamily:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;Landroid/content/Context;I)V
    .locals 5

    .line 199
    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    .line 197
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    .line 200
    iput-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    .line 201
    iput p3, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    .line 203
    const-class p1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 204
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    .line 205
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 207
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {p1, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    const-string v0, "nr_enabled_bool"

    .line 209
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p3

    .line 210
    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 211
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypes()J

    move-result-wide v1

    const-wide/32 v3, 0x80000

    .line 210
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->checkSupportedRadioBitmask(JJ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mAllowed5gNetworkType:Z

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 214
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->checkSupportedRadioBitmask(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p2

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSupported5gRadioAccessFamily:Z

    .line 216
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isLteCdmaEvdoGsmWcdmaEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "show_cdma_choices_bool"

    .line 218
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, p2

    goto :goto_2

    :cond_2
    move v0, p3

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-eqz p1, :cond_3

    const-string v0, "show_4g_for_lte_data_icon_bool"

    .line 219
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move p2, p3

    :goto_3
    iput-boolean p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setPreferenceValueAndSummary()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)[Ljava/lang/String;
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getEntries()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)[Ljava/lang/String;
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getEntryValues()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)I
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getSelectedEntryValue()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)Ljava/lang/String;
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private add1xEntry(I)V
    .locals 3

    .line 765
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->network_1x:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private add2gEntry(I)V
    .locals 3

    .line 760
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->network_2G:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private add3gEntry(I)V
    .locals 3

    .line 755
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->network_3G:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private add4gEntry(I)V
    .locals 3

    .line 746
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->network_4G_pure:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->network_4G:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private add5gEntry(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 701
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 702
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v3}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->network_5G:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    .line 703
    invoke-virtual {v3}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->network_recommended:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 702
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIs5gEntryDisplayed:Z

    goto :goto_1

    .line 707
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIs5gEntryDisplayed:Z

    .line 708
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hide 5G option.  supported5GRadioAccessFamily: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSupported5gRadioAccessFamily:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " allowed5GNetworkType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mAllowed5gNetworkType:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " isNRValue: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EnabledNetworkMode"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private addCustomEntry(Ljava/lang/String;I)V
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addGlobalEntry(I)V
    .locals 3

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addGlobalEntry.  supported5GRadioAccessFamily: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSupported5gRadioAccessFamily:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " allowed5GNetworkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mAllowed5gNetworkType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnabledNetworkMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->network_global:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addNrToLteNetworkType(I)I

    move-result p1

    .line 723
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLteEntry(I)V
    .locals 3

    .line 734
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->network_lte_pure:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->network_lte:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addNrToLteNetworkType(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return p1

    :pswitch_1
    const/16 p0, 0x21

    return p0

    :pswitch_2
    const/16 p0, 0x20

    return p0

    :pswitch_3
    const/16 p0, 0x1f

    return p0

    :pswitch_4
    const/16 p0, 0x1e

    return p0

    :pswitch_5
    const/16 p0, 0x1d

    return p0

    :pswitch_6
    const/16 p0, 0x1c

    return p0

    :pswitch_7
    const/16 p0, 0x18

    return p0

    :pswitch_8
    const/16 p0, 0x1b

    return p0

    :pswitch_9
    const/16 p0, 0x1a

    return p0

    :pswitch_a
    const/16 p0, 0x19

    return p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkSupportedRadioBitmask(JJ)Z
    .locals 0

    and-long p0, p3, p1

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private clearAllEntries()V
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 780
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private getEnabledNetworkType()Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;
    .locals 4

    .line 385
    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_UNKNOWN:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    .line 386
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 387
    iget-object v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget v3, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 390
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    .line 391
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lte_service_forced"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 390
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 394
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getPreferredNetworkMode()I

    move-result v2

    .line 395
    iget-object v3, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isLteCdmaEvdoGsmWcdmaEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v1, :cond_0

    .line 397
    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_CDMA_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    goto/16 :goto_0

    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 414
    :pswitch_0
    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_CDMA_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    goto :goto_0

    .line 410
    :pswitch_1
    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_CDMA_ONLY_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    goto :goto_0

    .line 403
    :pswitch_2
    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_CDMA_NO_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    .line 420
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isTdscdmaSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_TDSCDMA_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    goto :goto_0

    :cond_2
    const-string v0, "lte_enabled_bool"

    const-string v1, "prefer_2g_bool"

    if-eqz v2, :cond_3

    .line 423
    invoke-virtual {v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 424
    invoke-virtual {v2, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 425
    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    .line 427
    invoke-virtual {v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 428
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz v0, :cond_4

    .line 429
    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_4G_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    goto :goto_0

    .line 430
    :cond_4
    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 432
    invoke-virtual {v2, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 433
    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    goto :goto_0

    .line 434
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-eqz v0, :cond_7

    .line 435
    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_CDMA_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    goto :goto_0

    .line 437
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_4G_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    goto :goto_0

    .line 438
    :cond_8
    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    .line 443
    :cond_9
    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-static {v1, p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 444
    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->PREFERRED_NETWORK_MODE_CHOICES_WORLD_MODE:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    .line 447
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabledNetworkType: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "EnabledNetworkMode"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getEntries()[Ljava/lang/String;
    .locals 1

    .line 775
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private getEntryValues()[Ljava/lang/String;
    .locals 1

    .line 784
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    .line 785
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/network/telephony/-$$Lambda$33O9mHTV5Z4ngj0XYj9sirczgSA;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$33O9mHTV5Z4ngj0XYj9sirczgSA;

    .line 786
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/network/telephony/-$$Lambda$EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$WVsdgx7RJiXZZFyo6J42xF9Oew0;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$WVsdgx7RJiXZZFyo6J42xF9Oew0;

    .line 787
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private getPreferredNetworkMode()I
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferred_network_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/telephony/TelephonyManager;->DEFAULT_PREFERRED_NETWORK_MODE:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 376
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result v1

    const-string v2, "EnabledNetworkMode"

    if-nez v1, :cond_0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network mode :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reduce NR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->reduceNrToLteNetworkType(I)I

    move-result v0

    .line 380
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreferredNetworkMode: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getSelectedEntryValue()I
    .locals 0

    .line 791
    iget p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSelectedEntry:I

    return p0
.end method

.method private getSummary()Ljava/lang/String;
    .locals 0

    .line 809
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method private is5gEntryDisplayed()Z
    .locals 0

    .line 821
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIs5gEntryDisplayed:Z

    return p0
.end method

.method static synthetic lambda$getEntryValues$0(I)[Ljava/lang/String;
    .locals 0

    .line 787
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$setSelectedEntry$1(ILjava/lang/Integer;)Z
    .locals 0

    .line 796
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reduceNrToLteNetworkType(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    return p1

    :pswitch_0
    const/16 p0, 0x16

    return p0

    :pswitch_1
    const/16 p0, 0x14

    return p0

    :pswitch_2
    const/16 p0, 0x13

    return p0

    :pswitch_3
    const/16 p0, 0x11

    return p0

    :pswitch_4
    const/16 p0, 0xf

    return p0

    :pswitch_5
    const/16 p0, 0xc

    return p0

    :pswitch_6
    const/16 p0, 0xa

    return p0

    :pswitch_7
    const/16 p0, 0x9

    return p0

    :pswitch_8
    const/16 p0, 0x8

    return p0

    :pswitch_9
    const/16 p0, 0xb

    return p0

    :pswitch_data_0
    .packed-switch 0x18
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

.method private setPreferenceValueAndSummary()V
    .locals 1

    .line 689
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getPreferredNetworkMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setPreferenceValueAndSummary(I)V

    return-void
.end method

.method private setSelectedEntry(I)V
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/telephony/-$$Lambda$EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$_UW7ebJ1XC8PnBp6-p-0Eoh33Pw;

    invoke-direct {v1, p1}, Lcom/android/settings/network/telephony/-$$Lambda$EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$_UW7ebJ1XC8PnBp6-p-0Eoh33Pw;-><init>(I)V

    .line 796
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    iput p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSelectedEntry:I

    goto :goto_0

    .line 800
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 802
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSelectedEntry:I

    goto :goto_0

    :cond_1
    const-string p0, "EnabledNetworkMode"

    const-string p1, "entriesValue is empty"

    .line 804
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setSummary(I)V
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(Ljava/lang/String;)V

    return-void
.end method

.method private setSummary(Ljava/lang/String;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSummary:Ljava/lang/String;

    return-void
.end method

.method private showNrList()Z
    .locals 1

    .line 727
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSupported5gRadioAccessFamily:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mAllowed5gNetworkType:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method setPreferenceEntries()V
    .locals 7

    .line 224
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->clearAllEntries()V

    .line 227
    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;->$SwitchMap$com$android$settings$network$telephony$EnabledNetworkModePreferenceController$EnabledNetworks:[I

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getEnabledNetworkType()Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 368
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not supported enabled network types."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 349
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/android/settings/R$array;->preferred_network_mode_values_world_mode:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v5, Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 352
    array-length v5, v0

    if-lt v5, v1, :cond_0

    .line 356
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addGlobalEntry(I)V

    .line 358
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    .line 359
    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$string;->network_world_mode_cdma_lte:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aget v3, v0, v3

    .line 358
    invoke-direct {p0, v1, v3}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addCustomEntry(Ljava/lang/String;I)V

    .line 362
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    .line 363
    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->network_world_mode_gsm_lte:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aget v0, v0, v2

    .line 362
    invoke-direct {p0, v1, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addCustomEntry(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 353
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "PREFERRED_NETWORK_MODE_CHOICES_WORLD_MODE index error."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 337
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/android/settings/R$array;->enabled_networks_values:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v5, Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 340
    array-length v5, v0

    if-lt v5, v1, :cond_1

    .line 343
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addNrToLteNetworkType(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add5gEntry(I)V

    .line 344
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addLteEntry(I)V

    .line 345
    aget v1, v0, v3

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add3gEntry(I)V

    .line 346
    aget v0, v0, v2

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add2gEntry(I)V

    goto/16 :goto_0

    .line 341
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ENABLED_NETWORKS_CHOICES index error."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 323
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/android/settings/R$array;->enabled_networks_values:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v5, Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 326
    array-length v5, v0

    if-lt v5, v1, :cond_2

    .line 330
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addNrToLteNetworkType(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add5gEntry(I)V

    .line 332
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add4gEntry(I)V

    .line 333
    aget v1, v0, v3

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add3gEntry(I)V

    .line 334
    aget v0, v0, v2

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add2gEntry(I)V

    goto/16 :goto_0

    .line 327
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ENABLED_NETWORKS_4G_CHOICES index error."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 312
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->enabled_networks_except_lte_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 315
    array-length v1, v0

    if-lt v1, v2, :cond_3

    .line 319
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add3gEntry(I)V

    .line 320
    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add2gEntry(I)V

    goto/16 :goto_0

    .line 316
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ENABLED_NETWORKS_EXCEPT_LTE_CHOICES index error."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 300
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->enabled_networks_except_gsm_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 303
    array-length v1, v0

    if-lt v1, v2, :cond_4

    .line 307
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addNrToLteNetworkType(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add5gEntry(I)V

    .line 308
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addLteEntry(I)V

    .line 309
    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add3gEntry(I)V

    goto/16 :goto_0

    .line 304
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ENABLED_NETWORKS_EXCEPT_GSM_CHOICES index error."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 288
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->enabled_networks_except_gsm_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 291
    array-length v1, v0

    if-lt v1, v2, :cond_5

    .line 295
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addNrToLteNetworkType(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add5gEntry(I)V

    .line 296
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add4gEntry(I)V

    .line 297
    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add3gEntry(I)V

    goto/16 :goto_0

    .line 292
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ENABLED_NETWORKS_EXCEPT_GSM_4G_CHOICES index error."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 278
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->enabled_networks_except_gsm_lte_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 281
    array-length v1, v0

    if-lt v1, v3, :cond_6

    .line 285
    aget v0, v0, v4

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add3gEntry(I)V

    goto/16 :goto_0

    .line 282
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ENABLED_NETWORKS_EXCEPT_GSM_LTE_CHOICES index error."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 265
    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/android/settings/R$array;->enabled_networks_tdscdma_values:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v5, Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 268
    array-length v5, v0

    if-lt v5, v1, :cond_7

    .line 272
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addNrToLteNetworkType(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add5gEntry(I)V

    .line 273
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addLteEntry(I)V

    .line 274
    aget v1, v0, v3

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add3gEntry(I)V

    .line 275
    aget v0, v0, v2

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add2gEntry(I)V

    goto/16 :goto_0

    .line 269
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ENABLED_NETWORKS_TDSCDMA_CHOICES index error."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 254
    :pswitch_8
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->enabled_networks_cdma_only_lte_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 257
    array-length v1, v0

    if-lt v1, v2, :cond_8

    .line 261
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addLteEntry(I)V

    .line 262
    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addGlobalEntry(I)V

    goto :goto_0

    .line 258
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ENABLED_NETWORKS_CDMA_ONLY_LTE_CHOICES index error."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 243
    :pswitch_9
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->enabled_networks_cdma_no_lte_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 246
    array-length v1, v0

    if-lt v1, v2, :cond_9

    .line 250
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add3gEntry(I)V

    .line 251
    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add1xEntry(I)V

    goto :goto_0

    .line 247
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ENABLED_NETWORKS_CDMA_NO_LTE_CHOICES index error."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 229
    :pswitch_a
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/android/settings/R$array;->enabled_networks_cdma_values:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v5, Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg;

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 232
    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_a

    .line 236
    aget v5, v0, v4

    invoke-direct {p0, v5}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addNrToLteNetworkType(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add5gEntry(I)V

    .line 237
    aget v4, v0, v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addLteEntry(I)V

    .line 238
    aget v3, v0, v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add3gEntry(I)V

    .line 239
    aget v2, v0, v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add1xEntry(I)V

    .line 240
    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addGlobalEntry(I)V

    :goto_0
    return-void

    .line 233
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ENABLED_NETWORKS_CDMA_CHOICES index error."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method setPreferenceValueAndSummary(I)V
    .locals 4

    .line 458
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0xa

    packed-switch p1, :pswitch_data_0

    .line 614
    iget-object v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    .line 615
    invoke-virtual {v2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->mobile_network_mode_error:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 616
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    .line 615
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 614
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_0
    const/16 p1, 0x21

    .line 588
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 590
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->network_5G:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    .line 591
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->network_recommended:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 590
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_1
    const/16 p1, 0x1b

    .line 601
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 603
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    if-eq p1, v2, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    .line 605
    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 608
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->network_5G:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    .line 609
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->network_recommended:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 608
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 606
    :cond_1
    :goto_0
    sget p1, Lcom/android/settings/R$string;->network_global:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    :pswitch_2
    const/16 p1, 0x19

    .line 595
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 596
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->network_5G:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    .line 597
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->network_recommended:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 596
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_3
    const/16 p1, 0x1a

    .line 577
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 579
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->network_5G:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    .line 580
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->network_recommended:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 579
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_4
    const/16 p1, 0x15

    .line 525
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 527
    sget p1, Lcom/android/settings/R$string;->network_3G:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    :pswitch_5
    const/16 p1, 0x12

    .line 463
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 465
    sget p1, Lcom/android/settings/R$string;->network_3G:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    :pswitch_6
    const/16 p1, 0xd

    .line 540
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 541
    sget p1, Lcom/android/settings/R$string;->network_3G:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 549
    :pswitch_7
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isTdscdmaSupported(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x16

    .line 550
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 552
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->is5gEntryDisplayed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 553
    sget p1, Lcom/android/settings/R$string;->network_lte_pure:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/android/settings/R$string;->network_lte:I

    .line 552
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 555
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 557
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    if-eq p1, v2, :cond_8

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    .line 559
    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    .line 562
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->is5gEntryDisplayed()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 563
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz p1, :cond_5

    .line 564
    sget p1, Lcom/android/settings/R$string;->network_4G_pure:I

    goto :goto_2

    :cond_5
    sget p1, Lcom/android/settings/R$string;->network_lte_pure:I

    .line 563
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 566
    :cond_6
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz p1, :cond_7

    .line 567
    sget p1, Lcom/android/settings/R$string;->network_4G:I

    goto :goto_3

    :cond_7
    sget p1, Lcom/android/settings/R$string;->network_lte:I

    .line 566
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 560
    :cond_8
    :goto_4
    sget p1, Lcom/android/settings/R$string;->network_global:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 490
    :pswitch_8
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 491
    sget p1, Lcom/android/settings/R$string;->preferred_network_mode_lte_gsm_umts_summary:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 497
    :cond_9
    :pswitch_9
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_d

    const/16 p1, 0x9

    .line 498
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 500
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->is5gEntryDisplayed()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 501
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz p1, :cond_a

    .line 502
    sget p1, Lcom/android/settings/R$string;->network_4G_pure:I

    goto :goto_5

    :cond_a
    sget p1, Lcom/android/settings/R$string;->network_lte_pure:I

    .line 501
    :goto_5
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 504
    :cond_b
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz p1, :cond_c

    .line 505
    sget p1, Lcom/android/settings/R$string;->network_4G:I

    goto :goto_6

    :cond_c
    sget p1, Lcom/android/settings/R$string;->network_lte:I

    .line 504
    :goto_6
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 508
    :cond_d
    invoke-direct {p0, v3}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 510
    sget p1, Lcom/android/settings/R$string;->network_global:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    .line 514
    :pswitch_a
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 515
    sget p1, Lcom/android/settings/R$string;->preferred_network_mode_lte_cdma_summary:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    :cond_e
    const/16 p1, 0x8

    .line 518
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 520
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->is5gEntryDisplayed()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 521
    sget p1, Lcom/android/settings/R$string;->network_lte_pure:I

    goto :goto_7

    :cond_f
    sget p1, Lcom/android/settings/R$string;->network_lte:I

    .line 520
    :goto_7
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    :pswitch_b
    const/4 p1, 0x5

    .line 536
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 537
    sget p1, Lcom/android/settings/R$string;->network_1x:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    :pswitch_c
    const/4 p1, 0x4

    .line 532
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 533
    sget p1, Lcom/android/settings/R$string;->network_3G:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    .line 480
    :pswitch_d
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_10

    .line 481
    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 482
    sget p1, Lcom/android/settings/R$string;->network_2G:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    .line 484
    :cond_10
    invoke-direct {p0, v3}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 486
    sget p1, Lcom/android/settings/R$string;->network_global:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    .line 470
    :pswitch_e
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_11

    .line 471
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 472
    sget p1, Lcom/android/settings/R$string;->network_3G:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    .line 474
    :cond_11
    invoke-direct {p0, v3}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 476
    sget p1, Lcom/android/settings/R$string;->network_global:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
