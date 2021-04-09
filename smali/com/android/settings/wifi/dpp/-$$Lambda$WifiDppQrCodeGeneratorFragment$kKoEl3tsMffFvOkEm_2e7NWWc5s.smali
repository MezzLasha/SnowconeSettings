.class public final synthetic Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeGeneratorFragment$kKoEl3tsMffFvOkEm_2e7NWWc5s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;Landroid/content/Intent;Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeGeneratorFragment$kKoEl3tsMffFvOkEm_2e7NWWc5s;->f$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeGeneratorFragment$kKoEl3tsMffFvOkEm_2e7NWWc5s;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeGeneratorFragment$kKoEl3tsMffFvOkEm_2e7NWWc5s;->f$2:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeGeneratorFragment$kKoEl3tsMffFvOkEm_2e7NWWc5s;->f$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeGeneratorFragment$kKoEl3tsMffFvOkEm_2e7NWWc5s;->f$1:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeGeneratorFragment$kKoEl3tsMffFvOkEm_2e7NWWc5s;->f$2:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->lambda$onViewCreated$0$WifiDppQrCodeGeneratorFragment(Landroid/content/Intent;Lcom/android/settings/wifi/dpp/WifiNetworkConfig;Landroid/view/View;)V

    return-void
.end method
