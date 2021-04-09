.class public final synthetic Lcom/android/settings/users/-$$Lambda$UserSettings$RPkdkHH2ceYKchMt83CcL72CQtk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/users/-$$Lambda$UserSettings$RPkdkHH2ceYKchMt83CcL72CQtk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/users/-$$Lambda$UserSettings$RPkdkHH2ceYKchMt83CcL72CQtk;

    invoke-direct {v0}, Lcom/android/settings/users/-$$Lambda$UserSettings$RPkdkHH2ceYKchMt83CcL72CQtk;-><init>()V

    sput-object v0, Lcom/android/settings/users/-$$Lambda$UserSettings$RPkdkHH2ceYKchMt83CcL72CQtk;->INSTANCE:Lcom/android/settings/users/-$$Lambda$UserSettings$RPkdkHH2ceYKchMt83CcL72CQtk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/pm/UserInfo;

    invoke-static {p1}, Lcom/android/settings/users/UserSettings;->lambda$getRealUsersCount$4(Landroid/content/pm/UserInfo;)Z

    move-result p0

    return p0
.end method
