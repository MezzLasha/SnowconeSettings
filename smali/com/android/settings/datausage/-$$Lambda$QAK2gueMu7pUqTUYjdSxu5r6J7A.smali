.class public final synthetic Lcom/android/settings/datausage/-$$Lambda$QAK2gueMu7pUqTUYjdSxu5r6J7A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/datausage/-$$Lambda$QAK2gueMu7pUqTUYjdSxu5r6J7A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/datausage/-$$Lambda$QAK2gueMu7pUqTUYjdSxu5r6J7A;

    invoke-direct {v0}, Lcom/android/settings/datausage/-$$Lambda$QAK2gueMu7pUqTUYjdSxu5r6J7A;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/-$$Lambda$QAK2gueMu7pUqTUYjdSxu5r6J7A;->INSTANCE:Lcom/android/settings/datausage/-$$Lambda$QAK2gueMu7pUqTUYjdSxu5r6J7A;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Lcom/android/settingslib/net/NetworkCycleData;

    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleData;->getTotalUsage()J

    move-result-wide p0

    return-wide p0
.end method
