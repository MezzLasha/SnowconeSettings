.class public final synthetic Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$dUjmhbq-NInoH81YtUqr0USw65s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/ConversationPriorityPreference;

.field public final synthetic f$1:Landroidx/preference/PreferenceViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/ConversationPriorityPreference;Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$dUjmhbq-NInoH81YtUqr0USw65s;->f$0:Lcom/android/settings/notification/app/ConversationPriorityPreference;

    iput-object p2, p0, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$dUjmhbq-NInoH81YtUqr0USw65s;->f$1:Landroidx/preference/PreferenceViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$dUjmhbq-NInoH81YtUqr0USw65s;->f$0:Lcom/android/settings/notification/app/ConversationPriorityPreference;

    iget-object p0, p0, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$dUjmhbq-NInoH81YtUqr0USw65s;->f$1:Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->lambda$onBindViewHolder$0$ConversationPriorityPreference(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method
