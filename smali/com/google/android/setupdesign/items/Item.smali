.class public Lcom/google/android/setupdesign/items/Item;
.super Lcom/google/android/setupdesign/items/AbstractItem;
.source "Item.java"


# instance fields
.field private enabled:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconGravity:I

.field private iconTint:I

.field private layoutRes:I

.field private summary:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    .line 47
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    const/16 v0, 0x10

    .line 49
    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    .line 53
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getDefaultLayoutResource()I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->layoutRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    .line 47
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    const/16 v2, 0x10

    .line 49
    iput v2, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    .line 58
    sget-object v3, Lcom/google/android/setupdesign/R$styleable;->SudItem:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 59
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_enabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    .line 60
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_icon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 61
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/Item;->title:Ljava/lang/CharSequence;

    .line 62
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_summary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/Item;->summary:Ljava/lang/CharSequence;

    .line 63
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_layout:I

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getDefaultLayoutResource()I

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/items/Item;->layoutRes:I

    .line 64
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_visible:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    .line 65
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudItem_sudIconTint:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    .line 66
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudItem_sudIconGravity:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->isVisible()Z

    move-result p0

    return p0
.end method

.method protected getDefaultLayoutResource()I
    .locals 0

    .line 71
    sget p0, Lcom/google/android/setupdesign/R$layout;->sud_items_default:I

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/google/android/setupdesign/items/Item;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getLayoutResource()I
    .locals 0

    .line 123
    iget p0, p0, Lcom/google/android/setupdesign/items/Item;->layoutRes:I

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/google/android/setupdesign/items/Item;->summary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/google/android/setupdesign/items/Item;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getViewId()I
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->getId()I

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    return p0
.end method

.method public isVisible()Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 5

    .line 169
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 170
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 174
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :goto_0
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_icon_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 184
    sget v3, Lcom/google/android/setupdesign/R$id;->sud_items_icon:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x0

    .line 187
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    invoke-virtual {p0, v3, v1}, Lcom/google/android/setupdesign/items/Item;->onMergeIconStateAndLevels(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 189
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget v1, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {v3}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 195
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 196
    instance-of v3, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_2

    .line 197
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 199
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 201
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 204
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 211
    instance-of p0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;

    if-nez p0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    sget v0, Lcom/google/android/setupdesign/R$id;->sud_layout_header:I

    if-eq p0, v0, :cond_4

    .line 212
    invoke-static {p1}, Lcom/google/android/setupdesign/util/LayoutStyler;->applyPartnerCustomizationLayoutPaddingStyle(Landroid/view/View;)V

    .line 214
    :cond_4
    invoke-static {p1}, Lcom/google/android/setupdesign/util/ItemStyler;->applyPartnerCustomizationItemStyle(Landroid/view/View;)V

    return-void
.end method

.method protected onMergeIconStateAndLevels(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 223
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 224
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method

.method public setIconGravity(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    return-void
.end method
