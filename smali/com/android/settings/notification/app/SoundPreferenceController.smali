.class public Lcom/android/settings/notification/app/SoundPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "SoundPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;


# instance fields
.field private final mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

.field private mPreference:Lcom/android/settings/notification/app/NotificationSoundPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p4}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 51
    iput-object p2, p0, Lcom/android/settings/notification/app/SoundPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 52
    iput-object p3, p0, Lcom/android/settings/notification/app/SoundPreferenceController;->mListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    return-void
.end method

.method protected static hasValidSound(Landroid/app/NotificationChannel;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/notification/app/SoundPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/app/NotificationSoundPreference;

    iput-object p1, p0, Lcom/android/settings/notification/app/SoundPreferenceController;->mPreference:Lcom/android/settings/notification/app/NotificationSoundPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "ringtone"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 97
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/app/SoundPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_3

    .line 98
    move-object v0, p1

    check-cast v0, Lcom/android/settings/notification/app/NotificationSoundPreference;

    .line 99
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    const/4 v3, 0x4

    if-ne v3, v1, :cond_0

    .line 101
    invoke-virtual {v0, v3}, Lcom/android/settings/RingtonePreference;->setRingtoneType(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    .line 102
    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    .line 103
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 104
    invoke-virtual {v0, v2}, Lcom/android/settings/RingtonePreference;->setRingtoneType(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 106
    invoke-virtual {v0, v1}, Lcom/android/settings/RingtonePreference;->setRingtoneType(I)V

    .line 109
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 110
    iget-object p0, p0, Lcom/android/settings/notification/app/SoundPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xc8

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x3

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->checkCanBeVisible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isDefaultChannel()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    const/16 v0, 0xc8

    if-ne v0, p1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/app/SoundPreferenceController;->mPreference:Lcom/android/settings/notification/app/NotificationSoundPreference;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/notification/app/NotificationSoundPreference;->onActivityResult(IILandroid/content/Intent;)Z

    .line 124
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/app/SoundPreferenceController;->mListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->onFieldValueChanged()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_0

    .line 89
    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->saveChannel()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    .line 80
    check-cast p1, Lcom/android/settings/notification/app/NotificationSoundPreference;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 82
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/app/NotificationSoundPreference;->setRingtone(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method
