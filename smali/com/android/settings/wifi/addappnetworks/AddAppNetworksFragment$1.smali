.class Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$1;
.super Landroid/os/Handler;
.source "AddAppNetworksFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$1;->this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$1;->this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->showSaveStatusByState(I)V

    .line 145
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eq p1, v2, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$1;->this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    const/4 p1, -0x1

    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mResultCodeArrayList:Ljava/util/List;

    invoke-static {p0, p1, v0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->access$300(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;ILjava/util/List;)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$1;->this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$1;->this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->access$100(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 156
    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$1;->this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    invoke-static {p1, v1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->access$200(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;I)V

    :cond_3
    const-wide/16 v0, 0x3e8

    .line 158
    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 147
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$1;->this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    iget-object p1, p1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$1;->this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    invoke-static {p1, v1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->access$002(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;I)I

    .line 150
    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$1;->this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->access$000(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->saveNetwork(I)V

    :goto_0
    return-void
.end method
