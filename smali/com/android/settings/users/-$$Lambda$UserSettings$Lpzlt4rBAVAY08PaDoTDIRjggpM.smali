.class public final synthetic Lcom/android/settings/users/-$$Lambda$UserSettings$Lpzlt4rBAVAY08PaDoTDIRjggpM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/users/UserSettings;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$2:Landroid/content/pm/UserInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/UserSettings;Landroid/graphics/drawable/Drawable;Landroid/content/pm/UserInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$Lpzlt4rBAVAY08PaDoTDIRjggpM;->f$0:Lcom/android/settings/users/UserSettings;

    iput-object p2, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$Lpzlt4rBAVAY08PaDoTDIRjggpM;->f$1:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$Lpzlt4rBAVAY08PaDoTDIRjggpM;->f$2:Landroid/content/pm/UserInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$Lpzlt4rBAVAY08PaDoTDIRjggpM;->f$0:Lcom/android/settings/users/UserSettings;

    iget-object v1, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$Lpzlt4rBAVAY08PaDoTDIRjggpM;->f$1:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$Lpzlt4rBAVAY08PaDoTDIRjggpM;->f$2:Landroid/content/pm/UserInfo;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/settings/users/UserSettings;->lambda$buildEditCurrentUserDialog$1$UserSettings(Landroid/graphics/drawable/Drawable;Landroid/content/pm/UserInfo;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
