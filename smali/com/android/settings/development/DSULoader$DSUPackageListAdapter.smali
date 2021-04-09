.class Lcom/android/settings/development/DSULoader$DSUPackageListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DSULoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/DSULoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DSUPackageListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/development/DSULoader;


# direct methods
.method constructor <init>(Lcom/android/settings/development/DSULoader;Landroid/content/Context;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/android/settings/development/DSULoader$DSUPackageListAdapter;->this$0:Lcom/android/settings/development/DSULoader;

    const/4 p1, 0x0

    .line 396
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const-string p1, "layout_inflater"

    .line 397
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/development/DSULoader$DSUPackageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 402
    iget-object p3, p0, Lcom/android/settings/development/DSULoader$DSUPackageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p3, p2}, Lcom/android/settings/development/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/development/AppViewHolder;

    move-result-object p2

    .line 403
    iget-object p3, p2, Lcom/android/settings/development/AppViewHolder;->rootView:Landroid/view/View;

    .line 404
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .line 405
    instance-of p1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;

    if-eqz p1, :cond_0

    .line 406
    check-cast p0, Lcom/android/settings/development/DSULoader$DSUPackage;

    .line 407
    iget-object p1, p2, Lcom/android/settings/development/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object p1, p2, Lcom/android/settings/development/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mDetails:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 410
    :cond_0
    check-cast p0, Ljava/lang/String;

    .line 411
    iget-object p1, p2, Lcom/android/settings/development/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :goto_0
    iget-object p0, p2, Lcom/android/settings/development/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    iget-object p0, p2, Lcom/android/settings/development/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p3
.end method
