.class Lcom/android/settings/notification/app/RecentConversationsPreferenceController$1;
.super Landroid/os/AsyncTask;
.source "RecentConversationsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->updateState(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/app/RecentConversationsPreferenceController;

.field final synthetic val$pref:Landroidx/preference/PreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;Landroidx/preference/PreferenceCategory;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/app/RecentConversationsPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$1;->val$pref:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 95
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 99
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/app/RecentConversationsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->access$100(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;)Landroid/app/people/IPeopleManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/people/IPeopleManager;->getRecentConversations()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->access$002(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RecentConversationsPC"

    const-string v1, "Could get recents"

    .line 101
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :goto_0
    iget-object p1, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/app/RecentConversationsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->access$000(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/app/RecentConversationsPreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->mConversationComparator:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/app/RecentConversationsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->access$200(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/app/RecentConversationsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->access$000(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController$1;->val$pref:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->populateList(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    return-void
.end method
