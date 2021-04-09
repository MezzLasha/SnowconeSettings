.class public Lcom/android/settings/security/screenlock/ScreenLockSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ScreenLockSettings.java"

# interfaces
.implements Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->MY_USER_ID:I

    .line 82
    new-instance v0, Lcom/android/settings/security/screenlock/ScreenLockSettings$1;

    sget v1, Lcom/android/settings/R$xml;->screen_lock_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/security/screenlock/ScreenLockSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;
    .locals 0

    .line 35
    invoke-static {p0, p1, p2}, Lcom/android/settings/security/screenlock/ScreenLockSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/dashboard/DashboardFragment;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v1, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;

    sget v2, Lcom/android/settings/security/screenlock/ScreenLockSettings;->MY_USER_ID:I

    invoke-direct {v1, p0, v2, p2}, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;-><init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;

    invoke-direct {v1, p0, v2, p2}, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;-><init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;

    invoke-direct {v1, p0, v2, p2}, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;-><init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance p2, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/security/OwnerInfoPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 61
    invoke-static {p1, p0, v0}, Lcom/android/settings/security/screenlock/ScreenLockSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ScreenLockSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4f1

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 50
    sget p0, Lcom/android/settings/R$xml;->screen_lock_settings:I

    return p0
.end method

.method public onOwnerInfoUpdated()V
    .locals 1

    .line 66
    const-class v0, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateSummary()V

    return-void
.end method
