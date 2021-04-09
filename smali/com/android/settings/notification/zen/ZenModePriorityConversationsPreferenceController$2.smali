.class Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$2;
.super Ljava/lang/Object;
.source "ZenModePriorityConversationsPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$2;->this$0:Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 202
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$2;->this$0:Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->access$500(Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/app/ConversationListSettings;

    .line 203
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x72d

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
