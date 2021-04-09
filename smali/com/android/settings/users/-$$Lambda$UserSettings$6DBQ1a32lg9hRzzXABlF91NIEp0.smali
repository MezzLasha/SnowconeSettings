.class public final synthetic Lcom/android/settings/users/-$$Lambda$UserSettings$6DBQ1a32lg9hRzzXABlF91NIEp0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/users/UserSettings;

.field public final synthetic f$1:Landroid/content/pm/UserInfo;

.field public final synthetic f$2:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$6DBQ1a32lg9hRzzXABlF91NIEp0;->f$0:Lcom/android/settings/users/UserSettings;

    iput-object p2, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$6DBQ1a32lg9hRzzXABlF91NIEp0;->f$1:Landroid/content/pm/UserInfo;

    iput-object p3, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$6DBQ1a32lg9hRzzXABlF91NIEp0;->f$2:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$6DBQ1a32lg9hRzzXABlF91NIEp0;->f$0:Lcom/android/settings/users/UserSettings;

    iget-object v1, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$6DBQ1a32lg9hRzzXABlF91NIEp0;->f$1:Landroid/content/pm/UserInfo;

    iget-object p0, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$6DBQ1a32lg9hRzzXABlF91NIEp0;->f$2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/users/UserSettings;->lambda$buildEditCurrentUserDialog$0$UserSettings(Landroid/content/pm/UserInfo;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
