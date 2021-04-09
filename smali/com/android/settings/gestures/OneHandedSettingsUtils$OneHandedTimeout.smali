.class public final enum Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;
.super Ljava/lang/Enum;
.source "OneHandedSettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gestures/OneHandedSettingsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OneHandedTimeout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

.field public static final enum LONG:Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

.field public static final enum MEDIUM:Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

.field public static final enum NEVER:Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

.field public static final enum SHORT:Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 33
    new-instance v0, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    const-string v1, "NEVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->NEVER:Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    new-instance v1, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    const-string v3, "SHORT"

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-direct {v1, v3, v4, v5}, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->SHORT:Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    new-instance v3, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    const-string v6, "MEDIUM"

    const/4 v7, 0x2

    const/16 v8, 0x8

    invoke-direct {v3, v6, v7, v8}, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->MEDIUM:Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    new-instance v6, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    const-string v8, "LONG"

    const/4 v9, 0x3

    const/16 v10, 0xc

    invoke-direct {v6, v8, v9, v10}, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->LONG:Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    new-array v5, v5, [Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v7

    aput-object v6, v5, v9

    .line 32
    sput-object v5, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->$VALUES:[Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;
    .locals 1

    .line 32
    const-class v0, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->$VALUES:[Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    invoke-virtual {v0}, [Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 42
    iget p0, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->mValue:I

    return p0
.end method
