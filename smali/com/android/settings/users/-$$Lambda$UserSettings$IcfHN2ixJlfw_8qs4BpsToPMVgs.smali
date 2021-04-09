.class public final synthetic Lcom/android/settings/users/-$$Lambda$UserSettings$IcfHN2ixJlfw_8qs4BpsToPMVgs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/users/UserSettings;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$IcfHN2ixJlfw_8qs4BpsToPMVgs;->f$0:Lcom/android/settings/users/UserSettings;

    iput p2, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$IcfHN2ixJlfw_8qs4BpsToPMVgs;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$IcfHN2ixJlfw_8qs4BpsToPMVgs;->f$0:Lcom/android/settings/users/UserSettings;

    iget p0, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$IcfHN2ixJlfw_8qs4BpsToPMVgs;->f$1:I

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/users/UserSettings;->lambda$buildAddUserDialog$2$UserSettings(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
