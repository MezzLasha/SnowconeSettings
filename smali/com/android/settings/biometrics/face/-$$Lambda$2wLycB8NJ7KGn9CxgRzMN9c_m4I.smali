.class public final synthetic Lcom/android/settings/biometrics/face/-$$Lambda$2wLycB8NJ7KGn9CxgRzMN9c_m4I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/-$$Lambda$2wLycB8NJ7KGn9CxgRzMN9c_m4I;->f$0:Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/-$$Lambda$2wLycB8NJ7KGn9CxgRzMN9c_m4I;->f$0:Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->onSkipButtonClick(Landroid/view/View;)V

    return-void
.end method
