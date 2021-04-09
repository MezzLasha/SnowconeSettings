.class public final synthetic Lcom/android/settings/users/-$$Lambda$uQEL8vudzbm77scSiS__mtakyco;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/users/-$$Lambda$uQEL8vudzbm77scSiS__mtakyco;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/users/-$$Lambda$uQEL8vudzbm77scSiS__mtakyco;

    invoke-direct {v0}, Lcom/android/settings/users/-$$Lambda$uQEL8vudzbm77scSiS__mtakyco;-><init>()V

    sput-object v0, Lcom/android/settings/users/-$$Lambda$uQEL8vudzbm77scSiS__mtakyco;->INSTANCE:Lcom/android/settings/users/-$$Lambda$uQEL8vudzbm77scSiS__mtakyco;

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

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p0

    return p0
.end method
