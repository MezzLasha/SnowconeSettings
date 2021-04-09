.class public final synthetic Lcom/android/settings/deviceinfo/-$$Lambda$HardwareInfoPreferenceController$XSTrNtLTE2g-7D9I5462CdgAuAo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/deviceinfo/-$$Lambda$HardwareInfoPreferenceController$XSTrNtLTE2g-7D9I5462CdgAuAo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/deviceinfo/-$$Lambda$HardwareInfoPreferenceController$XSTrNtLTE2g-7D9I5462CdgAuAo;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/-$$Lambda$HardwareInfoPreferenceController$XSTrNtLTE2g-7D9I5462CdgAuAo;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/-$$Lambda$HardwareInfoPreferenceController$XSTrNtLTE2g-7D9I5462CdgAuAo;->INSTANCE:Lcom/android/settings/deviceinfo/-$$Lambda$HardwareInfoPreferenceController$XSTrNtLTE2g-7D9I5462CdgAuAo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/android/settings/deviceinfo/HardwareInfoPreferenceController;->lambda$getDeviceModel$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
