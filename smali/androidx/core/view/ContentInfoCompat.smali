.class public final Landroidx/core/view/ContentInfoCompat;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ContentInfoCompat$Builder;
    }
.end annotation


# instance fields
.field final mClip:Landroid/content/ClipData;

.field final mExtras:Landroid/os/Bundle;

.field final mFlags:I

.field final mLinkUri:Landroid/net/Uri;

.field final mSource:I


# direct methods
.method constructor <init>(Landroidx/core/view/ContentInfoCompat$Builder;)V
    .locals 4

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iget-object v0, p1, Landroidx/core/view/ContentInfoCompat$Builder;->mClip:Landroid/content/ClipData;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mClip:Landroid/content/ClipData;

    .line 139
    iget v0, p1, Landroidx/core/view/ContentInfoCompat$Builder;->mSource:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "source"

    invoke-static {v0, v1, v2, v3}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/view/ContentInfoCompat;->mSource:I

    .line 141
    iget v0, p1, Landroidx/core/view/ContentInfoCompat$Builder;->mFlags:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkFlagsArgument(II)I

    move-result v0

    iput v0, p0, Landroidx/core/view/ContentInfoCompat;->mFlags:I

    .line 142
    iget-object v0, p1, Landroidx/core/view/ContentInfoCompat$Builder;->mLinkUri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mLinkUri:Landroid/net/Uri;

    .line 143
    iget-object p1, p1, Landroidx/core/view/ContentInfoCompat$Builder;->mExtras:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method static flagsToString(I)Ljava/lang/String;
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const-string p0, "FLAG_CONVERT_TO_PLAIN_TEXT"

    return-object p0

    .line 123
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static sourceToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 93
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SOURCE_DRAG_AND_DROP"

    return-object p0

    :cond_1
    const-string p0, "SOURCE_INPUT_METHOD"

    return-object p0

    :cond_2
    const-string p0, "SOURCE_CLIPBOARD"

    return-object p0

    :cond_3
    const-string p0, "SOURCE_APP"

    return-object p0
.end method


# virtual methods
.method public getClip()Landroid/content/ClipData;
    .locals 0

    .line 163
    iget-object p0, p0, Landroidx/core/view/ContentInfoCompat;->mClip:Landroid/content/ClipData;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    .line 180
    iget p0, p0, Landroidx/core/view/ContentInfoCompat;->mFlags:I

    return p0
.end method

.method public getSource()I
    .locals 0

    .line 172
    iget p0, p0, Landroidx/core/view/ContentInfoCompat;->mSource:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentInfoCompat{clip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/view/ContentInfoCompat;->mClip:Landroid/content/ClipData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/view/ContentInfoCompat;->mSource:I

    .line 151
    invoke-static {v1}, Landroidx/core/view/ContentInfoCompat;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/view/ContentInfoCompat;->mFlags:I

    .line 152
    invoke-static {v1}, Landroidx/core/view/ContentInfoCompat;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", linkUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/view/ContentInfoCompat;->mLinkUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/core/view/ContentInfoCompat;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
