.class public final synthetic Lcom/android/settings/users/-$$Lambda$UserPreference$84yAWRubpQhuXzJIE_-VUlSKsdY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/users/-$$Lambda$UserPreference$84yAWRubpQhuXzJIE_-VUlSKsdY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/users/-$$Lambda$UserPreference$84yAWRubpQhuXzJIE_-VUlSKsdY;

    invoke-direct {v0}, Lcom/android/settings/users/-$$Lambda$UserPreference$84yAWRubpQhuXzJIE_-VUlSKsdY;-><init>()V

    sput-object v0, Lcom/android/settings/users/-$$Lambda$UserPreference$84yAWRubpQhuXzJIE_-VUlSKsdY;->INSTANCE:Lcom/android/settings/users/-$$Lambda$UserPreference$84yAWRubpQhuXzJIE_-VUlSKsdY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/users/UserPreference;

    check-cast p2, Lcom/android/settings/users/UserPreference;

    invoke-static {p1, p2}, Lcom/android/settings/users/UserPreference;->lambda$static$0(Lcom/android/settings/users/UserPreference;Lcom/android/settings/users/UserPreference;)I

    move-result p0

    return p0
.end method
