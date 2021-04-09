.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$NetworkProviderBackupCallingPreferenceController$NVMSh15LOcYfHoU90m01tGdSspM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkProviderBackupCallingPreferenceController$NVMSh15LOcYfHoU90m01tGdSspM;->f$0:Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkProviderBackupCallingPreferenceController$NVMSh15LOcYfHoU90m01tGdSspM;->f$0:Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;->lambda$getPreferences$0$NetworkProviderBackupCallingPreferenceController(Landroid/telephony/SubscriptionInfo;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    return-object p0
.end method
