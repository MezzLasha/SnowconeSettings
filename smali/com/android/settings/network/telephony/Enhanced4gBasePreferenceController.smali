.class public Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "Enhanced4gBasePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;,
        Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;
    }
.end annotation


# static fields
.field protected static final MODE_4G_CALLING:I = 0x2

.field protected static final MODE_ADVANCED_CALL:I = 0x1

.field protected static final MODE_NONE:I = -0x1

.field protected static final MODE_VOLTE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Enhanced4g"


# instance fields
.field private m4gCurrentMode:I

.field private final m4gLteListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCallState:Ljava/lang/Integer;

.field private mHas5gCapability:Z

.field mIsNrEnabledFromCarrierConfig:Z

.field private mPhoneStateListener:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;

.field mPreference:Landroidx/preference/Preference;

.field private mShow5gLimitedDialog:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 67
    iput p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gCurrentMode:I

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gLteListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mCallState:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mHas5gCapability:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Landroid/telephony/ims/ImsMmTelManager;Z)Z
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->setAdvancedCallingSettingEnabled(Landroid/telephony/ims/ImsMmTelManager;Z)Z

    move-result p0

    return p0
.end method

.method private isDialogNeeded()Z
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Has5gCapability:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mHas5gCapability:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enhanced4g"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mShow5gLimitedDialog:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mHas5gCapability:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mIsNrEnabledFromCarrierConfig:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isModeMatched()Z
    .locals 1

    .line 194
    iget v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gCurrentMode:I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->getMode()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isUserControlAllowed(Landroid/os/PersistableBundle;)Z
    .locals 0

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->isCallStateIdle()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "editable_enhanced_4g_lte_bool"

    .line 210
    invoke-virtual {p1, p0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setAdvancedCallingSettingEnabled(Landroid/telephony/ims/ImsMmTelManager;Z)Z
    .locals 2

    .line 289
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/telephony/ims/ImsMmTelManager;->setAdvancedCallingSettingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gLteListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;

    .line 295
    invoke-interface {p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;->on4gLteUpdated()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to set VoLTE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ". subId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Enhanced4g"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private show5gLimitedDialog(Landroid/telephony/ims/ImsMmTelManager;)V
    .locals 3

    const-string v0, "Enhanced4g"

    const-string v1, "show5gLimitedDialog"

    .line 264
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 266
    new-instance v1, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$1;-><init>(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Landroid/telephony/ims/ImsMmTelManager;)V

    .line 275
    sget p1, Lcom/android/settings/R$string;->volte_5G_limited_title:I

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->volte_5G_limited_text:I

    .line 276
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 277
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->cancel:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->condition_turn_off:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 282
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 283
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gLteListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 3

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->init(I)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    .line 106
    invoke-direct {p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->isModeMatched()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "hide_enhanced_4g_lte_bool"

    .line 111
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->queryImsState(I)Lcom/android/settings/network/ims/VolteQueryImsState;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/android/settings/network/ims/VolteQueryImsState;->isReadyToVoLte()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 118
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->isUserControlAllowed(Landroid/os/PersistableBundle;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/android/settings/network/ims/VolteQueryImsState;->isAllowUserControl()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_4
    :goto_1
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method protected getMode()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(I)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;-><init>(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;

    .line 79
    :cond_0
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    if-ne v0, p1, :cond_1

    return-object p0

    .line 82
    :cond_1
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    const-string v0, "show_4g_for_lte_data_icon_bool"

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "enhanced_4g_lte_title_variant_int"

    .line 90
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gCurrentMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 93
    :goto_0
    iput v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gCurrentMode:I

    :cond_4
    const-string v0, "volte_5g_limited_alert_dialog_bool"

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mShow5gLimitedDialog:Z

    const-string v0, "nr_enabled_bool"

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mIsNrEnabledFromCarrierConfig:Z

    return-object p0
.end method

.method protected isCallStateIdle()Z
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mCallState:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChecked()Z
    .locals 1

    .line 179
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->queryImsState(I)Lcom/android/settings/network/ims/VolteQueryImsState;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isEnabledByUser()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 2

    .line 130
    invoke-direct {p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->isModeMatched()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;->register(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;

    if-nez p0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;->unregister()V

    return-void
.end method

.method protected queryImsState(I)Lcom/android/settings/network/ims/VolteQueryImsState;
    .locals 1

    .line 199
    new-instance v0, Lcom/android/settings/network/ims/VolteQueryImsState;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/ims/VolteQueryImsState;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 161
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 164
    :cond_0
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->isDialogNeeded()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    .line 170
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->show5gLimitedDialog(Landroid/telephony/ims/ImsMmTelManager;)V

    return v1

    .line 172
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->setAdvancedCallingSettingEnabled(Landroid/telephony/ims/ImsMmTelManager;Z)Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 146
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    .line 150
    :cond_0
    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 152
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->queryImsState(I)Lcom/android/settings/network/ims/VolteQueryImsState;

    move-result-object v0

    .line 153
    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->isUserControlAllowed(Landroid/os/PersistableBundle;)Z

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 154
    invoke-virtual {v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isAllowUserControl()Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v2

    .line 153
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 155
    invoke-virtual {v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isEnabledByUser()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 156
    invoke-virtual {v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isAllowUserControl()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 155
    :goto_1
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
