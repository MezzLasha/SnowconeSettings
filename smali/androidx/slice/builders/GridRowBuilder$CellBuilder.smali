.class public Landroidx/slice/builders/GridRowBuilder$CellBuilder;
.super Ljava/lang/Object;
.source "GridRowBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/GridRowBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellBuilder"
.end annotation


# instance fields
.field private mCellDescription:Ljava/lang/CharSequence;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private final mLoadings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSliceAction:Landroidx/slice/builders/SliceAction;

.field private final mTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mObjects:Ljava/util/List;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mTypes:Ljava/util/List;

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mLoadings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTitleText(Ljava/lang/CharSequence;)Landroidx/slice/builders/GridRowBuilder$CellBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->addTitleText(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    move-result-object p0

    return-object p0
.end method

.method public addTitleText(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/GridRowBuilder$CellBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "isLoading"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object p1, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mTypes:Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object p1, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mLoadings:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getCellDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 496
    iget-object p0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mCellDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 504
    iget-object p0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mContentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getLoadings()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 488
    iget-object p0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mLoadings:Ljava/util/List;

    return-object p0
.end method

.method public getObjects()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 472
    iget-object p0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mObjects:Ljava/util/List;

    return-object p0
.end method

.method public getSliceAction()Landroidx/slice/builders/SliceAction;
    .locals 0

    .line 541
    iget-object p0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mSliceAction:Landroidx/slice/builders/SliceAction;

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    .line 527
    :goto_0
    iget-object v1, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 528
    iget-object v1, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mTypes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 529
    iget-object p0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mObjects:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x0

    .line 513
    :goto_0
    iget-object v1, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 514
    iget-object v1, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mTypes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 515
    iget-object p0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mObjects:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 480
    iget-object p0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mTypes:Ljava/util/List;

    return-object p0
.end method
