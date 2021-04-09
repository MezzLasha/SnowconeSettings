.class public Lcom/android/settings/notification/app/ConversationListSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConversationListSettings.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field mBackend:Lcom/android/settings/notification/NotificationBackend;

.field protected mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field mPs:Landroid/app/people/IPeopleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ConvoListSettings"

    const/4 v1, 0x3

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/app/ConversationListSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 37
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mControllers:Ljava/util/List;

    const-string v0, "people"

    .line 44
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/app/people/IPeopleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IPeopleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mPs:Landroid/app/people/IPeopleManager;

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mControllers:Ljava/util/List;

    .line 65
    new-instance v1, Lcom/android/settings/notification/app/NoConversationsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mPs:Landroid/app/people/IPeopleManager;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/app/NoConversationsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/app/people/IPeopleManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/AllConversationsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/app/AllConversationsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mPs:Landroid/app/people/IPeopleManager;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/app/people/IPeopleManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mControllers:Ljava/util/List;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ConvoListSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x72a

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 59
    sget p0, Lcom/android/settings/R$xml;->conversation_list_settings:I

    return p0
.end method
