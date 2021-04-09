.class public abstract Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
.super Ljava/lang/Object;
.source "BatteryTip.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field static final TIP_ORDER:Landroid/util/SparseIntArray;


# instance fields
.field protected mNeedUpdate:Z

.field protected mShowDialog:Z

.field protected mState:I

.field protected mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 77
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v3, 0x1

    .line 79
    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 80
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 81
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v3, 0x5

    const/4 v4, 0x4

    .line 82
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v5, 0x6

    .line 83
    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 84
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v2, 0x7

    .line 85
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 86
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    .line 108
    iput p2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    .line 109
    iput-boolean p3, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mShowDialog:Z

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mNeedUpdate:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mShowDialog:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mNeedUpdate:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)I
    .locals 1

    .line 196
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    iget p1, p1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->compareTo(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getIconId()I
.end method

.method public getIconTintColorId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getState()I
    .locals 0

    .line 187
    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    return p0
.end method

.method public abstract getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public abstract getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public getType()I
    .locals 0

    .line 182
    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    return p0
.end method

.method public abstract log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
.end method

.method public needUpdate()Z
    .locals 0

    .line 174
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mNeedUpdate:Z

    return p0
.end method

.method public shouldShowDialog()Z
    .locals 0

    .line 170
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mShowDialog:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updatePreference(Landroidx/preference/Preference;)V
    .locals 2

    .line 154
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getIconId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getIconTintColorId()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 160
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method public abstract updateState(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
.end method

.method public validateCheck(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 120
    iget p2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget p2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-boolean p2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mShowDialog:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 123
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mNeedUpdate:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
