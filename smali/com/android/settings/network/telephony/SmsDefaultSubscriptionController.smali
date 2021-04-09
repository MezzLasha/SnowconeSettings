.class public Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;
.super Lcom/android/settings/network/telephony/DefaultSubscriptionController;
.source "SmsDefaultSubscriptionController.java"


# instance fields
.field private final mIsAskEverytimeSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11100da

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;->mIsAskEverytimeSupported:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
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

.method public getDefaultCallingAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getDefaultSubscriptionId()I
    .locals 0

    .line 41
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result p0

    return p0
.end method

.method protected getDefaultSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;->getDefaultSubscriptionId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method protected isAskEverytimeSupported()Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;->mIsAskEverytimeSupported:Z

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method protected setDefaultSubscription(I)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
