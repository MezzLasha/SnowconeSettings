.class public final Lcom/google/android/setupdesign/util/ThemeHelper;
.super Ljava/lang/Object;
.source "ThemeHelper.java"


# direct methods
.method public static isSetupWizardDayNightEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 153
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
