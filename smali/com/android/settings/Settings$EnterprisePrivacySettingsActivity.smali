.class public Lcom/android/settings/Settings$EnterprisePrivacySettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnterprisePrivacySettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 217
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 218
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 219
    invoke-virtual {p1, p0}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object p1

    .line 220
    invoke-interface {p1}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->showParentalControls()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 222
    :cond_0
    invoke-static {p0}, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->isPageEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 223
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
