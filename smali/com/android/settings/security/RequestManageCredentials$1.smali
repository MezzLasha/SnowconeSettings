.class Lcom/android/settings/security/RequestManageCredentials$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RequestManageCredentials.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/security/RequestManageCredentials;->addOnScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/RequestManageCredentials;


# direct methods
.method constructor <init>(Lcom/android/settings/security/RequestManageCredentials;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 253
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 254
    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-static {p1}, Lcom/android/settings/security/RequestManageCredentials;->access$000(Lcom/android/settings/security/RequestManageCredentials;)Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p3, :cond_0

    .line 257
    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-static {p1}, Lcom/android/settings/security/RequestManageCredentials;->access$100(Lcom/android/settings/security/RequestManageCredentials;)Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-static {p1}, Lcom/android/settings/security/RequestManageCredentials;->access$100(Lcom/android/settings/security/RequestManageCredentials;)Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtended(Z)V

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-static {p1}, Lcom/android/settings/security/RequestManageCredentials;->access$200(Lcom/android/settings/security/RequestManageCredentials;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 261
    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-static {p1}, Lcom/android/settings/security/RequestManageCredentials;->access$100(Lcom/android/settings/security/RequestManageCredentials;)Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->show()V

    .line 262
    iget-object p0, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-static {p0}, Lcom/android/settings/security/RequestManageCredentials;->access$300(Lcom/android/settings/security/RequestManageCredentials;)V

    goto :goto_0

    .line 264
    :cond_1
    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-static {p1}, Lcom/android/settings/security/RequestManageCredentials;->access$100(Lcom/android/settings/security/RequestManageCredentials;)Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hide()V

    .line 265
    iget-object p0, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-static {p0}, Lcom/android/settings/security/RequestManageCredentials;->access$400(Lcom/android/settings/security/RequestManageCredentials;)V

    :cond_2
    :goto_0
    return-void
.end method
