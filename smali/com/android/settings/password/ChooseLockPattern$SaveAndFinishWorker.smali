.class public Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;
.super Lcom/android/settings/password/SaveChosenLockWorkerBase;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

.field private mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

.field private mLockVirgin:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 899
    invoke-direct {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected finish(Landroid/content/Intent;)V
    .locals 3

    .line 950
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 954
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 899
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected saveAndVerifyInBackground()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 922
    iget v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    .line 923
    iget-object v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->unifyProfileCredentialIfRequested()V

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 929
    iget-boolean v3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mRequestGatekeeperPassword:Z

    if-eqz v3, :cond_3

    .line 933
    iget-object v2, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    .line 936
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->containsGatekeeperPasswordHandle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 937
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "critical: bad response or missing GK PW handle for known good pattern: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ChooseLockPattern"

    .line 937
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 943
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    move-result-wide v3

    const-string p0, "gk_pw_handle"

    .line 942
    invoke-virtual {v2, p0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 945
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setBlocking(Z)V
    .locals 0

    .line 899
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setBlocking(Z)V

    return-void
.end method

.method public bridge synthetic setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V
    .locals 0

    .line 899
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    return-void
.end method

.method public bridge synthetic setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)V
    .locals 0

    .line 899
    invoke-super {p0, p1, p2}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)V

    return-void
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZLcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 0

    .line 908
    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZI)V

    if-eqz p5, :cond_0

    goto :goto_0

    .line 911
    :cond_0
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p5

    :goto_0
    iput-object p5, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 912
    iput-object p4, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    .line 913
    iput p6, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    .line 915
    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p6}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    .line 917
    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->start()V

    return-void
.end method
