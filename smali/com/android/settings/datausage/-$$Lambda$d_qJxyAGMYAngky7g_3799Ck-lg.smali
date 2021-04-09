.class public final synthetic Lcom/android/settings/datausage/-$$Lambda$d_qJxyAGMYAngky7g_3799Ck-lg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/datausage/-$$Lambda$d_qJxyAGMYAngky7g_3799Ck-lg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/datausage/-$$Lambda$d_qJxyAGMYAngky7g_3799Ck-lg;

    invoke-direct {v0}, Lcom/android/settings/datausage/-$$Lambda$d_qJxyAGMYAngky7g_3799Ck-lg;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/-$$Lambda$d_qJxyAGMYAngky7g_3799Ck-lg;->INSTANCE:Lcom/android/settings/datausage/-$$Lambda$d_qJxyAGMYAngky7g_3799Ck-lg;

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

    check-cast p1, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;

    invoke-virtual {p1}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->getEndTime()J

    move-result-wide p0

    return-wide p0
.end method
