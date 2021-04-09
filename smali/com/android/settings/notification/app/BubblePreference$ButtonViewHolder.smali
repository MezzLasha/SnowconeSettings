.class Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;
.super Ljava/lang/Object;
.source "BubblePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/app/BubblePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonViewHolder"
.end annotation


# instance fields
.field private mId:I

.field private mImageView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/notification/app/BubblePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/app/BubblePreference;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;I)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->this$0:Lcom/android/settings/notification/app/BubblePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->mView:Landroid/view/View;

    .line 160
    iput-object p3, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 161
    iput-object p4, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->mTextView:Landroid/widget/TextView;

    .line 162
    iput p5, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->mId:I

    return-void
.end method


# virtual methods
.method setSelected(Landroid/content/Context;Z)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->this$0:Lcom/android/settings/notification/app/BubblePreference;

    invoke-static {v1}, Lcom/android/settings/notification/app/BubblePreference;->access$000(Lcom/android/settings/notification/app/BubblePreference;)Landroid/content/Context;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 167
    sget v2, Lcom/android/settingslib/R$drawable;->button_border_selected:I

    goto :goto_0

    .line 168
    :cond_0
    sget v2, Lcom/android/settingslib/R$drawable;->button_border_unselected:I

    .line 166
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    if-eqz p2, :cond_1

    .line 172
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_1

    :cond_1
    const p2, 0x1010036

    .line 173
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 174
    :goto_1
    iget-object p2, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 175
    iget-object p0, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
