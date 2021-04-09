.class final Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OneHandedSettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gestures/OneHandedSettingsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;

.field private final mOneHandedEnabledAware:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/gestures/OneHandedSettingsUtils;


# direct methods
.method constructor <init>(Lcom/android/settings/gestures/OneHandedSettingsUtils;Landroid/os/Handler;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;->this$0:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    .line 145
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "one_handed_mode_enabled"

    .line 141
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;->mOneHandedEnabledAware:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;->setCallback(Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;)V

    return-void
.end method

.method private setCallback(Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;->mCallback:Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;

    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;->this$0:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    invoke-static {v0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->access$100(Lcom/android/settings/gestures/OneHandedSettingsUtils;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;->mOneHandedEnabledAware:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;->mCallback:Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;->onChange(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
