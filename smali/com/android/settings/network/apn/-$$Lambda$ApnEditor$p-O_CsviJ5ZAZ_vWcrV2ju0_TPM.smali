.class public final synthetic Lcom/android/settings/network/apn/-$$Lambda$ApnEditor$p-O_CsviJ5ZAZ_vWcrV2ju0_TPM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/apn/ApnEditor;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/apn/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/apn/-$$Lambda$ApnEditor$p-O_CsviJ5ZAZ_vWcrV2ju0_TPM;->f$0:Lcom/android/settings/network/apn/ApnEditor;

    iput-object p2, p0, Lcom/android/settings/network/apn/-$$Lambda$ApnEditor$p-O_CsviJ5ZAZ_vWcrV2ju0_TPM;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/settings/network/apn/-$$Lambda$ApnEditor$p-O_CsviJ5ZAZ_vWcrV2ju0_TPM;->f$2:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/apn/-$$Lambda$ApnEditor$p-O_CsviJ5ZAZ_vWcrV2ju0_TPM;->f$0:Lcom/android/settings/network/apn/ApnEditor;

    iget-object v1, p0, Lcom/android/settings/network/apn/-$$Lambda$ApnEditor$p-O_CsviJ5ZAZ_vWcrV2ju0_TPM;->f$1:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/network/apn/-$$Lambda$ApnEditor$p-O_CsviJ5ZAZ_vWcrV2ju0_TPM;->f$2:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/apn/ApnEditor;->lambda$updateApnDataToDatabase$0$ApnEditor(Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method
