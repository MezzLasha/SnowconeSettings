.class public final synthetic Lcom/android/settings/shortcut/-$$Lambda$CreateShortcutPreferenceController$UPdzeGPbYPEv1PqS5VJO5ICmS1s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/shortcut/-$$Lambda$CreateShortcutPreferenceController$UPdzeGPbYPEv1PqS5VJO5ICmS1s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/shortcut/-$$Lambda$CreateShortcutPreferenceController$UPdzeGPbYPEv1PqS5VJO5ICmS1s;

    invoke-direct {v0}, Lcom/android/settings/shortcut/-$$Lambda$CreateShortcutPreferenceController$UPdzeGPbYPEv1PqS5VJO5ICmS1s;-><init>()V

    sput-object v0, Lcom/android/settings/shortcut/-$$Lambda$CreateShortcutPreferenceController$UPdzeGPbYPEv1PqS5VJO5ICmS1s;->INSTANCE:Lcom/android/settings/shortcut/-$$Lambda$CreateShortcutPreferenceController$UPdzeGPbYPEv1PqS5VJO5ICmS1s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-static {p1, p2}, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->lambda$static$1(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p0

    return p0
.end method
