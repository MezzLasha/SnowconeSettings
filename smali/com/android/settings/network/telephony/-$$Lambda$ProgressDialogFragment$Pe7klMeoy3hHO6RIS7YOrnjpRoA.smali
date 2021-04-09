.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$ProgressDialogFragment$Pe7klMeoy3hHO6RIS7YOrnjpRoA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$ProgressDialogFragment$Pe7klMeoy3hHO6RIS7YOrnjpRoA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$ProgressDialogFragment$Pe7klMeoy3hHO6RIS7YOrnjpRoA;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/-$$Lambda$ProgressDialogFragment$Pe7klMeoy3hHO6RIS7YOrnjpRoA;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/-$$Lambda$ProgressDialogFragment$Pe7klMeoy3hHO6RIS7YOrnjpRoA;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$ProgressDialogFragment$Pe7klMeoy3hHO6RIS7YOrnjpRoA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/settings/network/telephony/ProgressDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
