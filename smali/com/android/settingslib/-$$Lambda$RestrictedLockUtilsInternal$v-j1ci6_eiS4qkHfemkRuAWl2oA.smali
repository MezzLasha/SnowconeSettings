.class public final synthetic Lcom/android/settingslib/-$$Lambda$RestrictedLockUtilsInternal$v-j1ci6_eiS4qkHfemkRuAWl2oA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settingslib/RestrictedLockUtilsInternal$LockSettingCheck;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settingslib/-$$Lambda$RestrictedLockUtilsInternal$v-j1ci6_eiS4qkHfemkRuAWl2oA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/-$$Lambda$RestrictedLockUtilsInternal$v-j1ci6_eiS4qkHfemkRuAWl2oA;

    invoke-direct {v0}, Lcom/android/settingslib/-$$Lambda$RestrictedLockUtilsInternal$v-j1ci6_eiS4qkHfemkRuAWl2oA;-><init>()V

    sput-object v0, Lcom/android/settingslib/-$$Lambda$RestrictedLockUtilsInternal$v-j1ci6_eiS4qkHfemkRuAWl2oA;->INSTANCE:Lcom/android/settingslib/-$$Lambda$RestrictedLockUtilsInternal$v-j1ci6_eiS4qkHfemkRuAWl2oA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnforcing(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->lambda$checkIfMaximumTimeToLockIsSet$2(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method
