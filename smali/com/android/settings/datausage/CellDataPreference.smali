.class public Lcom/android/settings/datausage/CellDataPreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "CellDataPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;
.implements Lcom/android/settings/network/MobileDataEnabledListener$Client;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/CellDataPreference$CellDataState;
    }
.end annotation


# instance fields
.field public mChecked:Z

.field private mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

.field public mMultiSimDialog:Z

.field final mOnSubscriptionsChangeListener:Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;

.field public mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 56
    sget v0, Landroidx/preference/R$attr;->switchPreferenceStyle:I

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 50
    iput p2, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    .line 236
    new-instance p2, Lcom/android/settings/datausage/CellDataPreference$1;

    invoke-direct {p2, p0}, Lcom/android/settings/datausage/CellDataPreference$1;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    iput-object p2, p0, Lcom/android/settings/datausage/CellDataPreference;->mOnSubscriptionsChangeListener:Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;

    .line 59
    new-instance p2, Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/MobileDataEnabledListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V

    iput-object p2, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/CellDataPreference;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateEnabled()V

    return-void
.end method

.method private disableDataForOtherSubscriptions(I)V
    .locals 1

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    :cond_0
    return-void
.end method

.method private setChecked(Z)V
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 165
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    .line 166
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2

    .line 159
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 160
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->setChecked(Z)V

    return-void
.end method

.method private showDisableDialog(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 p0, 0x0

    .line 189
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->data_usage_disable_mobile:I

    .line 190
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    .line 191
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    .line 192
    invoke-virtual {p1, p2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method private showMultiSimDialog(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6

    .line 197
    iget v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 199
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/CellDataPreference;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 202
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sim_selection_required_pref:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    :goto_0
    sget v2, Lcom/android/settings/R$string;->sim_change_data_title:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 206
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/android/settings/R$string;->sim_change_data_message:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v5

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 206
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 210
    sget p0, Lcom/android/settings/R$string;->okay:I

    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 211
    sget p0, Lcom/android/settings/R$string;->cancel:I

    invoke-virtual {p1, p0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method private updateChecked()V
    .locals 2

    .line 128
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->setChecked(Z)V

    return-void
.end method

.method private updateEnabled()V
    .locals 1

    .line 134
    iget v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;
    .locals 0

    .line 119
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p0

    return-object p0
.end method

.method public onAttached()V
    .locals 2

    .line 86
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/datausage/CellDataPreference;->mOnSubscriptionsChangeListener:Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;

    .line 89
    invoke-virtual {v0, p0}, Lcom/android/settings/network/ProxySubscriptionManager;->addActiveSubscriptionsListener(Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 171
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020040

    .line 172
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 174
    check-cast p1, Landroid/widget/Checkable;

    iget-boolean p0, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    invoke-interface {p1, p0}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    .line 226
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mMultiSimDialog:Z

    if-eqz p1, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/network/ProxySubscriptionManager;->get()Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    const/4 p1, 0x1

    .line 228
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    .line 229
    iget p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->disableDataForOtherSubscriptions(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 232
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    :goto_0
    return-void
.end method

.method public onDetached()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mOnSubscriptionsChangeListener:Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;

    .line 96
    invoke-virtual {v0, v1}, Lcom/android/settings/network/ProxySubscriptionManager;->removeActiveSubscriptionsListener(Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V

    .line 97
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public onMobileDataEnabledChange()V
    .locals 0

    .line 253
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateChecked()V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mMultiSimDialog:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/CellDataPreference;->showMultiSimDialog(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/CellDataPreference;->showDisableDialog(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 64
    check-cast p1, Lcom/android/settings/datausage/CellDataPreference$CellDataState;

    .line 65
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 66
    iget-boolean v0, p1, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mChecked:Z

    iput-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    .line 67
    iget-boolean v0, p1, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mMultiSimDialog:Z

    iput-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mMultiSimDialog:Z

    .line 68
    iget v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 69
    iget p1, p1, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mSubId:I

    iput p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 77
    new-instance v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;

    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/CellDataPreference$CellDataState;-><init>(Landroid/os/Parcelable;)V

    .line 78
    iget-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    iput-boolean v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mChecked:Z

    .line 79
    iget-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mMultiSimDialog:Z

    iput-boolean v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mMultiSimDialog:Z

    .line 80
    iget p0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    iput p0, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mSubId:I

    return-object v0
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 4

    .line 139
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 140
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/16 v3, 0xb2

    .line 141
    invoke-virtual {v0, p1, v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 142
    iget p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 144
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 145
    iget-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, v1}, Lcom/android/settings/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 149
    iget p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->disableDataForOtherSubscriptions(I)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p3

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mOnSubscriptionsChangeListener:Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;

    .line 107
    invoke-virtual {p3, v0}, Lcom/android/settings/network/ProxySubscriptionManager;->addActiveSubscriptionsListener(Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V

    .line 109
    iget p3, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    if-ne p3, p1, :cond_0

    .line 110
    iput p2, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateEnabled()V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateChecked()V

    return-void

    .line 103
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CellDataPreference needs a SubscriptionInfo"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
