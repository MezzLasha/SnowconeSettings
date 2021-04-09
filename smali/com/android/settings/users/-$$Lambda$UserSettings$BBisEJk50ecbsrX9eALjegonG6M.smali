.class public final synthetic Lcom/android/settings/users/-$$Lambda$UserSettings$BBisEJk50ecbsrX9eALjegonG6M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$BBisEJk50ecbsrX9eALjegonG6M;->f$0:Lcom/android/settings/users/UserSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$BBisEJk50ecbsrX9eALjegonG6M;->f$0:Lcom/android/settings/users/UserSettings;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->lambda$buildAddUserDialog$3$UserSettings()V

    return-void
.end method
