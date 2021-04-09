.class public Lcom/android/settings/wifi/slice/WifiSliceItem;
.super Ljava/lang/Object;
.source "WifiSliceItem.java"


# static fields
.field private static final WIFI_CONNECTION_STRENGTH:[I


# instance fields
.field private final mConnectedState:I

.field private final mContext:Landroid/content/Context;

.field private final mKey:Ljava/lang/String;

.field private final mLevel:I

.field private final mSecurity:I

.field private final mShouldEditBeforeConnect:Z

.field private final mSummary:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 41
    sget v1, Lcom/android/settingslib/R$string;->accessibility_no_wifi:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_one_bar:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_two_bars:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_three_bars:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_signal_full:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/slice/WifiSliceItem;->WIFI_CONNECTION_STRENGTH:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mKey:Ljava/lang/String;

    .line 52
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mTitle:Ljava/lang/String;

    .line 53
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSecurity:I

    .line 54
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mConnectedState:I

    .line 55
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mLevel:I

    .line 56
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->shouldEditBeforeConnect()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mShouldEditBeforeConnect:Z

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p2, p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSummary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 62
    instance-of v0, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 66
    :cond_0
    check-cast p1, Lcom/android/settings/wifi/slice/WifiSliceItem;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getLevel()I

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    .line 76
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getSummary()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public getConnectedState()I
    .locals 0

    .line 95
    iget p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mConnectedState:I

    return p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 9

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mTitle:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSummary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, ","

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-nez v1, :cond_0

    new-array v1, v6, [Ljava/lang/CharSequence;

    aput-object v0, v1, v5

    aput-object v3, v1, v4

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSummary:Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 127
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mLevel:I

    if-ltz v1, :cond_1

    sget-object v7, Lcom/android/settings/wifi/slice/WifiSliceItem;->WIFI_CONNECTION_STRENGTH:[I

    array-length v8, v7

    if-ge v1, v8, :cond_1

    new-array v8, v6, [Ljava/lang/CharSequence;

    aput-object v0, v8, v5

    aput-object v3, v8, v4

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mContext:Landroid/content/Context;

    aget v1, v7, v1

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    .line 128
    invoke-static {v8}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    new-array v1, v6, [Ljava/lang/CharSequence;

    aput-object v0, v1, v5

    aput-object v3, v1, v4

    .line 131
    iget v0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSecurity:I

    if-nez v0, :cond_2

    .line 132
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/R$string;->accessibility_wifi_security_type_none:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 133
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/R$string;->accessibility_wifi_security_type_secured:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    aput-object p0, v1, v2

    .line 131
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getLevel()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mLevel:I

    return p0
.end method

.method public getSecurity()I
    .locals 0

    .line 91
    iget p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSecurity:I

    return p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public shouldEditBeforeConnect()Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mShouldEditBeforeConnect:Z

    return p0
.end method
