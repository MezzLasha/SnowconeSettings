.class public final synthetic Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$qDAfV4NARwRTTUE1XhLrp3ffWIg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$qDAfV4NARwRTTUE1XhLrp3ffWIg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$qDAfV4NARwRTTUE1XhLrp3ffWIg;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$qDAfV4NARwRTTUE1XhLrp3ffWIg;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$qDAfV4NARwRTTUE1XhLrp3ffWIg;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$qDAfV4NARwRTTUE1XhLrp3ffWIg;

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

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    check-cast p2, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-static {p1, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->lambda$sortCards$0(Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/ContextualCard;)I

    move-result p0

    return p0
.end method
