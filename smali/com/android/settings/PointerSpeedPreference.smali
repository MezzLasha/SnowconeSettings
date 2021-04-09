.class public Lcom/android/settings/PointerSpeedPreference;
.super Lcom/android/settings/SeekBarDialogPreference;
.source "PointerSpeedPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PointerSpeedPreference$SavedState;
    }
.end annotation


# instance fields
.field private final mIm:Landroid/hardware/input/InputManager;

.field private mLastProgress:I

.field private mOldSpeed:I

.field private mRestoredOldState:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSpeedObserver:Landroid/database/ContentObserver;

.field private mTouchInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/android/settings/PointerSpeedPreference;->mLastProgress:I

    .line 44
    new-instance p1, Lcom/android/settings/PointerSpeedPreference$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/settings/PointerSpeedPreference$1;-><init>(Lcom/android/settings/PointerSpeedPreference;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->mSpeedObserver:Landroid/database/ContentObserver;

    .line 53
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PointerSpeedPreference;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/PointerSpeedPreference;->onSpeedChanged()V

    return-void
.end method

.method private onSpeedChanged()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    .line 99
    iget-object p0, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private restoreOldState()V
    .locals 2

    .line 119
    iget-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    iget v1, p0, Lcom/android/settings/PointerSpeedPreference;->mOldSpeed:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mRestoredOldState:Z

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 71
    invoke-static {p1}, Lcom/android/settings/SeekBarDialogPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v0, 0xe

    .line 72
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 73
    iget-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/PointerSpeedPreference;->mOldSpeed:I

    .line 74
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    add-int/lit8 p1, p1, 0x7

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 75
    iget-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method protected onClick()V
    .locals 4

    .line 58
    invoke-super {p0}, Landroidx/preference/DialogPreference;->onClick()V

    .line 60
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    .line 61
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PointerSpeedPreference;->mSpeedObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 60
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mRestoredOldState:Z

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3

    .line 104
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onDialogClosed(Z)V

    .line 106
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 110
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    .line 109
    invoke-virtual {p1, v1, v2}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PointerSpeedPreference;->restoreOldState()V

    .line 115
    :goto_0
    iget-object p0, p0, Lcom/android/settings/PointerSpeedPreference;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 79
    iget-boolean p3, p0, Lcom/android/settings/PointerSpeedPreference;->mTouchInProgress:Z

    if-nez p3, :cond_0

    .line 80
    iget-object p3, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    add-int/lit8 v0, p2, -0x7

    invoke-virtual {p3, v0}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 82
    :cond_0
    iget p3, p0, Lcom/android/settings/PointerSpeedPreference;->mLastProgress:I

    if-eq p2, p3, :cond_1

    const/4 p3, 0x4

    .line 83
    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    .line 84
    iput p2, p0, Lcom/android/settings/PointerSpeedPreference;->mLastProgress:I

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/PointerSpeedPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    check-cast p1, Lcom/android/settings/PointerSpeedPreference$SavedState;

    .line 149
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 150
    iget v0, p1, Lcom/android/settings/PointerSpeedPreference$SavedState;->oldSpeed:I

    iput v0, p0, Lcom/android/settings/PointerSpeedPreference;->mOldSpeed:I

    .line 151
    iget-object p0, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    iget p1, p1, Lcom/android/settings/PointerSpeedPreference$SavedState;->progress:I

    add-int/lit8 p1, p1, -0x7

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    return-void

    .line 144
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 127
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    new-instance v1, Lcom/android/settings/PointerSpeedPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/PointerSpeedPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, v1, Lcom/android/settings/PointerSpeedPreference$SavedState;->progress:I

    .line 133
    iget v0, p0, Lcom/android/settings/PointerSpeedPreference;->mOldSpeed:I

    iput v0, v1, Lcom/android/settings/PointerSpeedPreference$SavedState;->oldSpeed:I

    .line 136
    invoke-direct {p0}, Lcom/android/settings/PointerSpeedPreference;->restoreOldState()V

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/android/settings/PointerSpeedPreference;->mTouchInProgress:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mTouchInProgress:Z

    .line 94
    iget-object p0, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, -0x7

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    return-void
.end method
