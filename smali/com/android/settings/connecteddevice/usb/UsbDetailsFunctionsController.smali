.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "UsbDetailsFunctionsController.java"

# interfaces
.implements Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final FUNCTIONS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

.field mPreviousFunction:J

.field private mProfilesContainer:Landroidx/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UsbFunctionsCtrl"

    const/4 v1, 0x3

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->DEBUG:Z

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x4

    .line 50
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->usb_use_file_transfers:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x20

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->usb_use_tethering:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x8

    .line 52
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->usb_use_MIDI:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x10

    .line 53
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->usb_use_photo_transfers:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->usb_use_charging_only:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    .line 67
    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 68
    new-instance p1, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    .line 69
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mPreviousFunction:J

    return-void
.end method

.method private getProfilePreference(Ljava/lang/String;I)Lcom/android/settingslib/widget/RadioButtonPreference;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/RadioButtonPreference;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/android/settingslib/widget/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 87
    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    .line 88
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-object v0
.end method

.method private isAccessoryMode(J)Z
    .locals 2

    const-wide/16 v0, 0x2

    and-long p0, p1, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldIgnoreClickEvent(JJ)Z
    .locals 0

    .line 157
    invoke-direct {p0, p3, p4}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->isAccessoryMode(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 p3, 0x4

    cmp-long p0, p1, p3

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

    .line 74
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "usb_details_functions"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 166
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/RadioButtonPreference;)V
    .locals 7

    .line 124
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    .line 125
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v2

    .line 126
    sget-boolean v4, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRadioButtonClicked() function : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", toString() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", previousFunction : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UsbFunctionsCtrl"

    .line 127
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 132
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-nez v4, :cond_3

    .line 133
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->shouldIgnoreClickEvent(JJ)Z

    move-result v4

    if-nez v4, :cond_3

    .line 134
    iput-wide v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mPreviousFunction:J

    .line 137
    iget-object v4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    .line 139
    invoke-static {v2, v3}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/RadioButtonPreference;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    .line 141
    invoke-virtual {v2, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 142
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    const-wide/16 v4, 0x20

    cmp-long p1, v0, v4

    if-nez p1, :cond_2

    .line 148
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    invoke-virtual {p1, v3, v3, p0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setCurrentFunctions(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected refresh(ZJII)V
    .locals 5

    .line 95
    sget-boolean v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh() connected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", functions : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", powerRole : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", dataRole : "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "UsbFunctionsCtrl"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    if-eq p5, p1, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 100
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 106
    :goto_1
    sget-object p1, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 107
    sget-object p5, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    .line 108
    invoke-static {v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p5}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->getProfilePreference(Ljava/lang/String;I)Lcom/android/settingslib/widget/RadioButtonPreference;

    move-result-object p5

    .line 110
    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v3, v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsSupported(J)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 111
    invoke-direct {p0, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->isAccessoryMode(J)Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide/16 v3, 0x4

    cmp-long v1, v3, v1

    if-nez v1, :cond_3

    move v1, p4

    goto :goto_3

    :cond_3
    move v1, v0

    .line 112
    :goto_3
    invoke-virtual {p5, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    cmp-long v1, p2, v1

    if-nez v1, :cond_5

    move v1, p4

    goto :goto_4

    :cond_5
    move v1, v0

    .line 114
    :goto_4
    invoke-virtual {p5, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 117
    :cond_6
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, p5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_7
    return-void
.end method
