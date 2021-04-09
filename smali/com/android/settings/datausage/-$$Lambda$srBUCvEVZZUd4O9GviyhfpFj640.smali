.class public final synthetic Lcom/android/settings/datausage/-$$Lambda$srBUCvEVZZUd4O9GviyhfpFj640;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/datausage/-$$Lambda$srBUCvEVZZUd4O9GviyhfpFj640;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/datausage/-$$Lambda$srBUCvEVZZUd4O9GviyhfpFj640;

    invoke-direct {v0}, Lcom/android/settings/datausage/-$$Lambda$srBUCvEVZZUd4O9GviyhfpFj640;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/-$$Lambda$srBUCvEVZZUd4O9GviyhfpFj640;->INSTANCE:Lcom/android/settings/datausage/-$$Lambda$srBUCvEVZZUd4O9GviyhfpFj640;

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

    check-cast p1, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;

    invoke-virtual {p1}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->getDataUsagePercentage()I

    move-result p0

    return p0
.end method
