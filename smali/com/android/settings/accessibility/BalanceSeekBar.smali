.class public Lcom/android/settings/accessibility/BalanceSeekBar;
.super Landroid/widget/SeekBar;
.source "BalanceSeekBar.java"


# static fields
.field static final SNAP_TO_PERCENTAGE:F = 0.03f


# instance fields
.field private mCenter:I

.field private final mCenterMarkerPaint:Landroid/graphics/Paint;

.field private final mCenterMarkerRect:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mLastProgress:I

.field private final mListenerLock:Ljava/lang/Object;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSnapThreshold:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007b

    .line 111
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/accessibility/BalanceSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/accessibility/BalanceSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mListenerLock:Ljava/lang/Object;

    const/4 p2, -0x1

    .line 48
    iput p2, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mLastProgress:I

    .line 49
    new-instance p3, Lcom/android/settings/accessibility/BalanceSeekBar$1;

    invoke-direct {p3, p0}, Lcom/android/settings/accessibility/BalanceSeekBar$1;-><init>(Lcom/android/settings/accessibility/BalanceSeekBar;)V

    iput-object p3, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 120
    iput-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcom/android/settings/R$dimen;->balance_seekbar_center_marker_width:I

    .line 123
    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/settings/R$dimen;->balance_seekbar_center_marker_height:I

    .line 124
    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenterMarkerRect:Landroid/graphics/Rect;

    .line 125
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    iput-object p4, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenterMarkerPaint:Landroid/graphics/Paint;

    .line 127
    invoke-static {p1}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, -0x1000000

    :goto_0
    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 132
    invoke-super {p0, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/BalanceSeekBar;)Ljava/lang/Object;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/BalanceSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/BalanceSeekBar;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenter:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/BalanceSeekBar;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mSnapThreshold:F

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/BalanceSeekBar;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mLastProgress:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/settings/accessibility/BalanceSeekBar;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mLastProgress:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/BalanceSeekBar;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    monitor-enter p0

    .line 155
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenterMarkerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenterMarkerRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenterMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 161
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMax(I)V
    .locals 1

    monitor-enter p0

    .line 145
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 147
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenter:I

    int-to-float p1, p1

    const v0, 0x3cf5c28f    # 0.03f

    mul-float/2addr p1, v0

    .line 148
    iput p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mSnapThreshold:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iput-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 139
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
