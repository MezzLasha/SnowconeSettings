.class public interface abstract Landroidx/slice/builders/impl/ListBuilder;
.super Ljava/lang/Object;
.source "ListBuilder.java"


# virtual methods
.method public abstract addAction(Landroidx/slice/builders/SliceAction;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation
.end method

.method public abstract addGridRow(Landroidx/slice/builders/GridRowBuilder;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation
.end method

.method public abstract addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation
.end method

.method public abstract addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation
.end method

.method public abstract setColor(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation
.end method

.method public abstract setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation
.end method

.method public abstract setIsError(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isError"
        }
    .end annotation
.end method

.method public abstract setKeywords(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keywords"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTtl(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ttl"
        }
    .end annotation
.end method
