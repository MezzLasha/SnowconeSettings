.class public final synthetic Lcom/android/settings/security/-$$Lambda$CredentialManagementAppHeaderController$yhyZYkoCv4OXzVgA0Ojz9ONdvAw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/security/CredentialManagementAppHeaderController;

.field public final synthetic f$1:Landroidx/preference/PreferenceScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/security/CredentialManagementAppHeaderController;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppHeaderController$yhyZYkoCv4OXzVgA0Ojz9ONdvAw;->f$0:Lcom/android/settings/security/CredentialManagementAppHeaderController;

    iput-object p2, p0, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppHeaderController$yhyZYkoCv4OXzVgA0Ojz9ONdvAw;->f$1:Landroidx/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppHeaderController$yhyZYkoCv4OXzVgA0Ojz9ONdvAw;->f$0:Lcom/android/settings/security/CredentialManagementAppHeaderController;

    iget-object p0, p0, Lcom/android/settings/security/-$$Lambda$CredentialManagementAppHeaderController$yhyZYkoCv4OXzVgA0Ojz9ONdvAw;->f$1:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Lcom/android/settings/security/CredentialManagementAppHeaderController;->lambda$displayPreference$0$CredentialManagementAppHeaderController(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method
