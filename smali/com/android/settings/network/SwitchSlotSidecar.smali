.class public Lcom/android/settings/network/SwitchSlotSidecar;
.super Lcom/android/settings/AsyncTaskSidecar;
.source "SwitchSlotSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/SwitchSlotSidecar$Result;,
        Lcom/android/settings/network/SwitchSlotSidecar$Param;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/AsyncTaskSidecar<",
        "Lcom/android/settings/network/SwitchSlotSidecar$Param;",
        "Lcom/android/settings/network/SwitchSlotSidecar$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private mException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/AsyncTaskSidecar;-><init>()V

    return-void
.end method

.method public static get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchSlotSidecar;
    .locals 3

    .line 57
    const-class v0, Lcom/android/settings/network/SwitchSlotSidecar;

    const-string v1, "SwitchSlotSidecar"

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/settings/SidecarFragment;->get(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/android/settings/SidecarFragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/SwitchSlotSidecar;

    return-object p0
.end method


# virtual methods
.method protected doInBackground(Lcom/android/settings/network/SwitchSlotSidecar$Param;)Lcom/android/settings/network/SwitchSlotSidecar$Result;
    .locals 2

    .line 86
    new-instance v0, Lcom/android/settings/network/SwitchSlotSidecar$Result;

    invoke-direct {v0}, Lcom/android/settings/network/SwitchSlotSidecar$Result;-><init>()V

    if-nez p1, :cond_0

    .line 88
    new-instance p0, Lcom/android/settings/network/UiccSlotsException;

    const-string p1, "Null param"

    invoke-direct {p0, p1}, Lcom/android/settings/network/UiccSlotsException;-><init>(Ljava/lang/String;)V

    iput-object p0, v0, Lcom/android/settings/network/SwitchSlotSidecar$Result;->exception:Ljava/lang/Exception;

    return-object v0

    .line 92
    :cond_0
    :try_start_0
    iget v1, p1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->command:I

    if-eqz v1, :cond_1

    const-string p0, "SwitchSlotSidecar"

    const-string p1, "Wrong command."

    .line 97
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_1
    iget p1, p1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->slotId:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/network/UiccSlotUtil;->switchToRemovableSlot(ILandroid/content/Context;)V
    :try_end_0
    .catch Lcom/android/settings/network/UiccSlotsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 101
    iput-object p0, v0, Lcom/android/settings/network/SwitchSlotSidecar$Result;->exception:Ljava/lang/Exception;

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lcom/android/settings/network/SwitchSlotSidecar$Param;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/SwitchSlotSidecar;->doInBackground(Lcom/android/settings/network/SwitchSlotSidecar$Param;)Lcom/android/settings/network/SwitchSlotSidecar$Result;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/SidecarFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostExecute(Lcom/android/settings/network/SwitchSlotSidecar$Result;)V
    .locals 1

    .line 108
    iget-object p1, p1, Lcom/android/settings/network/SwitchSlotSidecar$Result;->exception:Ljava/lang/Exception;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SidecarFragment;->setState(II)V

    goto :goto_0

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/android/settings/network/SwitchSlotSidecar;->mException:Ljava/lang/Exception;

    const/4 p1, 0x3

    .line 112
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SidecarFragment;->setState(II)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/android/settings/network/SwitchSlotSidecar$Result;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/SwitchSlotSidecar;->onPostExecute(Lcom/android/settings/network/SwitchSlotSidecar$Result;)V

    return-void
.end method

.method public runSwitchToRemovableSlot(I)V
    .locals 2

    .line 69
    new-instance v0, Lcom/android/settings/network/SwitchSlotSidecar$Param;

    invoke-direct {v0}, Lcom/android/settings/network/SwitchSlotSidecar$Param;-><init>()V

    const/4 v1, 0x0

    .line 70
    iput v1, v0, Lcom/android/settings/network/SwitchSlotSidecar$Param;->command:I

    .line 71
    iput p1, v0, Lcom/android/settings/network/SwitchSlotSidecar$Param;->slotId:I

    .line 72
    invoke-super {p0, v0}, Lcom/android/settings/AsyncTaskSidecar;->run(Ljava/lang/Object;)V

    return-void
.end method
