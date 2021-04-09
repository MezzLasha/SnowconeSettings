.class public final synthetic Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$MQBMbsejMICe5L8sW2wQr2munvk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$MQBMbsejMICe5L8sW2wQr2munvk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$MQBMbsejMICe5L8sW2wQr2munvk;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$MQBMbsejMICe5L8sW2wQr2munvk;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$MQBMbsejMICe5L8sW2wQr2munvk;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$MQBMbsejMICe5L8sW2wQr2munvk;

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

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;->lambda$compareTo$0(Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;)I

    move-result p0

    return p0
.end method
