.class Lcom/android/settings/sound/ResumableMediaAppsController$MediaSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "ResumableMediaAppsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/ResumableMediaAppsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaSwitchPreference"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/sound/ResumableMediaAppsController;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/ResumableMediaAppsController;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/settings/sound/ResumableMediaAppsController$MediaSwitchPreference;->this$0:Lcom/android/settings/sound/ResumableMediaAppsController;

    .line 107
    invoke-direct {p0, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 108
    iput-object p3, p0, Lcom/android/settings/sound/ResumableMediaAppsController$MediaSwitchPreference;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/settings/sound/ResumableMediaAppsController$MediaSwitchPreference;->mPackageName:Ljava/lang/String;

    return-object p0
.end method
