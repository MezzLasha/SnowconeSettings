.class public Lcom/android/settings/widget/SeekBarPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAccessibilityRangeInfoType:I

.field private mContinuousUpdates:Z

.field private mDefaultProgress:I

.field private mHapticFeedbackMode:I

.field private mMax:I

.field private mMin:I

.field private mProgress:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarContentDescription:Ljava/lang/CharSequence;

.field private mSeekBarStateDescription:Ljava/lang/CharSequence;

.field private mShouldBlink:Z

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 95
    sget v0, Landroidx/preference/R$attr;->seekBarPreferenceStyle:I

    const v1, 0x11200cd

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mHapticFeedbackMode:I

    const/4 v1, -0x1

    .line 55
    iput v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mDefaultProgress:I

    .line 59
    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mAccessibilityRangeInfoType:I

    .line 67
    sget-object v1, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 69
    iget v2, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 70
    iget v2, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    .line 71
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    sget-object v1, Lcom/android/internal/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const v2, 0x10900de

    .line 75
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 78
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    sget-object v1, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 82
    sget p2, Lcom/android/settings/R$styleable;->Preference_android_selectable:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 84
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 85
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/SeekBarPreference;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mAccessibilityRangeInfoType:I

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 3

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    const/4 v0, 0x1

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 151
    iput-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mShouldBlink:Z

    return-void
.end method

.method private setProgress(IZ)V
    .locals 1

    .line 257
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    move p1, v0

    .line 260
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_1

    move p1, v0

    .line 263
    :cond_1
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 264
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    .line 265
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    if-eqz p2, :cond_2

    .line 267
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 0

    .line 213
    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    return p0
.end method

.method public getMin()I
    .locals 0

    .line 217
    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    return p0
.end method

.method public getProgress()I
    .locals 0

    .line 273
    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isSelectable()Z
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 114
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$onBindViewHolder$0$SeekBarPreference(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 120
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 121
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x1020462

    .line 122
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 124
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMin(I)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 129
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 135
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarStateDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarStateDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    instance-of v1, v0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    if-eqz v1, :cond_3

    .line 139
    check-cast v0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mDefaultProgress:I

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->setDefaultProgress(I)V

    .line 141
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mShouldBlink:Z

    if-eqz v0, :cond_4

    .line 142
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 143
    new-instance v0, Lcom/android/settings/widget/-$$Lambda$SeekBarPreference$-7Q1A8R-UpwI_wRJqRLshztauoE;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/-$$Lambda$SeekBarPreference$-7Q1A8R-UpwI_wRJqRLshztauoE;-><init>(Lcom/android/settings/widget/SeekBarPreference;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 154
    :cond_4
    iget-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/android/settings/widget/SeekBarPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/SeekBarPreference$1;-><init>(Lcom/android/settings/widget/SeekBarPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    .line 182
    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 187
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const p0, 0x1020462

    .line 191
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/SeekBar;

    if-nez p0, :cond_1

    return v0

    .line 195
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    .line 303
    iget-boolean p2, p0, Lcom/android/settings/widget/SeekBarPreference;->mContinuousUpdates:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/android/settings/widget/SeekBarPreference;->mTrackingTouch:Z

    if-nez p2, :cond_1

    .line 304
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 375
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 382
    :cond_0
    check-cast p1, Lcom/android/settings/widget/SeekBarPreference$SavedState;

    .line 383
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 384
    iget v0, p1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->progress:I

    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    .line 385
    iget v0, p1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->max:I

    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    .line 386
    iget p1, p1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->min:I

    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    .line 387
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 359
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 360
    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 366
    :cond_0
    new-instance v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 367
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    iput v0, v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->progress:I

    .line 368
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    iput v0, v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->max:I

    .line 369
    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    iput p0, v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->min:I

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 176
    iget p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    .line 177
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 176
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 310
    iput-boolean p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 v0, 0x0

    .line 315
    iput-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mTrackingTouch:Z

    .line 316
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 317
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public setContinuousUpdates(Z)V
    .locals 0

    .line 242
    iput-boolean p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mContinuousUpdates:Z

    return-void
.end method

.method public setHapticFeedbackMode(I)V
    .locals 0

    .line 253
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mHapticFeedbackMode:I

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 199
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 200
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    .line 201
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setMin(I)V
    .locals 1

    .line 206
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    if-eq p1, v0, :cond_0

    .line 207
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    .line 208
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 221
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 4

    .line 281
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 282
    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_4

    .line 283
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 284
    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    .line 285
    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mHapticFeedbackMode:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    if-ne v0, p0, :cond_4

    .line 291
    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    goto :goto_0

    .line 296
    :cond_3
    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_4
    :goto_0
    return-void
.end method
