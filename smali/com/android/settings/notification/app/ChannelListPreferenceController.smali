.class public Lcom/android/settings/notification/app/ChannelListPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "ChannelListPreferenceController.java"


# instance fields
.field private mChannelGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mPreference:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/app/ChannelListPreferenceController;)Ljava/util/List;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mChannelGroupList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/notification/app/ChannelListPreferenceController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mChannelGroupList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/notification/app/ChannelListPreferenceController;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method private addOrUpdateGroupToggle(Landroidx/preference/PreferenceGroup;Landroid/app/NotificationChannelGroup;)Landroidx/preference/Preference;
    .locals 8

    .line 282
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 283
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    move v3, v2

    goto :goto_0

    .line 287
    :cond_0
    new-instance v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    move v3, v1

    :goto_0
    const/4 v4, -0x1

    .line 289
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 290
    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->notification_switch_label:I

    new-array v6, v1, [Ljava/lang/Object;

    .line 291
    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v2

    .line 290
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v4, :cond_1

    .line 293
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelGroupBlockable(Landroid/app/NotificationChannelGroup;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v1

    .line 292
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 294
    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 295
    new-instance v1, Lcom/android/settings/notification/app/-$$Lambda$ChannelListPreferenceController$Li9K-7r5milXeDSQTHk57-TSiwo;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/notification/app/-$$Lambda$ChannelListPreferenceController$Li9K-7r5milXeDSQTHk57-TSiwo;-><init>(Lcom/android/settings/notification/app/ChannelListPreferenceController;Landroid/app/NotificationChannelGroup;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    if-eqz v3, :cond_2

    .line 304
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-object v0
.end method

.method private findOrCreateChannelPrefForKey(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/settings/widget/PrimarySwitchPreference;
    .locals 4

    .line 209
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 211
    invoke-virtual {p1, p3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    check-cast v1, Lcom/android/settings/widget/PrimarySwitchPreference;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 217
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 218
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    invoke-virtual {v2, p3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 220
    check-cast v2, Lcom/android/settings/widget/PrimarySwitchPreference;

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_2
    new-instance v0, Lcom/android/settings/widget/PrimarySwitchPreference;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/PrimarySwitchPreference;-><init>(Landroid/content/Context;)V

    .line 224
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 225
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method private findOrCreateGroupCategoryForKey(Landroidx/preference/PreferenceCategory;Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;
    .locals 4

    if-nez p2, :cond_0

    const-string p2, "categories"

    .line 152
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 154
    invoke-virtual {p1, p3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    check-cast v1, Landroidx/preference/PreferenceCategory;

    return-object v1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 160
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    invoke-virtual {v2, p3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 163
    check-cast v2, Landroidx/preference/PreferenceCategory;

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_3
    new-instance v0, Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 168
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method private getAlertingIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_notifications_alert:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 358
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method private synthetic lambda$addOrUpdateGroupToggle$0(Landroid/app/NotificationChannelGroup;Landroidx/preference/Preference;)Z
    .locals 3

    .line 296
    check-cast p2, Landroidx/preference/SwitchPreference;

    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    .line 297
    invoke-virtual {p1, p2}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 298
    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p2, v2, v1, p1}, Lcom/android/settings/notification/NotificationBackend;->updateChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->onGroupBlockStateChanged(Landroid/app/NotificationChannelGroup;)V

    return v0
.end method

.method private synthetic lambda$updateSingleChannelPrefs$1(Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 341
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 342
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 343
    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/NotificationChannel;->setImportance(I)V

    const/4 p3, 0x4

    .line 344
    invoke-virtual {p1, p3}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 345
    check-cast p2, Lcom/android/settings/widget/PrimarySwitchPreference;

    const/4 p3, 0x0

    .line 346
    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 347
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    const/4 v0, 0x2

    if-le p3, v0, :cond_1

    .line 348
    invoke-direct {p0}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->getAlertingIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 350
    :cond_1
    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p3, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p2, p3, p0, p1}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateGroupList(Landroidx/preference/PreferenceCategory;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceCategory;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;)V"
        }
    .end annotation

    .line 176
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 177
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 180
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannelGroup;

    .line 182
    invoke-virtual {v5}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6, v4}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->findOrCreateGroupCategoryForKey(Landroidx/preference/PreferenceCategory;Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;

    move-result-object v6

    .line 183
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-direct {p0, v5, v6}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->updateGroupPreferences(Landroid/app/NotificationChannelGroup;Landroidx/preference/PreferenceGroup;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    const/4 p2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_1

    move v1, p2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eq p0, v0, :cond_2

    move v3, p2

    :cond_2
    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    .line 194
    :cond_3
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 195
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    .line 196
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method private updateGroupPreferences(Landroid/app/NotificationChannelGroup;Landroidx/preference/PreferenceGroup;)V
    .locals 9

    .line 232
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 236
    sget v2, Lcom/android/settings/R$string;->notification_channels_other:I

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 240
    invoke-direct {p0, p2, p1}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->addOrUpdateGroupToggle(Landroidx/preference/PreferenceGroup;Landroid/app/NotificationChannelGroup;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :goto_0
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v5

    .line 247
    :goto_1
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v3

    .line 248
    :goto_2
    sget-object v6, Lcom/android/settings/notification/app/NotificationPreferenceController;->CHANNEL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 249
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 250
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_3

    .line 256
    :cond_3
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 255
    invoke-direct {p0, p2, v7, v8}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->findOrCreateChannelPrefForKey(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/settings/widget/PrimarySwitchPreference;

    move-result-object v7

    .line 257
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v8

    invoke-direct {p0, v7, v6, v8}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->updateSingleChannelPrefs(Lcom/android/settings/widget/PrimarySwitchPreference;Landroid/app/NotificationChannel;Z)V

    .line 258
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 260
    :cond_4
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    .line 266
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez v2, :cond_5

    if-eq v0, p1, :cond_5

    move v0, v4

    goto :goto_4

    :cond_5
    move v0, v5

    :goto_4
    if-eq p0, p1, :cond_6

    goto :goto_5

    :cond_6
    move v4, v5

    :goto_5
    if-nez v0, :cond_7

    if-eqz v4, :cond_8

    .line 270
    :cond_7
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 271
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    .line 272
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_6

    :cond_8
    return-void
.end method

.method private updateSingleChannelPrefs(Lcom/android/settings/widget/PrimarySwitchPreference;Landroid/app/NotificationChannel;Z)V
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 314
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelBlockable(Landroid/app/NotificationChannel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelConfigurable(Landroid/app/NotificationChannel;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    .line 313
    :goto_0
    invoke-virtual {p1, p3}, Lcom/android/settings/widget/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    .line 317
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    const/4 v0, 0x2

    if-le p3, v0, :cond_1

    .line 318
    invoke-direct {p0}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->getAlertingIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 320
    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 322
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/settingslib/TwoTargetPreference;->setIconSize(I)V

    .line 323
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 324
    iget-object p3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByChannel:Ljava/util/Map;

    .line 325
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    .line 324
    invoke-static {p3, v0, v2}, Lcom/android/settings/notification/NotificationBackend;->getSentSummary(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;Z)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    if-eqz p3, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/settings/widget/PrimarySwitchPreference;->setChecked(Z)V

    .line 327
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 328
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    const-string v2, "uid"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string v2, "package"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fromSettings"

    .line 331
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/app/ChannelNotificationSettings;

    .line 333
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 334
    invoke-virtual {v0, p3}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p3

    sget v0, Lcom/android/settings/R$string;->notification_channel_title:I

    .line 335
    invoke-virtual {p3, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p3

    const/16 v0, 0x48

    .line 336
    invoke-virtual {p3, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p3

    .line 337
    invoke-virtual {p3}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p3

    .line 332
    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 339
    new-instance p3, Lcom/android/settings/notification/app/-$$Lambda$ChannelListPreferenceController$W4YVx9aTc-mgSMqNPjRhZVTmwTg;

    invoke-direct {p3, p0, p2}, Lcom/android/settings/notification/app/-$$Lambda$ChannelListPreferenceController$W4YVx9aTc-mgSMqNPjRhZVTmwTg;-><init>(Lcom/android/settings/notification/app/ChannelListPreferenceController;Landroid/app/NotificationChannel;)V

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "channels"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    iget-boolean v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v2, :cond_1

    return v1

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_3

    .line 79
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    .line 80
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miscellaneous"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$addOrUpdateGroupToggle$0$ChannelListPreferenceController(Landroid/app/NotificationChannelGroup;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->lambda$addOrUpdateGroupToggle$0(Landroid/app/NotificationChannelGroup;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$updateSingleChannelPrefs$1$ChannelListPreferenceController(Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->lambda$updateSingleChannelPrefs$1(Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected onGroupBlockStateChanged(Landroid/app/NotificationChannelGroup;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    .line 368
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->updateGroupPreferences(Landroid/app/NotificationChannelGroup;Landroidx/preference/PreferenceGroup;)V

    :cond_1
    return-void
.end method

.method updateFullList(Landroidx/preference/PreferenceCategory;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceCategory;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p2

    const/4 v0, 0x1

    const-string v1, "zeroCategories"

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    .line 118
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceGroup;

    .line 121
    sget p1, Lcom/android/settings/R$string;->notification_channels:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 122
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->no_channels:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 127
    new-instance p2, Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 128
    sget v0, Lcom/android/settings/R$string;->notification_channels:I

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 129
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 132
    new-instance p1, Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 133
    sget p0, Lcom/android/settings/R$string;->no_channels:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 134
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 135
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 138
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->updateGroupList(Landroidx/preference/PreferenceCategory;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 89
    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    .line 91
    new-instance p1, Lcom/android/settings/notification/app/ChannelListPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/app/ChannelListPreferenceController$1;-><init>(Lcom/android/settings/notification/app/ChannelListPreferenceController;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 106
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
