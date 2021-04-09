.class public Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NetworkProviderBackupCallingPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetProvBackupCallingCtrl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getActiveSubscriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    .line 120
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 119
    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getPreference(Landroid/telephony/SubscriptionInfo;)Landroidx/preference/SwitchPreference;
    .locals 4

    .line 98
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 99
    new-instance v1, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;->mContext:Landroid/content/Context;

    .line 100
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;->getPreferenceKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, v0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->init(I)Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    .line 102
    invoke-virtual {v1, v0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->getAvailabilityStatus(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 105
    :cond_0
    new-instance v0, Landroidx/preference/SwitchPreference;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v1, v0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 107
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getPreferenceKey(I)Ljava/lang/String;
    .locals 1

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_subId_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPreferences(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/preference/SwitchPreference;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkProviderBackupCallingPreferenceController$NVMSh15LOcYfHoU90m01tGdSspM;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/-$$Lambda$NetworkProviderBackupCallingPreferenceController$NVMSh15LOcYfHoU90m01tGdSspM;-><init>(Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;)V

    .line 113
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/settings/network/telephony/-$$Lambda$8pHoMF9_lZh33gcIRQNQxJgPuHc;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$8pHoMF9_lZh33gcIRQNQxJgPuHc;

    .line 114
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 115
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$getPreferences$0(Landroid/telephony/SubscriptionInfo;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;->getPreference(Landroid/telephony/SubscriptionInfo;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    return-object p0
.end method

.method private updatePreferenceList(Landroidx/preference/PreferenceCategory;)V
    .locals 1

    .line 124
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;->getActiveSubscriptions()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;->getPreferences(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 126
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 127
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 128
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;->updatePreferenceList(Landroidx/preference/PreferenceCategory;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 67
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;->getActiveSubscriptions()Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return v2

    .line 71
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;->getPreferences(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/4 v2, 0x0

    :cond_1
    return v2
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

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 62
    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
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

.method public synthetic lambda$getPreferences$0$NetworkProviderBackupCallingPreferenceController(Landroid/telephony/SubscriptionInfo;)Landroidx/preference/SwitchPreference;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;->lambda$getPreferences$0(Landroid/telephony/SubscriptionInfo;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    .line 90
    :cond_0
    check-cast p1, Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;->updatePreferenceList(Landroidx/preference/PreferenceCategory;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
