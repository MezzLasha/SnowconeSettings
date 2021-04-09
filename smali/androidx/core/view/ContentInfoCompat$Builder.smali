.class public final Landroidx/core/view/ContentInfoCompat$Builder;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mClip:Landroid/content/ClipData;

.field mExtras:Landroid/os/Bundle;

.field mFlags:I

.field mLinkUri:Landroid/net/Uri;

.field mSource:I


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mClip:Landroid/content/ClipData;

    .line 295
    iput p2, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mSource:I

    return-void
.end method


# virtual methods
.method public build()Landroidx/core/view/ContentInfoCompat;
    .locals 1

    .line 365
    new-instance v0, Landroidx/core/view/ContentInfoCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/ContentInfoCompat;-><init>(Landroidx/core/view/ContentInfoCompat$Builder;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 0

    .line 356
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setFlags(I)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 0

    .line 331
    iput p1, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mFlags:I

    return-object p0
.end method

.method public setLinkUri(Landroid/net/Uri;)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 0

    .line 344
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mLinkUri:Landroid/net/Uri;

    return-object p0
.end method
