.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$NetworkProviderWifiCallingGroup$ayOGpMiCKsmihzWGlAPaCFWDRVw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;

.field public final synthetic f$1:Landroid/telephony/SubscriptionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkProviderWifiCallingGroup$ayOGpMiCKsmihzWGlAPaCFWDRVw;->f$0:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;

    iput-object p2, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkProviderWifiCallingGroup$ayOGpMiCKsmihzWGlAPaCFWDRVw;->f$1:Landroid/telephony/SubscriptionInfo;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkProviderWifiCallingGroup$ayOGpMiCKsmihzWGlAPaCFWDRVw;->f$0:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;

    iget-object p0, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkProviderWifiCallingGroup$ayOGpMiCKsmihzWGlAPaCFWDRVw;->f$1:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->lambda$setSubscriptionInfoForPreference$0$NetworkProviderWifiCallingGroup(Landroid/telephony/SubscriptionInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
