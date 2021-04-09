.class Landroidx/appcompat/widget/AppCompatEditor;
.super Ljava/lang/Object;
.source "AppCompatEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatEditor$Api24Impl;
    }
.end annotation


# instance fields
.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatEditor;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .line 69
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 70
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 71
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 72
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 74
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 3

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_2

    .line 50
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 51
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditor;->mTextView:Landroid/widget/TextView;

    .line 52
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getOnReceiveContentMimeTypes(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No activity so not calling performReceiveContent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppCompatEditor"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 64
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatEditor;->mTextView:Landroid/widget/TextView;

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/AppCompatEditor$Api24Impl;->onDrop(Landroid/view/DragEvent;Landroid/widget/TextView;Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method
