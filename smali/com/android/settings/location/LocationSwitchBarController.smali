.class public Lcom/android/settings/location/LocationSwitchBarController;
.super Ljava/lang/Object;
.source "LocationSwitchBarController.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

.field private final mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SettingsMainSwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 41
    new-instance p2, Lcom/android/settings/location/LocationEnabler;

    invoke-direct {p2, p1, p0, p3}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    if-eqz p3, :cond_0

    .line 43
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onLocationModeChanged(IZ)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result p1

    .line 69
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    .line 71
    invoke-virtual {v1, v0}, Lcom/android/settings/location/LocationEnabler;->getShareLocationEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    .line 73
    invoke-virtual {v2, v0}, Lcom/android/settings/location/LocationEnabler;->hasShareLocationRestriction(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 77
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p2, v1}, Lcom/android/settingslib/widget/MainSwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Lcom/android/settingslib/widget/MainSwitchBar;->setEnabled(Z)V

    .line 82
    :goto_0
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p2}, Lcom/android/settingslib/widget/MainSwitchBar;->isChecked()Z

    move-result p2

    if-eq p1, p2, :cond_2

    .line 84
    iget-boolean p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    if-eqz p2, :cond_1

    .line 85
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p2, p0}, Lcom/android/settingslib/widget/MainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 87
    :cond_1
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 88
    iget-boolean p1, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    if-eqz p1, :cond_2

    .line 89
    iget-object p1, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/MainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0, p2}, Lcom/android/settings/location/LocationEnabler;->setLocationEnabled(Z)V

    return-void
.end method
