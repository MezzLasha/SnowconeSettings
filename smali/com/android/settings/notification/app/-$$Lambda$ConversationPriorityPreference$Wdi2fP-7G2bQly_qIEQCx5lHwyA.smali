.class public final synthetic Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$Wdi2fP-7G2bQly_qIEQCx5lHwyA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$Wdi2fP-7G2bQly_qIEQCx5lHwyA;->f$0:Landroid/view/View;

    iput-boolean p2, p0, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$Wdi2fP-7G2bQly_qIEQCx5lHwyA;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$Wdi2fP-7G2bQly_qIEQCx5lHwyA;->f$0:Landroid/view/View;

    iget-boolean p0, p0, Lcom/android/settings/notification/app/-$$Lambda$ConversationPriorityPreference$Wdi2fP-7G2bQly_qIEQCx5lHwyA;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->lambda$setSelected$3(Landroid/view/View;Z)V

    return-void
.end method
