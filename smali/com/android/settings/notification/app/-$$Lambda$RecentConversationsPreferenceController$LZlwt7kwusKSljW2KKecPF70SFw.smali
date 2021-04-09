.class public final synthetic Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$LZlwt7kwusKSljW2KKecPF70SFw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/RecentConversationsPreferenceController;

.field public final synthetic f$1:Landroidx/preference/PreferenceGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/RecentConversationsPreferenceController;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$LZlwt7kwusKSljW2KKecPF70SFw;->f$0:Lcom/android/settings/notification/app/RecentConversationsPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$LZlwt7kwusKSljW2KKecPF70SFw;->f$1:Landroidx/preference/PreferenceGroup;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$LZlwt7kwusKSljW2KKecPF70SFw;->f$0:Lcom/android/settings/notification/app/RecentConversationsPreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/app/-$$Lambda$RecentConversationsPreferenceController$LZlwt7kwusKSljW2KKecPF70SFw;->f$1:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->lambda$getClearAll$0$RecentConversationsPreferenceController(Landroidx/preference/PreferenceGroup;Landroid/view/View;)V

    return-void
.end method
