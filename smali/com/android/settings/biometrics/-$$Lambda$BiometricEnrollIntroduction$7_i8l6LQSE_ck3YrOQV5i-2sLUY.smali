.class public final synthetic Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollIntroduction$7_i8l6LQSE_ck3YrOQV5i-2sLUY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/BiometricEnrollIntroduction;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollIntroduction$7_i8l6LQSE_ck3YrOQV5i-2sLUY;->f$0:Lcom/android/settings/biometrics/BiometricEnrollIntroduction;

    iput-object p2, p0, Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollIntroduction$7_i8l6LQSE_ck3YrOQV5i-2sLUY;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onChallengeGenerated(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollIntroduction$7_i8l6LQSE_ck3YrOQV5i-2sLUY;->f$0:Lcom/android/settings/biometrics/BiometricEnrollIntroduction;

    iget-object p0, p0, Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollIntroduction$7_i8l6LQSE_ck3YrOQV5i-2sLUY;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->lambda$onActivityResult$1$BiometricEnrollIntroduction(Landroid/content/Intent;IJ)V

    return-void
.end method
