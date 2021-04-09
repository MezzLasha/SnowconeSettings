.class public final synthetic Lcom/android/settings/deviceinfo/legal/-$$Lambda$ModuleLicensesPreferenceController$Wy65JG7212_yRehznnVeoqTGWEE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/deviceinfo/legal/-$$Lambda$ModuleLicensesPreferenceController$Wy65JG7212_yRehznnVeoqTGWEE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/deviceinfo/legal/-$$Lambda$ModuleLicensesPreferenceController$Wy65JG7212_yRehznnVeoqTGWEE;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/legal/-$$Lambda$ModuleLicensesPreferenceController$Wy65JG7212_yRehznnVeoqTGWEE;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/legal/-$$Lambda$ModuleLicensesPreferenceController$Wy65JG7212_yRehznnVeoqTGWEE;->INSTANCE:Lcom/android/settings/deviceinfo/legal/-$$Lambda$ModuleLicensesPreferenceController$Wy65JG7212_yRehznnVeoqTGWEE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/pm/ModuleInfo;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController;->lambda$displayPreference$0(Landroid/content/pm/ModuleInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
