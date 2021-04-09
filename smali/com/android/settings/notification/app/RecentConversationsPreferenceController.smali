.class public Lcom/android/settings/notification/app/RecentConversationsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RecentConversationsPreferenceController.java"


# instance fields
.field private final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field protected mConversationComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/app/people/ConversationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mConversations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/people/ConversationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final mPs:Landroid/app/people/IPeopleManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/app/people/IPeopleManager;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 220
    new-instance p1, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$2;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$2;-><init>(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mConversationComparator:Ljava/util/Comparator;

    .line 61
    iput-object p2, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 62
    iput-object p3, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mPs:Landroid/app/people/IPeopleManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mConversations:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mConversations:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;)Landroid/app/people/IPeopleManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mPs:Landroid/app/people/IPeopleManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic lambda$createConversationPref$1(Ljava/lang/String;ILjava/lang/String;Landroidx/preference/PreferenceGroup;Lcom/android/settings/notification/app/RecentConversationPreference;)V
    .locals 0

    .line 160
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mPs:Landroid/app/people/IPeopleManager;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-interface {p0, p1, p2, p3}, Landroid/app/people/IPeopleManager;->removeRecentConversation(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    invoke-virtual {p4, p5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RecentConversationsPC"

    const-string p2, "Could not clear recent"

    .line 163
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$createConversationPref$2(Ljava/lang/String;ILandroid/app/people/ConversationChannel;Ljava/lang/String;Lcom/android/settings/notification/app/RecentConversationPreference;Landroidx/preference/Preference;)Z
    .locals 1

    .line 176
    iget-object p6, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 178
    invoke-virtual {p3}, Landroid/app/people/ConversationChannel;->getParentNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    .line 176
    invoke-virtual {p6, p1, p2, v0, p4}, Lcom/android/settings/notification/NotificationBackend;->createConversationNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p5}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->getSubSettingLauncher(Landroid/app/people/ConversationChannel;Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$getClearAll$0(Landroidx/preference/PreferenceGroup;Landroid/view/View;)V
    .locals 2

    .line 82
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mPs:Landroid/app/people/IPeopleManager;

    invoke-interface {p2}, Landroid/app/people/IPeopleManager;->removeAllRecentConversations()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "RecentConversationsPC"

    const-string v1, "Could not clear recents"

    .line 84
    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method protected createConversationPref(Landroidx/preference/PreferenceGroup;Landroid/app/people/ConversationChannel;I)Landroidx/preference/Preference;
    .locals 12

    .line 152
    invoke-virtual {p2}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p2}, Landroid/app/people/ConversationChannel;->getUid()I

    move-result v8

    .line 154
    invoke-virtual {p2}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 155
    new-instance v10, Lcom/android/settings/notification/app/RecentConversationPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v1}, Lcom/android/settings/notification/app/RecentConversationPreference;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {p2}, Landroid/app/people/ConversationChannel;->hasActiveNotifications()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    new-instance v11, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$rKA9rFsvWZa2FnpQuggeGuqpFkU;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v0

    move v4, v8

    move-object v5, v9

    move-object v6, p1

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$rKA9rFsvWZa2FnpQuggeGuqpFkU;-><init>(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;Ljava/lang/String;ILjava/lang/String;Landroidx/preference/PreferenceGroup;Lcom/android/settings/notification/app/RecentConversationPreference;)V

    invoke-virtual {v10, v11}, Lcom/android/settings/notification/app/RecentConversationPreference;->setOnClearClickListener(Lcom/android/settings/notification/app/RecentConversationPreference$OnClearClickListener;)V

    .line 167
    :cond_0
    invoke-virtual {v10, p3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 169
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->getTitle(Landroid/app/people/ConversationChannel;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v10, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->getSummary(Landroid/app/people/ConversationChannel;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v10, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    const/4 v6, 0x0

    move-object v4, v0

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/notification/NotificationBackend;->getConversationDrawable(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v10, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/app/people/ConversationChannel;->getParentNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 175
    new-instance p1, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$Pb6Iro_k6eA_4c8B5RBoYcvULZs;

    move-object v1, p1

    move-object v2, p0

    move-object v3, v0

    move v4, v8

    move-object v5, p2

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$Pb6Iro_k6eA_4c8B5RBoYcvULZs;-><init>(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;Ljava/lang/String;ILandroid/app/people/ConversationChannel;Ljava/lang/String;Lcom/android/settings/notification/app/RecentConversationPreference;)V

    invoke-virtual {v10, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object v10
.end method

.method getClearAll(Landroidx/preference/PreferenceGroup;)Landroidx/preference/Preference;
    .locals 3

    .line 76
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$layout;->conversations_clear_recents:I

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 78
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 79
    sget v1, Lcom/android/settings/R$id;->conversation_settings_clear_recents:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 80
    new-instance v2, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$LZlwt7kwusKSljW2KKecPF70SFw;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$LZlwt7kwusKSljW2KKecPF70SFw;-><init>(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;Landroidx/preference/PreferenceGroup;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "recent_conversations"

    return-object p0
.end method

.method getSubSettingLauncher(Landroid/app/people/ConversationChannel;Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;
    .locals 3

    .line 202
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 203
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getUid()I

    move-result v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    .line 204
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getParentNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.CHANNEL_ID"

    .line 206
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.CONVERSATION_ID"

    .line 208
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/app/ChannelNotificationSettings;

    .line 212
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setExtras(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 215
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 216
    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x72a

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    return-object p0
.end method

.method getSummary(Landroid/app/people/ConversationChannel;)Ljava/lang/CharSequence;
    .locals 4

    .line 188
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getParentNotificationChannelGroup()Landroid/app/NotificationChannelGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getParentNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->notification_conversation_summary:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 191
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getParentNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 192
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getParentNotificationChannelGroup()Landroid/app/NotificationChannelGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v1, v2

    .line 190
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method getTitle(Landroid/app/people/ConversationChannel;)Ljava/lang/CharSequence;
    .locals 0

    .line 196
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    .line 197
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$createConversationPref$1$RecentConversationsPreferenceController(Ljava/lang/String;ILjava/lang/String;Landroidx/preference/PreferenceGroup;Lcom/android/settings/notification/app/RecentConversationPreference;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->lambda$createConversationPref$1(Ljava/lang/String;ILjava/lang/String;Landroidx/preference/PreferenceGroup;Lcom/android/settings/notification/app/RecentConversationPreference;)V

    return-void
.end method

.method public synthetic lambda$createConversationPref$2$RecentConversationsPreferenceController(Ljava/lang/String;ILandroid/app/people/ConversationChannel;Ljava/lang/String;Lcom/android/settings/notification/app/RecentConversationPreference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->lambda$createConversationPref$2(Ljava/lang/String;ILandroid/app/people/ConversationChannel;Ljava/lang/String;Lcom/android/settings/notification/app/RecentConversationPreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$getClearAll$0$RecentConversationsPreferenceController(Landroidx/preference/PreferenceGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->lambda$getClearAll$0(Landroidx/preference/PreferenceGroup;Landroid/view/View;)V

    return-void
.end method

.method protected populateConversations(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationChannel;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/16 v0, 0x64

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/people/ConversationChannel;

    .line 140
    invoke-virtual {v1}, Landroid/app/people/ConversationChannel;->getParentNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {v1}, Landroid/app/people/ConversationChannel;->getParentNotificationChannelGroup()Landroid/app/NotificationChannelGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {v1}, Landroid/app/people/ConversationChannel;->getParentNotificationChannelGroup()Landroid/app/NotificationChannelGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v0, 0x1

    .line 146
    invoke-virtual {p0, p2, v1, v0}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->createConversationPref(Landroidx/preference/PreferenceGroup;Landroid/app/people/ConversationChannel;I)Landroidx/preference/Preference;

    move-result-object v0

    .line 145
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected populateList(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationChannel;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 120
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->populateConversations(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    .line 125
    :cond_0
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    .line 126
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 128
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 129
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->getClearAll(Landroidx/preference/PreferenceGroup;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 131
    invoke-virtual {p2, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 93
    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 95
    new-instance v0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$1;-><init>(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;Landroidx/preference/PreferenceCategory;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 114
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
