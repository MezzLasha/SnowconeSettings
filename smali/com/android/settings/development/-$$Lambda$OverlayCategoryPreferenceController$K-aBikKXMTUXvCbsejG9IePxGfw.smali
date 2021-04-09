.class public final synthetic Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$K-aBikKXMTUXvCbsejG9IePxGfw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$K-aBikKXMTUXvCbsejG9IePxGfw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$K-aBikKXMTUXvCbsejG9IePxGfw;

    invoke-direct {v0}, Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$K-aBikKXMTUXvCbsejG9IePxGfw;-><init>()V

    sput-object v0, Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$K-aBikKXMTUXvCbsejG9IePxGfw;->INSTANCE:Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$K-aBikKXMTUXvCbsejG9IePxGfw;

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

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {p1}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->lambda$static$0(Landroid/content/om/OverlayInfo;)I

    move-result p0

    return p0
.end method
