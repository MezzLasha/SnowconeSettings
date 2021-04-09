.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$FHC8Ey_y2woUeiCD7QqdAeOgUeI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/network/telephony/TelephonyAvailabilityCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$FHC8Ey_y2woUeiCD7QqdAeOgUeI;->f$0:Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;

    return-void
.end method


# virtual methods
.method public final getAvailabilityStatus(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/-$$Lambda$FHC8Ey_y2woUeiCD7QqdAeOgUeI;->f$0:Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;

    invoke-interface {p0, p1}, Lcom/android/settings/network/telephony/TelephonyAvailabilityCallback;->getAvailabilityStatus(I)I

    move-result p0

    return p0
.end method
