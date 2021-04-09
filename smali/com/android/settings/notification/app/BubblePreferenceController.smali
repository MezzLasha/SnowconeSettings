.class public Lcom/android/settings/notification/app/BubblePreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "BubblePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final SYSTEM_WIDE_OFF:I = 0x0

.field static final SYSTEM_WIDE_ON:I = 0x1


# instance fields
.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mHasSentInvalidMsg:Z

.field private mIsAppPage:Z

.field private mListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

.field private mNumConversations:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/notification/NotificationBackend;ZLcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 59
    iput-object p2, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 60
    iput-boolean p4, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mIsAppPage:Z

    .line 61
    iput-object p5, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    return-void
.end method

.method public static applyBubblesApproval(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1

    .line 166
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    .line 167
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->setAllowBubbles(Ljava/lang/String;II)Z

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "notification_bubbles"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private isGloballyEnabled()Z
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 144
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "notification_bubbles"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static revertBubblesApproval(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 153
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/settings/notification/NotificationBackend;->setAllowBubbles(Ljava/lang/String;II)Z

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "notification_bubbles"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bubble_pref"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 3

    .line 71
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 74
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mIsAppPage:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/app/BubblePreferenceController;->isGloballyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isDefaultChannel()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 81
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p0, :cond_3

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    .line 115
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->saveChannel()V

    goto :goto_0

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mIsAppPage:Z

    if-eqz v0, :cond_3

    .line 119
    check-cast p1, Lcom/android/settings/notification/app/BubblePreference;

    .line 120
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_2

    .line 121
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 122
    invoke-direct {p0}, Lcom/android/settings/notification/app/BubblePreferenceController;->isGloballyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/android/settings/notification/app/BubblePreference;->getSelectedPreference()I

    move-result p1

    if-nez p1, :cond_1

    .line 126
    new-instance p1, Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/notification/app/BubbleWarningDialogFragment;-><init>()V

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    .line 127
    invoke-virtual {p1, v1, v0, p2}, Lcom/android/settings/notification/app/BubbleWarningDialogFragment;->setPkgPrefInfo(Ljava/lang/String;II)Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p2, "dialog"

    .line 128
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iput p2, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    .line 132
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/notification/NotificationBackend;->setAllowBubbles(Ljava/lang/String;II)Z

    .line 135
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    if-eqz p0, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->onFieldValueChanged()V

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 89
    iget-boolean v0, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mIsAppPage:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_3

    .line 90
    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v3, v4, v0}, Lcom/android/settings/notification/NotificationBackend;->isInInvalidMsgState(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mHasSentInvalidMsg:Z

    .line 91
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v4, v3}, Lcom/android/settings/notification/NotificationBackend;->getConversations(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mNumConversations:I

    .line 94
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    .line 95
    check-cast p1, Lcom/android/settings/notification/app/BubblePreference;

    .line 96
    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p1, v3}, Lcom/android/settings/notification/app/BubblePreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 97
    iget-boolean v3, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mHasSentInvalidMsg:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mNumConversations:I

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/settings/notification/app/BubblePreference;->setSelectedVisibility(Z)V

    .line 98
    invoke-direct {p0}, Lcom/android/settings/notification/app/BubblePreferenceController;->isGloballyEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    .line 99
    invoke-virtual {p1, v2}, Lcom/android/settings/notification/app/BubblePreference;->setSelectedPreference(I)V

    goto :goto_2

    .line 101
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/settings/notification/app/BubblePreference;->setSelectedPreference(I)V

    goto :goto_2

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_5

    .line 105
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 106
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/notification/app/BubblePreferenceController;->isGloballyEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_5
    :goto_2
    return-void
.end method
