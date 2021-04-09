.class public Lcom/android/settings/password/ChooseLockGenericController;
.super Ljava/lang/Object;
.source "ChooseLockGenericController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevicePasswordRequirementOnly:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

.field private final mRequestedMinComplexity:I

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .line 49
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/password/ChooseLockGenericController;-><init>(Landroid/content/Context;IIZLcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLcom/android/internal/widget/LockPatternUtils;)V
    .locals 7

    .line 70
    invoke-static {p1, p2}, Lcom/android/settings/password/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/password/ManagedLockPasswordProvider;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 65
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/password/ChooseLockGenericController;-><init>(Landroid/content/Context;IIZLcom/android/settings/password/ManagedLockPasswordProvider;Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IIZLcom/android/settings/password/ManagedLockPasswordProvider;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    .line 83
    iput p2, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    .line 84
    iput p3, p0, Lcom/android/settings/password/ChooseLockGenericController;->mRequestedMinComplexity:I

    .line 85
    iput-boolean p4, p0, Lcom/android/settings/password/ChooseLockGenericController;->mDevicePasswordRequirementOnly:Z

    .line 86
    iput-object p5, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    .line 87
    iput-object p6, p0, Lcom/android/settings/password/ChooseLockGenericController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public getAggregatedPasswordComplexity()I
    .locals 3

    .line 206
    iget v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mRequestedMinComplexity:I

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mDevicePasswordRequirementOnly:Z

    .line 207
    invoke-virtual {v1, v2, p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordComplexity(IZ)I

    move-result p0

    .line 206
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getAggregatedPasswordMetrics()Landroid/app/admin/PasswordMetrics;
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mDevicePasswordRequirementOnly:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getTitle(Lcom/android/settings/password/ScreenLockType;)Ljava/lang/CharSequence;
    .locals 1

    .line 158
    sget-object v0, Lcom/android/settings/password/ChooseLockGenericController$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 168
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->unlock_set_unlock_password_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 164
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->unlock_set_unlock_pattern_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 166
    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->unlock_set_unlock_pin_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 170
    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ManagedLockPasswordProvider;->getPickerOptionTitle(Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 162
    :pswitch_4
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->unlock_set_unlock_none_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 160
    :pswitch_5
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->unlock_set_unlock_off_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVisibleScreenLockTypes(IZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/android/settings/password/ScreenLockType;",
            ">;"
        }
    .end annotation

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockGenericController;->upgradeQuality(I)I

    move-result p1

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    invoke-static {}, Lcom/android/settings/password/ScreenLockType;->values()[Lcom/android/settings/password/ScreenLockType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 191
    invoke-virtual {p0, v4}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez p2, :cond_0

    .line 192
    invoke-virtual {p0, v4, p1}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockEnabled(Lcom/android/settings/password/ScreenLockType;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 193
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public isScreenLockDisabledByAdmin(Lcom/android/settings/password/ScreenLockType;I)Z
    .locals 3

    .line 146
    iget v0, p1, Lcom/android/settings/password/ScreenLockType;->maxQuality:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    .line 147
    :goto_0
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    .line 148
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/password/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    move p2, v1

    :cond_3
    return p2
.end method

.method public isScreenLockEnabled(Lcom/android/settings/password/ScreenLockType;I)Z
    .locals 0

    .line 136
    iget p0, p1, Lcom/android/settings/password/ScreenLockType;->maxQuality:I

    if-lt p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z
    .locals 4

    .line 108
    iget v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 109
    :goto_0
    sget-object v1, Lcom/android/settings/password/ChooseLockGenericController$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    return v3

    .line 123
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result p0

    return p0

    .line 117
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-virtual {p0}, Lcom/android/settings/password/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    move-result p0

    return p0

    .line 114
    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$bool;->config_hide_swipe_security_option:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_1

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    return v2

    .line 111
    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$bool;->config_hide_none_security_option:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_2

    if-nez v0, :cond_2

    move v2, v3

    :cond_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public upgradeQuality(I)I
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGenericController;->getAggregatedPasswordMetrics()Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->credType:I

    .line 98
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToPasswordQuality(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGenericController;->getAggregatedPasswordComplexity()I

    move-result p0

    invoke-static {p0}, Landroid/app/admin/PasswordMetrics;->complexityLevelToMinQuality(I)I

    move-result p0

    .line 100
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
