.class public Lcom/android/settings/wifi/WifiNoInternetDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiNoInternetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAction:Ljava/lang/String;

.field mAlwaysAllow:Landroid/widget/CheckBox;

.field private mButtonClicked:Z

.field private mCM:Landroid/net/ConnectivityManager;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/net/Network;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method private createDialog()V
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    sget v1, Lcom/android/settings/R$drawable;->ic_settings_wireless:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 137
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    const-string v2, "android.net.conn.PROMPT_UNVALIDATED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "android.net.conn.PROMPT_PARTIAL_CONNECTIVITY"

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 139
    sget v1, Lcom/android/settings/R$string;->no_internet_access_text:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 140
    sget v1, Lcom/android/settings/R$string;->yes:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 141
    sget v1, Lcom/android/settings/R$string;->no:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 144
    sget v1, Lcom/android/settings/R$string;->partial_connectivity_text:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 145
    sget v1, Lcom/android/settings/R$string;->yes:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 146
    sget v1, Lcom/android/settings/R$string;->no:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 148
    :cond_1
    sget v1, Lcom/android/settings/R$string;->lost_internet_access_title:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 149
    sget v1, Lcom/android/settings/R$string;->lost_internet_access_text:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 150
    sget v1, Lcom/android/settings/R$string;->lost_internet_access_switch:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 151
    sget v1, Lcom/android/settings/R$string;->lost_internet_access_cancel:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 153
    :goto_0
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 154
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 156
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x1090034

    const/4 v5, 0x0

    .line 157
    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 159
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v0, 0x10201d0

    .line 160
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlwaysAllow:Landroid/widget/CheckBox;

    .line 162
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    .line 163
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlwaysAllow:Landroid/widget/CheckBox;

    sget v1, Lcom/android/settings/R$string;->lost_internet_access_persist:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 164
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlwaysAllow:Landroid/widget/CheckBox;

    sget v1, Lcom/android/settings/R$string;->no_internet_access_remember:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method

.method private isKnownAction(Landroid/content/Intent;)Z
    .locals 1

    .line 63
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.net.conn.PROMPT_UNVALIDATED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 64
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.net.conn.PROMPT_LOST_VALIDATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 65
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.net.conn.PROMPT_PARTIAL_CONNECTIVITY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 p1, -0x1

    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    if-eq p2, p1, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlwaysAllow:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    .line 201
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mButtonClicked:Z

    .line 203
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    const-string v3, "android.net.conn.PROMPT_UNVALIDATED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Connect"

    const-string v4, "Ignore"

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 207
    :goto_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, p2, v1, v0}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    const-string p1, "NO_INTERNET"

    goto :goto_8

    .line 208
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    const-string v6, "android.net.conn.PROMPT_PARTIAL_CONNECTIVITY"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-ne p2, p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v5

    :goto_2
    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v3, v4

    .line 212
    :goto_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, p2, v1, v0}, Landroid/net/ConnectivityManager;->setAcceptPartialConnectivity(Landroid/net/Network;ZZ)V

    const-string p1, "PARTIAL_CONNECTIVITY"

    goto :goto_8

    :cond_6
    if-ne p2, p1, :cond_7

    goto :goto_4

    :cond_7
    move v1, v5

    :goto_4
    if-eqz v1, :cond_8

    const-string p1, "Switch away"

    goto :goto_5

    :cond_8
    const-string p1, "Get stuck"

    :goto_5
    move-object v3, p1

    if-eqz v0, :cond_a

    .line 218
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object p1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz v1, :cond_9

    const-string p2, "1"

    goto :goto_6

    :cond_9
    const-string p2, "0"

    :goto_6
    const-string v1, "network_avoid_bad_wifi"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    :cond_a
    if-eqz v1, :cond_b

    .line 221
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->setAvoidUnvalidated(Landroid/net/Network;)V

    :cond_b
    :goto_7
    const-string p1, "LOST_INTERNET"

    .line 224
    :goto_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " network="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_c

    const-string p0, " and remember"

    goto :goto_9

    :cond_c
    const-string p0, ""

    .line 225
    :goto_9
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiNoInternetDialog"

    .line 224
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 70
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "WifiNoInternetDialog"

    if-eqz p1, :cond_5

    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->isKnownAction(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "netId"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    .line 82
    :try_start_0
    new-instance v1, Landroid/net/Network;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/net/Network;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 84
    iput-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    if-nez v1, :cond_1

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t determine network from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' , exiting"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 95
    :cond_1
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 96
    new-instance v1, Lcom/android/settings/wifi/WifiNoInternetDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiNoInternetDialog$1;-><init>(Lcom/android/settings/wifi/WifiNoInternetDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const-string v1, "connectivity"

    .line 115
    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    .line 116
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, p1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 118
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 119
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz p1, :cond_4

    .line 120
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_2

    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 127
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    .line 130
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->createDialog()V

    return-void

    .line 121
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 74
    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", exiting"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mButtonClicked:Z

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    const-string v1, "android.net.conn.PROMPT_PARTIAL_CONNECTIVITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v2, v1, v1}, Landroid/net/ConnectivityManager;->setAcceptPartialConnectivity(Landroid/net/Network;ZZ)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    const-string v2, "android.net.conn.PROMPT_UNVALIDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v2, v1, v1}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 192
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method
