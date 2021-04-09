.class public Lcom/android/settings/panel/VolumePanel;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Lcom/android/settings/panel/PanelContent;
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private mCallback:Lcom/android/settings/panel/PanelContentCallback;

.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings/panel/VolumePanel$1;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/VolumePanel$1;-><init>(Lcom/android/settings/panel/VolumePanel;)V

    iput-object v0, p0, Lcom/android/settings/panel/VolumePanel;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/panel/VolumePanel;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/panel/VolumePanel;)Lcom/android/settings/panel/PanelContentCallback;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/panel/VolumePanel;->mCallback:Lcom/android/settings/panel/PanelContentCallback;

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/android/settings/panel/VolumePanel;
    .locals 1

    .line 65
    new-instance v0, Lcom/android/settings/panel/VolumePanel;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/VolumePanel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x677

    return p0
.end method

.method public getSeeMoreIntent()Landroid/content/Intent;
    .locals 1

    .line 106
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSlices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->REMOTE_MEDIA_SLICE_URI:Landroid/net/Uri;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->VOLUME_MEDIA_URI:Landroid/net/Uri;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_INDICATOR_SLICE_URI:Landroid/net/Uri;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->VOLUME_CALL_URI:Landroid/net/Uri;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->VOLUME_RINGER_URI:Landroid/net/Uri;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->VOLUME_ALARM_URI:Landroid/net/Uri;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 88
    iget-object p0, p0, Lcom/android/settings/panel/VolumePanel;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sound_settings:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getViewType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/android/settings/panel/VolumePanel;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/panel/VolumePanel;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.settings.panel.action.CLOSE_PANEL"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/android/settings/panel/VolumePanel;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/panel/VolumePanel;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerCallback(Lcom/android/settings/panel/PanelContentCallback;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/settings/panel/VolumePanel;->mCallback:Lcom/android/settings/panel/PanelContentCallback;

    return-void
.end method
