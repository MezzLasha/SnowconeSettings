.class public final synthetic Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$HCYXY0avd9-ABeZFebPSWn57mcc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$HCYXY0avd9-ABeZFebPSWn57mcc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$HCYXY0avd9-ABeZFebPSWn57mcc;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$HCYXY0avd9-ABeZFebPSWn57mcc;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$HCYXY0avd9-ABeZFebPSWn57mcc;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$HCYXY0avd9-ABeZFebPSWn57mcc;

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

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->lambda$sortCards$1(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Z

    move-result p0

    return p0
.end method
