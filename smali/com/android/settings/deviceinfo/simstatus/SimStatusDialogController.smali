.class public Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;
.super Ljava/lang/Object;
.source "SimStatusDialogController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;
    }
.end annotation


# static fields
.field static final CELLULAR_NETWORK_STATE:I

.field static final CELL_DATA_NETWORK_TYPE_VALUE_ID:I

.field static final CELL_VOICE_NETWORK_TYPE_VALUE_ID:I

.field static final EID_INFO_LABEL_ID:I

.field static final EID_INFO_VALUE_ID:I

.field static final ICCID_INFO_LABEL_ID:I

.field static final ICCID_INFO_VALUE_ID:I

.field static final IMS_REGISTRATION_STATE_LABEL_ID:I

.field static final IMS_REGISTRATION_STATE_VALUE_ID:I

.field static final MAX_PHONE_COUNT_SINGLE_SIM:I = 0x1

.field static final NETWORK_PROVIDER_VALUE_ID:I

.field static final OPERATOR_INFO_LABEL_ID:I

.field static final OPERATOR_INFO_VALUE_ID:I

.field static final PHONE_NUMBER_VALUE_ID:I

.field static final ROAMING_INFO_VALUE_ID:I

.field static final SERVICE_STATE_VALUE_ID:I

.field static final SIGNAL_STRENGTH_LABEL_ID:I

.field static final SIGNAL_STRENGTH_VALUE_ID:I


# instance fields
.field private final mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mCellBroadcastServiceConnection:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

.field private final mEuiccManager:Landroid/telephony/euicc/EuiccManager;

.field private mImsRegStateCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

.field private mIsRegisteredListener:Z

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviousServiceState:Landroid/telephony/ServiceState;

.field private final mRes:Landroid/content/res/Resources;

.field private mShowLatestAreaInfo:Z

