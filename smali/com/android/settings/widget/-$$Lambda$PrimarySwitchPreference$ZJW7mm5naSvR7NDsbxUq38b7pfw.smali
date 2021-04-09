.class public final synthetic Lcom/android/settings/widget/-$$Lambda$PrimarySwitchPreference$ZJW7mm5naSvR7NDsbxUq38b7pfw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/widget/-$$Lambda$PrimarySwitchPreference$ZJW7mm5naSvR7NDsbxUq38b7pfw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/widget/-$$Lambda$PrimarySwitchPreference$ZJW7mm5naSvR7NDsbxUq38b7pfw;

    invoke-direct {v0}, Lcom/android/settings/widget/-$$Lambda$PrimarySwitchPreference$ZJW7mm5naSvR7NDsbxUq38b7pfw;-><init>()V

    sput-object v0, Lcom/android/settings/widget/-$$Lambda$PrimarySwitchPreference$ZJW7mm5naSvR7NDsbxUq38b7pfw;->INSTANCE:Lcom/android/settings/widget/-$$Lambda$PrimarySwitchPreference$ZJW7mm5naSvR7NDsbxUq38b7pfw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/settings/widget/PrimarySwitchPreference;->lambda$onBindViewHolder$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
