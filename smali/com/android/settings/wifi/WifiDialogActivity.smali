.class public Lcom/android/settings/wifi/WifiDialogActivity;
.super Lcom/android/settingslib/core/lifecycle/ObservableActivity;
.source "WifiDialogActivity.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;
.implements Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field static final KEY_CONNECT_FOR_CALLER:Ljava/lang/String; = "connect_for_caller"


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDialog2:Lcom/android/settings/wifi/WifiDialog2;

.field private mIntent:Landroid/content/Intent;

.field private mIsWifiTrackerLib:Z

.field private mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 187
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 333
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 340
    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIntent:Landroid/content/Intent;

    .line 107
    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isSetupWizardIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIntent:Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/android/settings/SetupWizardUtils;->getTransparentTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIntent:Landroid/content/Intent;

    const-string v0, "key_chosen_wifientry_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIsWifiTrackerLib:Z

    if-eqz p1, :cond_1

    .line 116
    new-instance p1, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiDialogActivity{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {p1, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mWorkerThread:Landroid/os/HandlerThread;

    .line 119
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 120
    new-instance v8, Lcom/android/settings/wifi/WifiDialogActivity$1;

    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v8, p0, p1}, Lcom/android/settings/wifi/WifiDialogActivity$1;-><init>(Lcom/android/settings/wifi/WifiDialogActivity;Ljava/time/ZoneId;)V

    .line 126
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProvider;

    move-result-object v3

    .line 129
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    new-instance v6, Landroid/os/Handler;

    .line 131
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v6, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mWorkerThread:Landroid/os/HandlerThread;

    .line 132
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v9, 0x3a98

    const-wide/16 v11, 0x2710

    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIntent:Landroid/content/Intent;

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v5, p0

    .line 128
    invoke-interface/range {v3 .. v13}, Lcom/android/settings/wifi/WifiTrackerLibProvider;->createNetworkDetailsTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    goto :goto_0

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIntent:Landroid/content/Intent;

    const-string v0, "access_point_state"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 140
    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 192
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIsWifiTrackerLib:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog2:Lcom/android/settings/wifi/WifiDialog2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog2:Lcom/android/settings/wifi/WifiDialog2;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 195
    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog2:Lcom/android/settings/wifi/WifiDialog2;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 201
    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 205
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 308
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog2:Lcom/android/settings/wifi/WifiDialog2;

    .line 309
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->finish()V

    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 1

    .line 210
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController2;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canForget()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V

    :cond_0
    const/4 p1, 0x2

    .line 215
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->finish()V

    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 3

    .line 221
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 222
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 224
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_0

    .line 229
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to forget invalid network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDialogActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 239
    :cond_2
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_3

    .line 241
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 242
    invoke-virtual {p1, v1}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    const-string p1, "access_point_state"

    .line 243
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    const/4 p1, 0x2

    .line 245
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->finish()V

    return-void
.end method

.method public onScan(Lcom/android/settings/wifi/WifiDialog2;Ljava/lang/String;)V
    .locals 0

    .line 315
    invoke-static {p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getEnrolleeQrCodeScannerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 316
    iget-object p2, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIntent:Landroid/content/Intent;

    invoke-static {p2, p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const/4 p2, 0x0

    .line 319
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onScan(Lcom/android/settings/wifi/WifiDialog;Ljava/lang/String;)V
    .locals 0

    .line 324
    invoke-static {p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getEnrolleeQrCodeScannerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 325
    iget-object p2, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIntent:Landroid/content/Intent;

    invoke-static {p2, p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const/4 p2, 0x0

    .line 328
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 147
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStart()V

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog2:Lcom/android/settings/wifi/WifiDialog2;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 153
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    sget v0, Lcom/android/settings/R$style;->SuwAlertDialogThemeCompat_DayNight:I

    goto :goto_0

    .line 155
    :cond_1
    sget v0, Lcom/android/settings/R$style;->SuwAlertDialogThemeCompat_Light:I

    .line 156
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIsWifiTrackerLib:Z

    if-eqz v2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    .line 158
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v2

    .line 157
    invoke-static {p0, p0, v2, v1, v0}, Lcom/android/settings/wifi/WifiDialog2;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;II)Lcom/android/settings/wifi/WifiDialog2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog2:Lcom/android/settings/wifi/WifiDialog2;

    goto :goto_1

    .line 161
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p0, p0, v2, v1, v0}, Lcom/android/settings/wifi/WifiDialog;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;II)Lcom/android/settings/wifi/WifiDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_1

    .line 165
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIsWifiTrackerLib:Z

    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    .line 167
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    .line 166
    invoke-static {p0, p0, v0, v1}, Lcom/android/settings/wifi/WifiDialog2;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;I)Lcom/android/settings/wifi/WifiDialog2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog2:Lcom/android/settings/wifi/WifiDialog2;

    goto :goto_1

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p0, p0, v0, v1}, Lcom/android/settings/wifi/WifiDialog;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 174
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIsWifiTrackerLib:Z

    if-eqz v0, :cond_5

    .line 175
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog2:Lcom/android/settings/wifi/WifiDialog2;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog2:Lcom/android/settings/wifi/WifiDialog2;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_2

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 4

    .line 251
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController2;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    .line 252
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 254
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "connect_for_caller"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    goto :goto_0

    .line 258
    :cond_0
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 262
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_2

    const-string v1, "wifi_configuration"

    .line 264
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 266
    :cond_2
    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->finish()V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 5

    .line 272
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 273
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p1

    .line 274
    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 276
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "connect_for_caller"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    .line 278
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    if-eqz p1, :cond_2

    .line 285
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 286
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 287
    :cond_1
    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 293
    :cond_2
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_3

    .line 295
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 296
    invoke-virtual {p1, v2}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    const-string p1, "access_point_state"

    .line 297
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    if-eqz v0, :cond_4

    const-string p1, "wifi_configuration"

    .line 300
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 302
    :cond_4
    invoke-virtual {p0, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->finish()V

    return-void
.end method