.field private final mSlotIndex:I

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    sget v0, Lcom/android/settings/R$id;->operator_name_value:I

    sput v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->NETWORK_PROVIDER_VALUE_ID:I

    .line 82
    sget v0, Lcom/android/settings/R$id;->number_value:I

    sput v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->PHONE_NUMBER_VALUE_ID:I

    .line 84
    sget v0, Lcom/android/settings/R$id;->data_state_value:I

    sput v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->CELLULAR_NETWORK_STATE:I

    .line 86
    sget v0, Lcom/android/settings/R$id;->latest_area_info_label:I

    sput v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->OPERATOR_INFO_LABEL_ID:I

    .line 88
    sget v0, Lcom/android/settings/R$id;->latest_area_info_value:I

    sput v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->OPERATOR_INFO_VALUE_ID:I

    .line 90
    sget v0, Lcom/android/settings/R$id;->service_state_value:I

    sput v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->SERVICE_STATE_VALUE_ID:I

    .line 92
    sget v0, Lcom/android/settings/R$id;->signal_strength_label:I

    sput v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->SIGNAL_STRENGTH_LABEL_ID:I

    .line 94
    sget v0, Lcom/android/settings/R$id;->signal_strength_value:I

    sput v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->SIGNAL_STRENGTH_VALUE_ID:I

    .line 96
    sget v0, Lcom/android/settings/R$id;->voice_network_type_value:I

    sput v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->CELL_VOICE_NETWORK_TYPE_VALUE_ID:I

    .line 98
    sget v0, Lcom/android/settings/R$id;->data_network_type_value:I

    sput v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->CELL_DATA_NETWORK_TYPE_VALUE_ID:I

    .line 100
    sget v0, Lcom/android/settings/R$id;->roaming_state_value:I

    sput v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->ROAMING_INFO_VALUE_ID:I

    .line 102
    sget v0, Lcom/android/settings/R$id;->icc_id_label:I

    sput v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->ICCID_INFO_LABEL_ID:I

    .line 104
    sget v0, Lcom/android/settings/R$id;->icc_id_value:I

    sput v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->ICCID_INFO_VALUE_ID:I

    .line 106
    sget v0, Lcom/android/settings/R$id;->esim_id_label:I

    sput v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->EID_INFO_LABEL_ID:I

    .line 108
    sget v0, Lcom/android/settings/R$id;->esim_id_value:I

    sput v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->EID_INFO_VALUE_ID:I

    .line 110
    sget v0, Lcom/android/settings/R$id;->ims_reg_state_label:I

    sput v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->IMS_REGISTRATION_STATE_LABEL_ID:I

    .line 112
    sget v0, Lcom/android/settings/R$id;->ims_reg_state_value:I

    sput v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->IMS_REGISTRATION_STATE_VALUE_ID:I

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V
    .locals 1

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$1;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mIsRegisteredListener:Z

    .line 162
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 681
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mImsRegStateCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    .line 213
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    .line 214
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    .line 215
    iput p3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSlotIndex:I

    .line 216
    invoke-direct {p0, p3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getPhoneSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 218
    const-class p3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 219
    const-class p3, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/CarrierConfigManager;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 220
    const-class p3, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/euicc/EuiccManager;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    .line 221
    const-class p3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/SubscriptionManager;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    if-eqz p2, :cond_0

    .line 226
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSlotIndex:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateDataState(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateNetworkProvider()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateRoamingStatus(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mPreviousServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/TelephonyDisplayInfo;)Landroid/telephony/TelephonyDisplayInfo;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getPhoneSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->unregisterImsRegistrationCallback(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->registerImsRegistrationCallback(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateSubscriptionStatus()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateAreaInfoText()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Landroid/content/res/Resources;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    return-object p0
.end method

.method private bindCellBroadcastService()V
    .locals 4

    .line 385
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$1;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCellBroadcastServiceConnection:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;

    .line 386
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.CellBroadcastService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getCellBroadcastServicePackage()Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 389
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCellBroadcastServiceConnection:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;

    const-string v2, "SimStatusDialogCtrl"

    if-eqz v1, :cond_1

    .line 391
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;->getService()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCellBroadcastServiceConnection:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Unable to bind to service"

    .line 394
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "skipping bindService because connection already exists"

    .line 397
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private getAsuLevel(Landroid/telephony/SignalStrength;)I
    .locals 2

    .line 750
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object p0

    const/4 p1, -0x1

    if-nez p0, :cond_0

    return p1

    .line 756
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrength;

    .line 757
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 758
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result p1

    :cond_2
    return p1
.end method

.method private getCellBroadcastServicePackage()Ljava/lang/String;
    .locals 5

    .line 403
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.CellBroadcastService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x100000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 407
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "SimStatusDialogCtrl"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCellBroadcastServicePackageName: found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " CBS packages"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 412
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1

    goto :goto_0

    .line 413
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 414
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 415
    invoke-virtual {p0, v3, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v4, "getCellBroadcastServicePackageName: "

    if-nez v3, :cond_2

    .line 418
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 421
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not have READ_PRIVILEGED_PHONE_STATE permission"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, "getCellBroadcastServicePackageName: found a CBS package but packageName is null/empty"

    .line 425
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p0, "getCellBroadcastServicePackageName: package name not found"

    .line 429
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getDbm(Landroid/telephony/SignalStrength;)I
    .locals 2

    .line 733
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object p0

    const/4 p1, -0x1

    if-nez p0, :cond_0

    return p1

    .line 739
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrength;

    .line 740
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 741
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result p1

    :cond_2
    return p1
.end method

.method static getNetworkTypeName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_1
    const-string p0, "NR SA"

    return-object p0

    :pswitch_2
    const-string p0, "IWLAN"

    return-object p0

    :pswitch_3
    const-string p0, "TD_SCDMA"

    return-object p0

    :pswitch_4
    const-string p0, "GSM"

    return-object p0

    :pswitch_5
    const-string p0, "HSPA+"

    return-object p0

    :pswitch_6
    const-string p0, "CDMA - eHRPD"

    return-object p0

    :pswitch_7
    const-string p0, "LTE"

    return-object p0

    :pswitch_8
    const-string p0, "CDMA - EvDo rev. B"

    return-object p0

    :pswitch_9
    const-string p0, "iDEN"

    return-object p0

    :pswitch_a
    const-string p0, "HSPA"

    return-object p0

    :pswitch_b
    const-string p0, "HSUPA"

    return-object p0

    :pswitch_c
    const-string p0, "HSDPA"

    return-object p0

    :pswitch_d
    const-string p0, "CDMA - 1xRTT"

    return-object p0

    :pswitch_e
    const-string p0, "CDMA - EvDo rev. A"

    return-object p0

    :pswitch_f
    const-string p0, "CDMA - EvDo rev. 0"

    return-object p0

    :pswitch_10
    const-string p0, "CDMA"

    return-object p0

    :pswitch_11
    const-string p0, "UMTS"

    return-object p0

    :pswitch_12
    const-string p0, "EDGE"

    return-object p0

    :pswitch_13
    const-string p0, "GPRS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPhoneSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 729
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private isImsRegistrationStateShowUp()Z
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 665
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 666
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 667
    invoke-virtual {p0, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "show_ims_registration_status_bool"

    .line 669
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method private synthetic lambda$requestForUpdateEid$0(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 609
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateEid(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method private synthetic lambda$requestForUpdateEid$1()V
    .locals 2

    .line 608
    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSlotIndex:I

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getEid(I)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    .line 609
    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/-$$Lambda$SimStatusDialogController$JgTGjC7yTzgXMWgO4-1h3MQ1JBo;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/deviceinfo/simstatus/-$$Lambda$SimStatusDialogController$JgTGjC7yTzgXMWgO4-1h3MQ1JBo;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerImsRegistrationCallback(I)V
    .locals 2

    .line 708
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->isImsRegistrationStateShowUp()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 712
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    .line 713
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mImsRegStateCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/ims/ImsMmTelManager;->registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to register IMS status for subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimStatusDialogCtrl"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private resetSignalStrength()V
    .locals 2

    .line 522
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->SIGNAL_STRENGTH_VALUE_ID:I

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private unregisterImsRegistrationCallback(I)V
    .locals 1

    .line 721
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->isImsRegistrationStateShowUp()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 724
    :cond_0
    invoke-static {p1}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p1

    .line 725
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mImsRegStateCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {p1, p0}, Landroid/telephony/ims/ImsMmTelManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V

    return-void
.end method

.method private updateAreaInfoText()V
    .locals 3

    .line 367
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCellBroadcastServiceConnection:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;

    if-nez v0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;->getService()Landroid/os/IBinder;

    move-result-object v0

    .line 369
    invoke-static {v0}, Landroid/telephony/ICellBroadcastService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellBroadcastService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 373
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v2, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->OPERATOR_INFO_VALUE_ID:I

    iget p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSlotIndex:I

    .line 374
    invoke-interface {v0, p0}, Landroid/telephony/ICellBroadcastService;->getCellBroadcastAreaInfo(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 373
    invoke-virtual {v1, v2, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t get area info. e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimStatusDialogCtrl"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private updateDataState(I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 355
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_data_suspended:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 343
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_data_connected:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 349
    :cond_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_data_connecting:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 352
    :cond_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_data_disconnected:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 359
    :goto_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->CELLULAR_NETWORK_STATE:I

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private updateIccidNumber()V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 590
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 591
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "show_iccid_in_sim_status_bool"

    .line 593
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->ICCID_INFO_LABEL_ID:I

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 599
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->ICCID_INFO_VALUE_ID:I

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    goto :goto_1

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->ICCID_INFO_VALUE_ID:I

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateImsRegistrationState()V
    .locals 2

    .line 674
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->isImsRegistrationStateShowUp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->IMS_REGISTRATION_STATE_LABEL_ID:I

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 678
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->IMS_REGISTRATION_STATE_VALUE_ID:I

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    return-void
.end method

.method private updateLatestAreaInfo()V
    .locals 2

    .line 434
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 436
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 441
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->bindCellBroadcastService()V

    goto :goto_1

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->OPERATOR_INFO_LABEL_ID:I

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 444
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->OPERATOR_INFO_VALUE_ID:I

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    :goto_1
    return-void
.end method

.method private updateNetworkProvider()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 328
    :goto_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->NETWORK_PROVIDER_VALUE_ID:I

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private updateNetworkType()V
    .locals 6

    .line 527
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 529
    invoke-static {v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v2, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->CELL_VOICE_NETWORK_TYPE_VALUE_ID:I

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 531
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->CELL_DATA_NETWORK_TYPE_VALUE_ID:I

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    return-void

    .line 538
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 539
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    .line 540
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v3

    .line 541
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_0

    .line 543
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v4

    :goto_0
    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 546
    invoke-static {v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v5

    :goto_1
    if-eqz v3, :cond_3

    .line 549
    invoke-static {v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    :cond_3
    const/4 v3, 0x4

    if-eq v4, v3, :cond_4

    const/4 v3, 0x3

    if-ne v4, v3, :cond_5

    :cond_4
    const-string v2, "NR NSA"

    .line 558
    :cond_5
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v3, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "show_4g_for_lte_data_icon_bool"

    .line 560
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_6
    const-string v0, "4G"

    if-eqz v1, :cond_8

    const-string v1, "LTE"

    .line 565
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v2, v0

    .line 568
    :cond_7
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v5, v0

    .line 573
    :cond_8
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->CELL_VOICE_NETWORK_TYPE_VALUE_ID:I

    invoke-virtual {v0, v1, v5}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 574
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->CELL_DATA_NETWORK_TYPE_VALUE_ID:I

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private updateRoamingStatus(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 578
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 579
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->ROAMING_INFO_VALUE_ID:I

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->radioInfo_roaming_in:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 581
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->ROAMING_INFO_VALUE_ID:I

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->radioInfo_roaming_not:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 1

    .line 449
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getCombinedServiceState(Landroid/telephony/ServiceState;)I

    move-result v0

    .line 450
    invoke-static {p1}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 451
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->resetSignalStrength()V

    goto :goto_0

    .line 452
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mPreviousServiceState:Landroid/telephony/ServiceState;

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 454
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    const/4 p1, 0x1

    if-eq v0, p1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    .line 473
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 470
    :cond_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_service_off:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 467
    :cond_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_service_out:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 461
    :cond_4
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_service_in:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 477
    :goto_1
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->SERVICE_STATE_VALUE_ID:I

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 488
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 489
    invoke-virtual {v2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "show_signal_strength_in_sim_status_bool"

    .line 491
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 496
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->SIGNAL_STRENGTH_LABEL_ID:I

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 497
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget p1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->SIGNAL_STRENGTH_VALUE_ID:I

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    return-void

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 502
    invoke-static {v0}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 506
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getDbm(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 507
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getAsuLevel(Landroid/telephony/SignalStrength;)I

    move-result p1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    move v0, v3

    :cond_4
    if-ne p1, v2, :cond_5

    move p1, v3

    .line 517
    :cond_5
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v4, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->SIGNAL_STRENGTH_VALUE_ID:I

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    sget v5, Lcom/android/settings/R$string;->sim_signal_strength:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 518
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    .line 517
    invoke-virtual {p0, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v4, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private updateSubscriptionStatus()V
    .locals 2

    .line 243
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateNetworkProvider()V

    .line 245
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updatePhoneNumber()V

    .line 249
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 250
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 251
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateNetworkType()V

    .line 252
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateRoamingStatus(Landroid/telephony/ServiceState;)V

    .line 253
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateIccidNumber()V

    .line 254
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateImsRegistrationState()V

    return-void
.end method


# virtual methods
.method public deinitialize()V
    .locals 2

    .line 261
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCellBroadcastServiceConnection:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;->getService()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCellBroadcastServiceConnection:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCellBroadcastServiceConnection:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;

    :cond_1
    return-void
.end method

.method protected getEid(I)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v2, :cond_1

    .line 619
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 620
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLogicalToPhysicalSlotMapping()Ljava/util/Map;

    move-result-object v0

    .line 621
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, -0x1

    .line 622
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 621
    invoke-interface {v0, p1, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v4, :cond_2

    .line 625
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v0

    .line 627
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccCardInfo;

    .line 628
    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->getSlotIndex()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 629
    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 631
    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->getEid()Ljava/lang/String;

    move-result-object p1

    .line 632
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 633
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->getCardId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/euicc/EuiccManager;->createForCardId(I)Landroid/telephony/euicc/EuiccManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->getEid()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 640
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p1}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 643
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->getEid()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    move v2, v3

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    if-nez p1, :cond_4

    return-object v1

    .line 648
    :cond_4
    new-instance p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method protected getPhoneStateListener()Landroid/telephony/PhoneStateListener;
    .locals 1

    .line 768
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$4;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->requestForUpdateEid()V

    .line 233
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 238
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateLatestAreaInfo()V

    .line 239
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateSubscriptionStatus()V

    return-void
.end method

.method public synthetic lambda$requestForUpdateEid$0$SimStatusDialogController(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->lambda$requestForUpdateEid$0(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public synthetic lambda$requestForUpdateEid$1$SimStatusDialogController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->lambda$requestForUpdateEid$1()V

    return-void
.end method

.method public onPause()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 304
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mIsRegisteredListener:Z

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 307
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 308
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 311
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mIsRegisteredListener:Z

    :cond_1
    return-void

    .line 316
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->unregisterImsRegistrationCallback(I)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 320
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 279
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 278
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 280
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v2, 0x100141

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    .line 286
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 285
    invoke-virtual {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->registerImsRegistrationCallback(I)V

    .line 289
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateAreaInfoText()V

    .line 291
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telephony.action.AREA_INFO_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mIsRegisteredListener:Z

    return-void
.end method

.method protected requestForUpdateEid()V
    .locals 1

    .line 607
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/-$$Lambda$SimStatusDialogController$paZtcjCyQNucsYQ7Yy18tQc3Gn4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/-$$Lambda$SimStatusDialogController$paZtcjCyQNucsYQ7Yy18tQc3Gn4;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected updateEid(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 654
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->EID_INFO_LABEL_ID:I

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 655
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget p1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->EID_INFO_VALUE_ID:I

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    goto :goto_0

    .line 656
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 657
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->EID_INFO_VALUE_ID:I

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updatePhoneNumber()V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->PHONE_NUMBER_VALUE_ID:I

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 335
    invoke-static {v2, p0}, Lcom/android/settingslib/DeviceInfoUtils;->getBidiFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p0

    .line 334
    invoke-virtual {v0, v1, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    return-void
.end method
