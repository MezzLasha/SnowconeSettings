.class final Landroidx/appcompat/widget/AppCompatEditor$Api24Impl;
.super Ljava/lang/Object;
.source "AppCompatEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api24Impl"
.end annotation


# direct methods
.method static onDrop(Landroid/view/DragEvent;Landroid/widget/TextView;Landroid/app/Activity;)Z
    .locals 2

    .line 85
    invoke-virtual {p0}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/DragEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 86
    invoke-virtual {p2, p0}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 87
    invoke-virtual {p1}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 89
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Landroid/text/Spannable;

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 90
    invoke-virtual {p0}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p0

    .line 91
    new-instance p2, Landroidx/core/view/ContentInfoCompat$Builder;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 92
    invoke-virtual {p2}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object p0

    .line 93
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {p1}, Landroid/widget/TextView;->endBatchEdit()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/widget/TextView;->endBatchEdit()V

    .line 96
    throw p0
.end method
