.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$FnBGEYXoHI65HkTLYJ2y_5K0jjk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/dashboard/-$$Lambda$FnBGEYXoHI65HkTLYJ2y_5K0jjk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$FnBGEYXoHI65HkTLYJ2y_5K0jjk;

    invoke-direct {v0}, Lcom/android/settings/dashboard/-$$Lambda$FnBGEYXoHI65HkTLYJ2y_5K0jjk;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/-$$Lambda$FnBGEYXoHI65HkTLYJ2y_5K0jjk;->INSTANCE:Lcom/android/settings/dashboard/-$$Lambda$FnBGEYXoHI65HkTLYJ2y_5K0jjk;

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

    check-cast p1, Landroidx/preference/Preference;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
