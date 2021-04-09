.class public Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip;
.super Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
.source "BatteryDefenderTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(IIZ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 0

    .line 50
    sget p0, Lcom/android/settings/R$drawable;->ic_battery_status_good_24dp:I

    return p0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    .line 45
    sget p0, Lcom/android/settings/R$string;->battery_tip_limited_temporarily_summary:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    .line 40
    sget p0, Lcom/android/settings/R$string;->battery_tip_limited_temporarily_title:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 0

    return-void
.end method

.method public updateState(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 0

    .line 55
    iget p1, p1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    return-void
.end method
