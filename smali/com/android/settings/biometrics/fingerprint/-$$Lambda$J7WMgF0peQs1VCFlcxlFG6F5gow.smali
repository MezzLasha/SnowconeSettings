.class public final synthetic Lcom/android/settings/biometrics/fingerprint/-$$Lambda$J7WMgF0peQs1VCFlcxlFG6F5gow;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$J7WMgF0peQs1VCFlcxlFG6F5gow;->f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$J7WMgF0peQs1VCFlcxlFG6F5gow;->f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->onNextButtonClick(Landroid/view/View;)V

    return-void
.end method
