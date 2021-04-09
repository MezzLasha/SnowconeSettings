.class public Lcom/android/settingslib/mobile/MobileMappings;
.super Ljava/lang/Object;
.source "MobileMappings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/mobile/MobileMappings$Config;
    }
.end annotation


# direct methods
.method public static getIconKey(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;
    .locals 1

    .line 42
    invoke-virtual {p0}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result p0

    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result p0

    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mapIconSets(Lcom/android/settingslib/mobile/MobileMappings$Config;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/mobile/MobileMappings$Config;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/SignalIcon$MobileIconGroup;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x5

    .line 93
    invoke-static {v1}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 95
    invoke-static {v1}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    .line 97
    invoke-static {v1}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xe

    .line 99
    invoke-static {v1}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-boolean v1, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4gFor3g:Z

    const/4 v3, 0x3

    if-eqz v1, :cond_0

    .line 102
    invoke-static {v3}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {v3}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/16 v1, 0x11

    .line 108
    invoke-static {v1}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-boolean v1, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->showAtLeast3G:Z

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-nez v1, :cond_1

    .line 112
    invoke-static {v5}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {v7}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {v6}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {v4}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 121
    :cond_1
    invoke-static {v5}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {v7}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {v6}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {v4}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :goto_1
    iget-boolean v1, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4gFor3g:Z

    if-eqz v1, :cond_2

    .line 134
    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    .line 136
    :cond_2
    iget-boolean v1, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->hspaDataDistinguishable:Z

    if-eqz v1, :cond_3

    .line 137
    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 138
    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_3

    :cond_3
    :goto_2
    move-object v1, v2

    :goto_3
    const/16 v4, 0x8

    .line 141
    invoke-static {v4}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x9

    .line 142
    invoke-static {v4}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xa

    .line 143
    invoke-static {v4}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xf

    .line 144
    invoke-static {v2}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-boolean v1, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4gForLte:Z

    const/16 v2, 0xd

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    .line 147
    invoke-static {v2}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-boolean p0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->hideLtePlus:Z

    if-eqz p0, :cond_4

    .line 151
    invoke-static {v4}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 155
    :cond_4
    invoke-static {v4}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 160
    :cond_5
    invoke-static {v2}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-boolean p0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->hideLtePlus:Z

    if-eqz p0, :cond_6

    .line 164
    invoke-static {v4}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 168
    :cond_6
    invoke-static {v4}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const/16 p0, 0x12

    .line 173
    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->WFC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-static {v7}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {v3}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {v6}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x14

    .line 185
    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static toDisplayIconKey(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xd

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    const/16 v1, 0x14

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "unsupported"

    return-object p0

    .line 69
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_Plus"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :cond_1
    invoke-static {v1}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_CA_Plus"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 63
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/android/settingslib/mobile/MobileMappings;->toIconKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_CA"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toIconKey(I)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
