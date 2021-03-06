.class Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "Enhanced4gBasePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneCallStateListener"
.end annotation


# instance fields
.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    .line 217
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 224
    iget-object p2, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->access$002(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 225
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    iget-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public register(Landroid/content/Context;I)V
    .locals 2

    .line 229
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 230
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->access$002(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 236
    iget-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 p2, 0x20

    invoke-virtual {p1, p0, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 238
    iget-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide p1

    .line 239
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    const-wide/32 v0, 0x80000

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->access$102(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Z)Z

    return-void
.end method

.method public unregister()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->access$002(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 245
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 246
    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method
