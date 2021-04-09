.class public Lcom/android/settings/notification/app/NoConversationsPreferenceController;
.super Lcom/android/settings/notification/app/ConversationListPreferenceController;
.source "NoConversationsPreferenceController.java"


# static fields
.field private static TAG:Ljava/lang/String; = "NoConversationsPC"


# instance fields
.field private mConversationCount:I

.field private mPs:Landroid/app/people/IPeopleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/app/people/IPeopleManager;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/android/settings/notification/app/NoConversationsPreferenceController;->mConversationCount:I

    .line 44
    iput-object p3, p0, Lcom/android/settings/notification/app/NoConversationsPreferenceController;->mPs:Landroid/app/people/IPeopleManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/app/NoConversationsPreferenceController;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/android/settings/notification/app/NoConversationsPreferenceController;->mConversationCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/notification/app/NoConversationsPreferenceController;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/android/settings/notification/app/NoConversationsPreferenceController;->mConversationCount:I

    return p1
.end method

.method static synthetic access$012(Lcom/android/settings/notification/app/NoConversationsPreferenceController;I)I
    .locals 1

    .line 33
    iget v0, p0, Lcom/android/settings/notification/app/NoConversationsPreferenceController;->mConversationCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/notification/app/NoConversationsPreferenceController;->mConversationCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/app/NoConversationsPreferenceController;)Landroid/app/people/IPeopleManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/notification/app/NoConversationsPreferenceController;->mPs:Landroid/app/people/IPeopleManager;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/android/settings/notification/app/NoConversationsPreferenceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/app/NoConversationsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "no_conversations"

    return-object p0
.end method

.method getSummaryPreference()Landroidx/preference/Preference;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method matchesFilter(Landroid/service/notification/ConversationChannelWrapper;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 69
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 71
    new-instance v1, Lcom/android/settings/notification/app/NoConversationsPreferenceController$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings/notification/app/NoConversationsPreferenceController$1;-><init>(Lcom/android/settings/notification/app/NoConversationsPreferenceController;Lcom/android/settingslib/widget/LayoutPreference;Landroidx/preference/Preference;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 92
    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
