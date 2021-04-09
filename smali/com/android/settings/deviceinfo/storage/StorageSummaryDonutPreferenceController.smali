.class public Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "StorageSummaryDonutPreferenceController.java"


# instance fields
.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

.field private mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

.field private mTotalBytes:J

.field private mUsedBytes:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 51
    new-instance p2, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-direct {p2, p1}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    return-void
.end method

.method public static convertUsedBytesToFormattedText(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 2

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    .line 63
    sget p2, Lcom/android/settings/R$string;->storage_size_large_alternate:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v0, p2, v1

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p2, v0

    invoke-static {p0, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$displayPreference$0()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private synthetic lambda$displayPreference$1()V
    .locals 5

    .line 73
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v0

    .line 76
    iget-wide v1, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iget-wide v3, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    .line 77
    iput-wide v1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mTotalBytes:J

    sub-long/2addr v1, v3

    .line 78
    iput-wide v1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mUsedBytes:J

    .line 80
    new-instance v0, Lcom/android/settings/deviceinfo/storage/-$$Lambda$StorageSummaryDonutPreferenceController$iHTAPRSAbL1a16NY2NgWY4ys0RA;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/storage/-$$Lambda$StorageSummaryDonutPreferenceController$iHTAPRSAbL1a16NY2NgWY4ys0RA;-><init>(Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 72
    new-instance p1, Lcom/android/settings/deviceinfo/storage/-$$Lambda$StorageSummaryDonutPreferenceController$trI0LfuGTEYdYFRKMgKQlQzx_sw;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/storage/-$$Lambda$StorageSummaryDonutPreferenceController$trI0LfuGTEYdYFRKMgKQlQzx_sw;-><init>(Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public invalidateData()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$displayPreference$0$StorageSummaryDonutPreferenceController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->lambda$displayPreference$0()V

    return-void
.end method

.method public synthetic lambda$displayPreference$1$StorageSummaryDonutPreferenceController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->lambda$displayPreference$1()V

    return-void
.end method

.method public updateBytes(JJ)V
    .locals 0

    .line 115
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mUsedBytes:J

    .line 116
    iput-wide p3, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mTotalBytes:J

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->invalidateData()V

    return-void
.end method

.method public updateSizes(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Landroid/os/storage/VolumeInfo;)V
    .locals 6

    .line 126
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    .line 127
    invoke-interface {p1}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->getPrimaryStorageSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 133
    :goto_0
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide p1

    sub-long p1, v0, p1

    .line 134
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->updateBytes(JJ)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 88
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 89
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mUsedBytes:J

    invoke-static {v0, v1, v2}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->convertUsedBytesToFormattedText(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->storage_volume_total:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mTotalBytes:J

    .line 91
    invoke-static {v0, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 90
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    iget-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mUsedBytes:J

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mTotalBytes:J

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setPercent(JJ)V

    .line 93
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
