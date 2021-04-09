.class public Lcom/android/settings/SetupWizardUtils;
.super Ljava/lang/Object;
.source "SetupWizardUtils.java"


# direct methods
.method public static copyLifecycleExtra(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "firstRun"

    const-string v1, "isSetupFlow"

    .line 130
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 133
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    .line 125
    invoke-static {p0, p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-void
.end method

.method public static getTheme(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 14

    .line 44
    invoke-static {p1}, Lcom/android/settings/SetupWizardUtils;->getThemeString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 48
    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    const/4 v1, 0x5

    const-string v2, "glif_light"

    const/4 v3, 0x4

    const-string v4, "glif_v3"

    const/4 v5, 0x3

    const-string v6, "glif_v2"

    const/4 v7, 0x2

    const-string v8, "glif"

    const/4 v9, 0x1

    const-string v10, "glif_v3_light"

    const/4 v11, 0x0

    const-string v12, "glif_v2_light"

    const/4 v13, -0x1

    if-eqz p1, :cond_d

    .line 49
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    move v1, v13

    goto :goto_1

    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v7

    goto :goto_1

    :sswitch_4
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v9

    goto :goto_1

    :sswitch_5
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v11

    :cond_5
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    .line 59
    :pswitch_0
    sget p0, Lcom/android/settings/R$style;->GlifTheme_DayNight:I

    return p0

    .line 53
    :pswitch_1
    sget p0, Lcom/android/settings/R$style;->GlifV3Theme_DayNight:I

    return p0

    .line 56
    :pswitch_2
    sget p0, Lcom/android/settings/R$style;->GlifV2Theme_DayNight:I

    return p0

    .line 62
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_1

    :goto_2
    move v1, v13

    goto :goto_3

    :sswitch_6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_2

    :sswitch_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_3

    :sswitch_8
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    move v1, v5

    goto :goto_3

    :sswitch_9
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_2

    :cond_9
    move v1, v7

    goto :goto_3

    :sswitch_a
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_2

    :cond_a
    move v1, v9

    goto :goto_3

    :sswitch_b
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_2

    :cond_b
    move v1, v11

    :cond_c
    :goto_3
    packed-switch v1, :pswitch_data_1

    goto/16 :goto_6

    .line 72
    :pswitch_3
    sget p0, Lcom/android/settings/R$style;->GlifTheme_Light:I

    return p0

    .line 66
    :pswitch_4
    sget p0, Lcom/android/settings/R$style;->GlifV3Theme:I

    return p0

    .line 70
    :pswitch_5
    sget p0, Lcom/android/settings/R$style;->GlifV2Theme:I

    return p0

    .line 74
    :pswitch_6
    sget p0, Lcom/android/settings/R$style;->GlifTheme:I

    return p0

    .line 64
    :pswitch_7
    sget p0, Lcom/android/settings/R$style;->GlifV3Theme_Light:I

    return p0

    .line 68
    :pswitch_8
    sget p0, Lcom/android/settings/R$style;->GlifV2Theme_Light:I

    return p0

    .line 78
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_2

    :goto_4
    move v1, v13

    goto :goto_5

    :sswitch_c
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_4

    :sswitch_d
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_4

    :cond_e
    move v1, v3

    goto :goto_5

    :sswitch_e
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_4

    :cond_f
    move v1, v5

    goto :goto_5

    :sswitch_f
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_4

    :cond_10
    move v1, v7

    goto :goto_5

    :sswitch_10
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_4

    :cond_11
    move v1, v9

    goto :goto_5

    :sswitch_11
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_4

    :cond_12
    move v1, v11

    :cond_13
    :goto_5
    packed-switch v1, :pswitch_data_2

    goto :goto_6

    .line 87
    :pswitch_9
    sget p0, Lcom/android/settings/R$style;->GlifTheme:I

    return p0

    .line 81
    :pswitch_a
    sget p0, Lcom/android/settings/R$style;->GlifV3Theme:I

    return p0

    .line 84
    :pswitch_b
    sget p0, Lcom/android/settings/R$style;->GlifV2Theme:I

    return p0

    .line 91
    :cond_14
    :goto_6
    sget p0, Lcom/android/settings/R$style;->GlifTheme:I

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_5
        -0x49f8f44f -> :sswitch_4
        0x3074c2 -> :sswitch_3
        0x6e4af19 -> :sswitch_2
        0x6e4af1a -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7edf2f90 -> :sswitch_b
        -0x49f8f44f -> :sswitch_a
        0x3074c2 -> :sswitch_9
        0x6e4af19 -> :sswitch_8
        0x6e4af1a -> :sswitch_7
        0x2dc1f359 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7edf2f90 -> :sswitch_11
        -0x49f8f44f -> :sswitch_10
        0x3074c2 -> :sswitch_f
        0x6e4af19 -> :sswitch_e
        0x6e4af1a -> :sswitch_d
        0x2dc1f359 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static getThemeString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "theme"

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 38
    invoke-static {}, Landroid/sysprop/SetupWizardProperties;->theme()Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public static getTransparentTheme(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 1

    .line 96
    invoke-static {p0, p1}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p1

    .line 97
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 98
    sget p0, Lcom/android/settings/R$style;->GlifV2Theme_DayNight_Transparent:I

    goto :goto_0

    .line 100
    :cond_0
    sget p0, Lcom/android/settings/R$style;->GlifV2Theme_Light_Transparent:I

    .line 102
    :goto_0
    sget v0, Lcom/android/settings/R$style;->GlifV3Theme_DayNight:I

    if-ne p1, v0, :cond_1

    .line 103
    sget p0, Lcom/android/settings/R$style;->GlifV3Theme_DayNight_Transparent:I

    goto :goto_1

    .line 104
    :cond_1
    sget v0, Lcom/android/settings/R$style;->GlifV3Theme_Light:I

    if-ne p1, v0, :cond_2

    .line 105
    sget p0, Lcom/android/settings/R$style;->GlifV3Theme_Light_Transparent:I

    goto :goto_1

    .line 106
    :cond_2
    sget v0, Lcom/android/settings/R$style;->GlifV2Theme_DayNight:I

    if-ne p1, v0, :cond_3

    .line 107
    sget p0, Lcom/android/settings/R$style;->GlifV2Theme_DayNight_Transparent:I

    goto :goto_1

    .line 108
    :cond_3
    sget v0, Lcom/android/settings/R$style;->GlifV2Theme_Light:I

    if-ne p1, v0, :cond_4

    .line 109
    sget p0, Lcom/android/settings/R$style;->GlifV2Theme_Light_Transparent:I

    goto :goto_1

    .line 110
    :cond_4
    sget v0, Lcom/android/settings/R$style;->GlifTheme_DayNight:I

    if-ne p1, v0, :cond_5

    .line 111
    sget p0, Lcom/android/settings/R$style;->SetupWizardTheme_DayNight_Transparent:I

    goto :goto_1

    .line 112
    :cond_5
    sget v0, Lcom/android/settings/R$style;->GlifTheme_Light:I

    if-ne p1, v0, :cond_6

    .line 113
    sget p0, Lcom/android/settings/R$style;->SetupWizardTheme_Light_Transparent:I

    goto :goto_1

    .line 114
    :cond_6
    sget v0, Lcom/android/settings/R$style;->GlifV3Theme:I

    if-ne p1, v0, :cond_7

    .line 115
    sget p0, Lcom/android/settings/R$style;->GlifV3Theme_Transparent:I

    goto :goto_1

    .line 116
    :cond_7
    sget v0, Lcom/android/settings/R$style;->GlifV2Theme:I

    if-ne p1, v0, :cond_8

    .line 117
    sget p0, Lcom/android/settings/R$style;->GlifV2Theme_Transparent:I

    goto :goto_1

    .line 118
    :cond_8
    sget v0, Lcom/android/settings/R$style;->GlifTheme:I

    if-ne p1, v0, :cond_9

    .line 119
    sget p0, Lcom/android/settings/R$style;->SetupWizardTheme_Transparent:I

    :cond_9
    :goto_1
    return p0
.end method
