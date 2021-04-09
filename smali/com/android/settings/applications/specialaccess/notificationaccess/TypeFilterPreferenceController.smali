.class public Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TypeFilterPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TypeFilterPrefCntlr"


# instance fields
.field private mCn:Landroid/content/ComponentName;

.field private mNlf:Landroid/service/notification/NotificationListenerFilter;

.field private mNm:Lcom/android/settings/notification/NotificationBackend;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private hasFlag(II)Z
    .locals 0

    and-int p0, p1, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mNm:Lcom/android/settings/notification/NotificationBackend;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mCn:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/NotificationBackend;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0
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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mNlf:Landroid/service/notification/NotificationListenerFilter;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerFilter;->getTypes()I

    move-result v1

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->notif_type_ongoing:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mNlf:Landroid/service/notification/NotificationListenerFilter;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerFilter;->getTypes()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->notif_type_conversation:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mNlf:Landroid/service/notification/NotificationListenerFilter;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerFilter;->getTypes()I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->notif_type_alerting:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mNlf:Landroid/service/notification/NotificationListenerFilter;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerFilter;->getTypes()I

    move-result v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->notif_type_silent:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_3
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mNm:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mCn:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->getListenerFilter(Landroid/content/ComponentName;I)Landroid/service/notification/NotificationListenerFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mNlf:Landroid/service/notification/NotificationListenerFilter;

    .line 132
    check-cast p2, Ljava/util/Set;

    .line 135
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 138
    :cond_0
    iget-object p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mNlf:Landroid/service/notification/NotificationListenerFilter;

    invoke-virtual {p2, v0}, Landroid/service/notification/NotificationListenerFilter;->setTypes(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 140
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mNm:Lcom/android/settings/notification/NotificationBackend;

    iget-object p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mCn:Landroid/content/ComponentName;

    iget v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mUserId:I

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mNlf:Landroid/service/notification/NotificationListenerFilter;

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/notification/NotificationBackend;->setListenerFilter(Landroid/content/ComponentName;ILandroid/service/notification/NotificationListenerFilter;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setCn(Landroid/content/ComponentName;)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mCn:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setNm(Lcom/android/settings/notification/NotificationBackend;)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mNm:Lcom/android/settings/notification/NotificationBackend;

    return-object p0
.end method

.method public setUserId(I)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mUserId:I

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mNm:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mCn:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->getListenerFilter(Landroid/content/ComponentName;I)Landroid/service/notification/NotificationListenerFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mNlf:Landroid/service/notification/NotificationListenerFilter;

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 81
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 83
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mNlf:Landroid/service/notification/NotificationListenerFilter;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerFilter;->getTypes()I

    move-result v2

    const/16 v3, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->notif_type_ongoing:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mNlf:Landroid/service/notification/NotificationListenerFilter;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerFilter;->getTypes()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->notif_type_conversation:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mNlf:Landroid/service/notification/NotificationListenerFilter;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerFilter;->getTypes()I

    move-result v2

    const/4 v4, 0x2

    invoke-direct {p0, v2, v4}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->notif_type_alerting:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->mNlf:Landroid/service/notification/NotificationListenerFilter;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerFilter;->getTypes()I

    move-result v2

    const/4 v4, 0x4

    invoke-direct {p0, v2, v4}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->notif_type_silent:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_3
    move-object v1, p1

    check-cast v1, Landroidx/preference/MultiSelectListPreference;

    .line 101
    invoke-virtual {v1, v0}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 102
    invoke-super {p0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->getAvailabilityStatus()I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
