.class public final synthetic Lcom/android/settings/homepage/contextualcards/-$$Lambda$2uajARPg7zs3QXdN3ekutEAqAgM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$2uajARPg7zs3QXdN3ekutEAqAgM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$2uajARPg7zs3QXdN3ekutEAqAgM;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$2uajARPg7zs3QXdN3ekutEAqAgM;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$2uajARPg7zs3QXdN3ekutEAqAgM;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$2uajARPg7zs3QXdN3ekutEAqAgM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method