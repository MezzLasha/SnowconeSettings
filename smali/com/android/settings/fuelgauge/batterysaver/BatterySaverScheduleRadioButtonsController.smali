.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;
.super Ljava/lang/Object;
.source "BatterySaverScheduleRadioButtonsController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    return-void
.end method


# virtual methods
.method public getDefaultKey()Ljava/lang/String;
    .locals 2

    .line 55
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "automatic_power_save_mode"

    const/4 v1, 0x0

    .line 57
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "low_power_trigger_level"

    .line 63
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-gtz p0, :cond_0

    const-string p0, "key_battery_saver_no_schedule"

    return-object p0

    :cond_0
    const-string p0, "key_battery_saver_percentage"

    return-object p0

    :cond_1
    const-string p0, "key_battery_saver_routine"

    return-object p0
.end method

.method public setDefaultKey(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 80
    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    const/4 v3, -0x1

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "key_battery_saver_no_schedule"

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "key_battery_saver_percentage"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_0

    :sswitch_2
    const-string v4, "key_battery_saver_routine"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v0

    :goto_0
    const-string v4, "extra_power_save_mode_trigger"

    const-string v7, "extra_confirm_only"

    packed-switch v3, :pswitch_data_0

    .line 99
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not a valid key for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-class v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 v3, 0x5

    .line 86
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "extra_power_save_mode_trigger_level"

    .line 89
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v4, v0

    goto :goto_1

    :pswitch_1
    move v3, v0

    move v4, v3

    goto :goto_1

    .line 94
    :pswitch_2
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v3, v0

    move v4, v6

    .line 103
    :goto_1
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {p1, v2}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->maybeShowBatterySaverConfirmation(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v3, v0

    goto :goto_2

    :cond_4
    move v0, v4

    :goto_2
    const-string p1, "automatic_power_save_mode"

    .line 112
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eq v0, v6, :cond_5

    const-string p1, "low_power_trigger_level"

    .line 114
    invoke-static {v1, p1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    if-eq v0, v6, :cond_6

    if-eqz v3, :cond_7

    .line 118
    :cond_6
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->suppressAutoBatterySaver(Landroid/content/Context;)V

    .line 120
    :cond_7
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->updateSeekBar()V

    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        0xb3ab488 -> :sswitch_2
        0xd747119 -> :sswitch_1
        0x4f9ed856 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
