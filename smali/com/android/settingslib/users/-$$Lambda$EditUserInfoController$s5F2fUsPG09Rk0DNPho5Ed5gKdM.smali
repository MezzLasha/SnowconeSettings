.class public final synthetic Lcom/android/settingslib/users/-$$Lambda$EditUserInfoController$s5F2fUsPG09Rk0DNPho5Ed5gKdM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/users/EditUserInfoController;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/users/EditUserInfoController;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/users/-$$Lambda$EditUserInfoController$s5F2fUsPG09Rk0DNPho5Ed5gKdM;->f$0:Lcom/android/settingslib/users/EditUserInfoController;

    iput-object p2, p0, Lcom/android/settingslib/users/-$$Lambda$EditUserInfoController$s5F2fUsPG09Rk0DNPho5Ed5gKdM;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/users/-$$Lambda$EditUserInfoController$s5F2fUsPG09Rk0DNPho5Ed5gKdM;->f$0:Lcom/android/settingslib/users/EditUserInfoController;

    iget-object p0, p0, Lcom/android/settingslib/users/-$$Lambda$EditUserInfoController$s5F2fUsPG09Rk0DNPho5Ed5gKdM;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1}, Lcom/android/settingslib/users/EditUserInfoController;->lambda$buildDialog$2$EditUserInfoController(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method
