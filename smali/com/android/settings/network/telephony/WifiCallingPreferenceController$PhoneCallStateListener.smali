.class Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/WifiCallingPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneCallStateListener"
.end annotation


# instance fields
.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    .line 201
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 208
    iget-object p2, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mCallState:Ljava/lang/Integer;

    .line 209
    iget-object p0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->access$000(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public register(Landroid/content/Context;I)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 216
    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mCallState:Ljava/lang/Integer;

    .line 217
    iget-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 p2, 0x20

    invoke-virtual {p1, p0, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public unregister()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mCallState:Ljava/lang/Integer;

    .line 222
    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
