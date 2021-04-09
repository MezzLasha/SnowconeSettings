.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$DnEQsXdoWfagMGX6QWn58B4lEXE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$DnEQsXdoWfagMGX6QWn58B4lEXE;->f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$DnEQsXdoWfagMGX6QWn58B4lEXE;->f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->lambda$updateWifiEntries$4$NetworkRequestDialogFragment(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method
