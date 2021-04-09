.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$_Qp7I0hvgpiI_MSGr7HADfciBow;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$_Qp7I0hvgpiI_MSGr7HADfciBow;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/accessibility/-$$Lambda$_Qp7I0hvgpiI_MSGr7HADfciBow;

    invoke-direct {v0}, Lcom/android/settings/accessibility/-$$Lambda$_Qp7I0hvgpiI_MSGr7HADfciBow;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/-$$Lambda$_Qp7I0hvgpiI_MSGr7HADfciBow;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$_Qp7I0hvgpiI_MSGr7HADfciBow;

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

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
