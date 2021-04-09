.class public final synthetic Lcom/android/settings/security/-$$Lambda$CredentialManagementAppPreferenceController$vqAMPq1OjcCYIp45UdTrHavb6-k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/security/CredentialManagementAppPreferenceController;

.field public final synthetic f$1:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/security/CredentialManagementAppPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppPreferenceController$vqAMPq1OjcCYIp45UdTrHavb6-k;->f$0:Lcom/android/settings/security/CredentialManagementAppPreferenceController;

    iput-object p2, p0, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppPreferenceController$vqAMPq1OjcCYIp45UdTrHavb6-k;->f$1:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppPreferenceController$vqAMPq1OjcCYIp45UdTrHavb6-k;->f$0:Lcom/android/settings/security/CredentialManagementAppPreferenceController;

    iget-object p0, p0, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppPreferenceController$vqAMPq1OjcCYIp45UdTrHavb6-k;->f$1:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Lcom/android/settings/security/CredentialManagementAppPreferenceController;->lambda$updateState$1$CredentialManagementAppPreferenceController(Landroidx/preference/Preference;)V

    return-void
.end method
