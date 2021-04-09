.class public Lcom/android/settings/fuelgauge/batterytip/actions/BatteryDefenderAction;
.super Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
.source "BatteryDefenderAction.java"


# instance fields
.field private mSettingsActivity:Lcom/android/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 1

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryDefenderAction;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    return-void
.end method


# virtual methods
.method public handlePositiveAction(I)V
    .locals 2

    .line 41
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->help_url_battery_defender:I

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-class v1, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryDefenderAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {p1, v0, v1}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryDefenderAction;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
