.class public final Lcom/google/android/setupdesign/util/BuildCompatUtils;
.super Ljava/lang/Object;
.source "BuildCompatUtils.java"


# direct methods
.method public static isAtLeastS()Z
    .locals 5

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    return v1

    .line 59
    :cond_0
    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v3, "REL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/16 v3, 0x1f

    if-ge v0, v3, :cond_2

    .line 60
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x53

    if-lt v0, v3, :cond_3

    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_3

    :cond_2
    move v1, v4

    :cond_3
    return v1
.end method
