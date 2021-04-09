.class interface abstract Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;
.super Ljava/lang/Object;
.source "CursorFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/cursoradapter/widget/CursorFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CursorFilterClient"
.end annotation


# virtual methods
.method public abstract changeCursor(Landroid/database/Cursor;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cursor"
        }
    .end annotation
.end method

.method public abstract convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cursor"
        }
    .end annotation
.end method

.method public abstract getCursor()Landroid/database/Cursor;
.end method

.method public abstract runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constraint"
        }
    .end annotation
.end method
