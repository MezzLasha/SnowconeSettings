.class public final synthetic Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$yTElCOaL55LydeETILKr9XASTiI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$yTElCOaL55LydeETILKr9XASTiI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$yTElCOaL55LydeETILKr9XASTiI;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$yTElCOaL55LydeETILKr9XASTiI;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$yTElCOaL55LydeETILKr9XASTiI;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$yTElCOaL55LydeETILKr9XASTiI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;->lambda$compareTo$1(Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;)I

    move-result p0

    return p0
.end method
