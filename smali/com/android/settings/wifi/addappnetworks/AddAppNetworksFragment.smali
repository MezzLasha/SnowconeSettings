.class public Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "AddAppNetworksFragment.java"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItemAdapter;,
        Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;
    }
.end annotation


# static fields
.field static final INITIAL_RSSI_SIGNAL_LEVEL:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MESSAGE_SHOW_SAVED_AND_CONNECT_NETWORK:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MESSAGE_SHOW_SAVE_FAILED:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MESSAGE_START_SAVING_NETWORK:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final RESULT_NETWORK_ALREADY_EXISTS:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final RESULT_NETWORK_SUCCESS:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field mActivity:Landroidx/fragment/app/FragmentActivity;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mAllSpecifiedNetworksList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private mAnyNetworkSavedSuccess:Z

.field mCallingPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mCancelButton:Landroid/widget/Button;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIsSingleNetwork:Z

.field mLayoutView:Landroid/view/View;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mResultCodeArrayList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSaveButton:Landroid/widget/Button;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSavingIndex:I

.field private mSingleNetworkProcessingStatusView:Landroid/widget/TextView;

.field private mSummaryView:Landroid/widget/TextView;

.field private mUiConfigurationItemAdapter:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItemAdapter;

.field mUiToRequestedList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mWorkerThread:Landroid/os/HandlerThread;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 139
    new-instance v0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$1;-><init>(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSavingIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSavingIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mIsSingleNetwork:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->connectNetwork(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;ILjava/util/List;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->finishWithResult(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mAnyNetworkSavedSuccess:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;)Z
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->saveNextNetwork()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->showSavedOrFail()V

    return-void
.end method

.method private addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 427
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 431
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    const-string v1, "\""

    if-lt p0, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    .line 435
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private assignAppIcon(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 454
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->loadPackageIconDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 455
    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mLayoutView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->app_icon:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private assignTitleAndSummary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mLayoutView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->app_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSummaryView:Landroid/widget/TextView;

    .line 475
    invoke-static {p1, p2}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 474
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->getAddNetworkRequesterSummary(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private connectNetwork(I)V
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiToRequestedList:Ljava/util/List;

    .line 669
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;

    iget-object p1, p1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;->mWifiNetworkSuggestion:Landroid/net/wifi/WifiNetworkSuggestion;

    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSuggestion;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 670
    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method private finishWithResult(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 674
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 679
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 680
    check-cast p2, Ljava/util/ArrayList;

    const-string v1, "android.provider.extra.WIFI_NETWORK_RESULT_LIST"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 682
    iget-object p2, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 684
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getAddNetworkRequesterSummary(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 479
    iget-boolean v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mIsSingleNetwork:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->wifi_add_app_single_network_summary:I

    goto :goto_0

    .line 480
    :cond_0
    sget v0, Lcom/android/settings/R$string;->wifi_add_app_networks_summary:I

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 479
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mIsSingleNetwork:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->wifi_add_app_single_network_title:I

    goto :goto_0

    .line 485
    :cond_0
    sget v0, Lcom/android/settings/R$string;->wifi_add_app_networks_title:I

    .line 484
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWepKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1

    .line 318
    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz p0, :cond_0

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v0, p1

    if-ge p0, v0, :cond_0

    .line 319
    aget-object p0, p1, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private initializeResultCodeArray()V
    .locals 5

    .line 309
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mAllSpecifiedNetworksList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mResultCodeArrayList:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 313
    iget-object v3, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mResultCodeArrayList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isSavedPasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z
    .locals 1

    .line 324
    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getPasspointConfigurations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/wifi/addappnetworks/-$$Lambda$AddAppNetworksFragment$ciapeEC0hRjN12M7_96UzdtAEtc;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/addappnetworks/-$$Lambda$AddAppNetworksFragment$ciapeEC0hRjN12M7_96UzdtAEtc;-><init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    .line 325
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 326
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 327
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method private isSavedWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)Z"
        }
    .end annotation

    .line 332
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    .line 335
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 338
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3

    const/16 v4, 0x8

    if-eq v1, v4, :cond_3

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    return v3

    .line 355
    :cond_3
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    .line 347
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->getWepKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p1

    .line 348
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->getWepKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p0

    .line 349
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$getCancelClickListener$1(Landroid/view/View;)V
    .locals 1

    const-string p1, "AddAppNetworksFragment"

    const-string v0, "User rejected to add network"

    .line 490
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 491
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->finishWithResult(ILjava/util/List;)V

    return-void
.end method

.method private synthetic lambda$getSaveClickListener$2(Landroid/view/View;)V
    .locals 1

    const-string p1, "AddAppNetworksFragment"

    const-string v0, "User agree to add networks"

    .line 497
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 500
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic lambda$isSavedPasspointConfiguration$0(Landroid/net/wifi/hotspot2/PasspointConfiguration;Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z
    .locals 0

    .line 325
    invoke-virtual {p1, p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$updateScanResultsToUi$3(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 771
    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;->mWifiNetworkSuggestion:Landroid/net/wifi/WifiNetworkSuggestion;

    .line 772
    invoke-virtual {p0}, Landroid/net/wifi/WifiNetworkSuggestion;->getSsid()Ljava/lang/String;

    move-result-object p0

    .line 773
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p1

    .line 771
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private loadPackageIconDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 461
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AddAppNetworksFragment"

    const-string p2, "Cannot get application icon"

    .line 463
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private prepareSaveResultListener()V
    .locals 1

    .line 577
    new-instance v0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$3;-><init>(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-void
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 442
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 445
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    .line 446
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    sub-int/2addr v0, v1

    .line 447
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 448
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private saveNextNetwork()Z
    .locals 3

    .line 611
    iget-boolean v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mIsSingleNetwork:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSavingIndex:I

    iget-object v1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiToRequestedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 612
    iget v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSavingIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSavingIndex:I

    .line 613
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->saveNetwork(I)V

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private showSavedOrFail()V
    .locals 3

    .line 626
    iget-boolean v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mAnyNetworkSavedSuccess:Z

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 634
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateSingleNetworkSignalIcon(I)V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 419
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getWifiIconResource(I)I

    move-result p1

    .line 418
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 419
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 420
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 421
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x1010429

    .line 422
    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 421
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 423
    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mLayoutView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->signal_strength:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method createContent(Landroid/os/Bundle;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AddAppNetworksFragment"

    const-string p1, "Network saving, ignore new intent"

    .line 241
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "android.provider.extra.WIFI_NETWORK_LIST"

    .line 246
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mAllSpecifiedNetworksList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 250
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mAllSpecifiedNetworksList:Ljava/util/List;

    .line 251
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_1

    goto/16 :goto_1

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->initializeResultCodeArray()V

    .line 259
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->filterSavedNetworks(Ljava/util/List;)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiToRequestedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, -0x1

    .line 263
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mResultCodeArrayList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->finishWithResult(ILjava/util/List;)V

    return-void

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mAllSpecifiedNetworksList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne v0, v2, :cond_3

    .line 268
    iput-boolean v2, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mIsSingleNetwork:Z

    .line 271
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mLayoutView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->multiple_networks:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mLayoutView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->single_network:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->updateSingleNetworkSignalIcon(I)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mLayoutView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->single_ssid:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiToRequestedList:Ljava/util/List;

    .line 278
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;

    iget-object v1, v1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;->mDisplayedSsid:Ljava/lang/String;

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSingleNetworkProcessingStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 283
    :cond_3
    iput-boolean v1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mIsSingleNetwork:Z

    .line 286
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mLayoutView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->single_network:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mLayoutView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->multiple_networks:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiConfigurationItemAdapter:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItemAdapter;

    if-nez v0, :cond_4

    .line 291
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mLayoutView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->config_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 292
    new-instance v1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItemAdapter;

    iget-object v2, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    sget v3, Lcom/android/settingslib/R$layout;->preference_access_point:I

    iget-object v4, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiToRequestedList:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItemAdapter;-><init>(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiConfigurationItemAdapter:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItemAdapter;

    .line 295
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 297
    :cond_4
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :goto_0
    const-string v0, "panel_calling_package_name"

    .line 303
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mCallingPackageName:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->assignAppIcon(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mCallingPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->assignTitleAndSummary(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 252
    invoke-direct {p0, v1, p1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->finishWithResult(ILjava/util/List;)V

    return-void
.end method

.method filterSavedNetworks(Ljava/util/List;)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiToRequestedList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiToRequestedList:Ljava/util/List;

    goto :goto_0

    .line 379
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 383
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mAllSpecifiedNetworksList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiNetworkSuggestion;

    .line 391
    invoke-virtual {v3}, Landroid/net/wifi/WifiNetworkSuggestion;->getPasspointConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 393
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->isSavedPasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z

    move-result v5

    .line 394
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 396
    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiNetworkSuggestion;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 397
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 398
    invoke-direct {p0, v4, p1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->isSavedWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z

    move-result v4

    move-object v6, v5

    move v5, v4

    move-object v4, v6

    :goto_2
    if-eqz v5, :cond_2

    .line 405
    iget-object v3, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mResultCodeArrayList:Ljava/util/List;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 408
    :cond_2
    new-instance v5, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;

    invoke-direct {v5, v4, v3, v2, v1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;-><init>(Ljava/lang/String;Landroid/net/wifi/WifiNetworkSuggestion;II)V

    .line 410
    iget-object v3, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiToRequestedList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method getCancelClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 489
    new-instance v0, Lcom/android/settings/wifi/addappnetworks/-$$Lambda$AddAppNetworksFragment$VAyOsBrdGqVqSuOlzvX0d0wpwzg;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/addappnetworks/-$$Lambda$AddAppNetworksFragment$VAyOsBrdGqVqSuOlzvX0d0wpwzg;-><init>(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x711

    return p0
.end method

.method getSaveClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 496
    new-instance v0, Lcom/android/settings/wifi/addappnetworks/-$$Lambda$AddAppNetworksFragment$iYp18rxW1mQAc-eeJzmMBdl53II;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/addappnetworks/-$$Lambda$AddAppNetworksFragment$iYp18rxW1mQAc-eeJzmMBdl53II;-><init>(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;)V

    return-object v0
.end method

.method public synthetic lambda$getCancelClickListener$1$AddAppNetworksFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->lambda$getCancelClickListener$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$getSaveClickListener$2$AddAppNetworksFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->lambda$getSaveClickListener$2(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 182
    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 183
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddAppNetworksFragment{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
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

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 186
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 187
    new-instance v5, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$2;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$2;-><init>(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;Ljava/time/ZoneId;)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProvider;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v3, Landroid/os/Handler;

    .line 196
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v4, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 197
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x3a98

    const-wide/16 v8, 0x2710

    move-object v10, p0

    .line 195
    invoke-interface/range {v0 .. v10}, Lcom/android/settings/wifi/WifiTrackerLibProvider;->createWifiPickerTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)Lcom/android/wifitrackerlib/WifiPickerTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 202
    sget v0, Lcom/android/settings/R$layout;->wifi_add_app_networks:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 209
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    return-void
.end method

.method public onNumSavedNetworksChanged()V
    .locals 0

    return-void
.end method

.method public onNumSavedSubscriptionsChanged()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 791
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 792
    invoke-virtual {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->onWifiEntriesChanged()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 214
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 217
    iput-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mLayoutView:Landroid/view/View;

    .line 218
    sget p2, Lcom/android/settings/R$id;->cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mCancelButton:Landroid/widget/Button;

    .line 219
    sget p2, Lcom/android/settings/R$id;->save:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSaveButton:Landroid/widget/Button;

    .line 220
    sget p2, Lcom/android/settings/R$id;->app_summary:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSummaryView:Landroid/widget/TextView;

    .line 221
    sget p2, Lcom/android/settings/R$id;->single_status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSingleNetworkProcessingStatusView:Landroid/widget/TextView;

    .line 223
    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->getCancelClickListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->getSaveClickListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-direct {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->prepareSaveResultListener()V

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->createContent(Landroid/os/Bundle;)V

    return-void
.end method

.method public onWifiEntriesChanged()V
    .locals 0

    .line 806
    invoke-virtual {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->updateScanResultsToUi()V

    return-void
.end method

.method public onWifiStateChanged()V
    .locals 0

    .line 798
    invoke-virtual {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->onWifiEntriesChanged()V

    return-void
.end method

.method saveNetwork(I)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiToRequestedList:Ljava/util/List;

    .line 643
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;

    iget-object v0, v0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;->mWifiNetworkSuggestion:Landroid/net/wifi/WifiNetworkSuggestion;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNetworkSuggestion;->getPasspointConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 647
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    .line 648
    iput-boolean v1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mAnyNetworkSavedSuccess:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 650
    :catch_0
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mResultCodeArrayList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiToRequestedList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;

    iget p1, p1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;->mIndex:I

    .line 651
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 650
    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 654
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->saveNextNetwork()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 658
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->showSavedOrFail()V

    goto :goto_1

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiToRequestedList:Ljava/util/List;

    .line 661
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;

    iget-object p1, p1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;->mWifiNetworkSuggestion:Landroid/net/wifi/WifiNetworkSuggestion;

    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSuggestion;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 662
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :goto_1
    return-void
.end method

.method showSaveStatusByState(I)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 725
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mIsSingleNetwork:Z

    const v0, 0x1010543

    if-eqz p1, :cond_1

    .line 727
    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSingleNetworkProcessingStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 728
    invoke-static {v1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 727
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 730
    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSingleNetworkProcessingStatusView:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->wifi_add_app_network_save_failed_summary:I

    .line 731
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 730
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 734
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSummaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 735
    invoke-static {v1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 734
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 737
    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSummaryView:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->wifi_add_app_network_save_failed_summary:I

    .line 738
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 737
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 715
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mIsSingleNetwork:Z

    if-eqz p1, :cond_3

    .line 716
    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSingleNetworkProcessingStatusView:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->wifi_add_app_single_network_saved_summary:I

    .line 717
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 716
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 719
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSummaryView:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->wifi_add_app_networks_saved_summary:I

    .line 720
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 719
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 696
    :cond_4
    iget-boolean p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mIsSingleNetwork:Z

    const/4 v1, 0x0

    const v2, 0x1010038

    if-eqz p1, :cond_5

    .line 698
    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSingleNetworkProcessingStatusView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 699
    invoke-static {v0, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 698
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 701
    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSingleNetworkProcessingStatusView:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->wifi_add_app_single_network_saving_summary:I

    .line 702
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 701
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSingleNetworkProcessingStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 705
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSummaryView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 706
    invoke-static {v3, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 705
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 708
    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSummaryView:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->wifi_add_app_networks_saving_summary:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiToRequestedList:Ljava/util/List;

    .line 710
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 709
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 708
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method updateScanResultsToUi()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiToRequestedList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 758
    iget-object v1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 759
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v0

    .line 760
    iget-object v1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 762
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiToRequestedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;

    .line 768
    iput v3, v2, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;->mLevel:I

    if-eqz v0, :cond_2

    .line 770
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/settings/wifi/addappnetworks/-$$Lambda$AddAppNetworksFragment$JPmrGay55J-q8UXbX7w1A3SQppw;

    invoke-direct {v5, v2}, Lcom/android/settings/wifi/addappnetworks/-$$Lambda$AddAppNetworksFragment$JPmrGay55J-q8UXbX7w1A3SQppw;-><init>(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;)V

    .line 771
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 774
    invoke-interface {v4}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v4

    .line 776
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v3

    :cond_3
    iput v3, v2, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;->mLevel:I

    goto :goto_0

    .line 780
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mIsSingleNetwork:Z

    if-eqz v0, :cond_5

    .line 781
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiToRequestedList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;

    iget v0, v0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;->mLevel:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->updateSingleNetworkSignalIcon(I)V

    goto :goto_1

    .line 783
    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiConfigurationItemAdapter:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItemAdapter;

    if-eqz p0, :cond_6

    .line 784
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_6
    :goto_1
    return-void
.end method
