.class public final synthetic Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryPackage$ESUyfH4XASl5K6DS5Gfg2C1cQ6I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryPackage$ESUyfH4XASl5K6DS5Gfg2C1cQ6I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryPackage$ESUyfH4XASl5K6DS5Gfg2C1cQ6I;

    invoke-direct {v0}, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryPackage$ESUyfH4XASl5K6DS5Gfg2C1cQ6I;-><init>()V

    sput-object v0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryPackage$ESUyfH4XASl5K6DS5Gfg2C1cQ6I;->INSTANCE:Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryPackage$ESUyfH4XASl5K6DS5Gfg2C1cQ6I;

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

    check-cast p1, Landroid/app/NotificationHistory$HistoricalNotification;

    check-cast p2, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-static {p1, p2}, Lcom/android/settings/notification/history/NotificationHistoryPackage;->lambda$new$0(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/app/NotificationHistory$HistoricalNotification;)I

    move-result p0

    return p0
.end method
