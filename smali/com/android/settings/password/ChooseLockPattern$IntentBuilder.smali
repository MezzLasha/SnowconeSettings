.class public Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockPattern;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string p0, "extra_require_password"

    const/4 p1, 0x0

    .line 106
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "confirm_credentials"

    .line 107
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setForBiometrics(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "for_biometrics"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setForFace(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "for_face"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setForFingerprint(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "for_fingerprint"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setPattern(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "unification_profile_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v0, "unification_profile_credential"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "request_gk_pw_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setUserId(I)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method
