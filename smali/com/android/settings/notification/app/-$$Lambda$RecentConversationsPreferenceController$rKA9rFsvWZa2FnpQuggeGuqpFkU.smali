.class public final synthetic Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$rKA9rFsvWZa2FnpQuggeGuqpFkU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/notification/app/RecentConversationPreference$OnClearClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/RecentConversationsPreferenceController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroidx/preference/PreferenceGroup;

.field public final synthetic f$5:Lcom/android/settings/notification/app/RecentConversationPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;Ljava/lang/String;ILjava/lang/String;Landroidx/preference/PreferenceGroup;Lcom/android/settings/notification/app/RecentConversationPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$rKA9rFsvWZa2FnpQuggeGuqpFkU;->f$0:Lcom/android/settings/notification/app/RecentConversationsPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$rKA9rFsvWZa2FnpQuggeGuqpFkU;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$rKA9rFsvWZa2FnpQuggeGuqpFkU;->f$2:I

    iput-object p4, p0, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$rKA9rFsvWZa2FnpQuggeGuqpFkU;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$rKA9rFsvWZa2FnpQuggeGuqpFkU;->f$4:Landroidx/preference/PreferenceGroup;

    iput-object p6, p0, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$rKA9rFsvWZa2FnpQuggeGuqpFkU;->f$5:Lcom/android/settings/notification/app/RecentConversationPreference;

    return-void
.end method


# virtual methods
.method public final onClear()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$rKA9rFsvWZa2FnpQuggeGuqpFkU;->f$0:Lcom/android/settings/notification/app/RecentConversationsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$rKA9rFsvWZa2FnpQuggeGuqpFkU;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$rKA9rFsvWZa2FnpQuggeGuqpFkU;->f$2:I

    iget-object v3, p0, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$rKA9rFsvWZa2FnpQuggeGuqpFkU;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$rKA9rFsvWZa2FnpQuggeGuqpFkU;->f$4:Landroidx/preference/PreferenceGroup;

    iget-object v5, p0, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$rKA9rFsvWZa2FnpQuggeGuqpFkU;->f$5:Lcom/android/settings/notification/app/RecentConversationPreference;

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->lambda$createConversationPref$1$RecentConversationsPreferenceController(Ljava/lang/String;ILjava/lang/String;Landroidx/preference/PreferenceGroup;Lcom/android/settings/notification/app/RecentConversationPreference;)V

    return-void
.end method
