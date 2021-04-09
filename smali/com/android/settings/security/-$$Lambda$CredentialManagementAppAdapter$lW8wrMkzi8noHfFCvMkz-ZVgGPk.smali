.class public final synthetic Lcom/android/settings/security/-$$Lambda$CredentialManagementAppAdapter$lW8wrMkzi8noHfFCvMkz-ZVgGPk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/security/CredentialManagementAppAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/security/CredentialManagementAppAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppAdapter$lW8wrMkzi8noHfFCvMkz-ZVgGPk;->f$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppAdapter$lW8wrMkzi8noHfFCvMkz-ZVgGPk;->f$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/security/CredentialManagementAppAdapter;->lambda$sortPackageNames$0$CredentialManagementAppAdapter(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
