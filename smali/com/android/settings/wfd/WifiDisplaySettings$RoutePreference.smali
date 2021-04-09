.class Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoutePreference"
.end annotation


# instance fields
.field private final mRoute:Landroid/media/MediaRouter$RouteInfo;

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 670
    invoke-direct {p0, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    .line 672
    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 673
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 674
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 675
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 676
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 677
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 678
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 679
    sget p1, Lcom/android/settings/R$string;->wifi_display_status_connecting:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 681
    :cond_0
    sget p1, Lcom/android/settings/R$string;->wifi_display_status_connected:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 684
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    .line 685
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    .line 687
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 688
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_3

    .line 689
    sget p1, Lcom/android/settings/R$string;->wifi_display_status_in_use:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 691
    :cond_3
    sget p1, Lcom/android/settings/R$string;->wifi_display_status_not_available:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 695
    :goto_0
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 700
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {p1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V

    const/4 p0, 0x1

    return p0
.end method
