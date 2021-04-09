.class public final enum Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;
.super Ljava/lang/Enum;
.source "PartnerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum BOOL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum FRACTION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum ILLUSTRATION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum INTEGER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum STRING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 277
    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->INTEGER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 278
    new-instance v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v3, "BOOL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->BOOL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 279
    new-instance v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v5, "COLOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 280
    new-instance v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v7, "DRAWABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 281
    new-instance v7, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v9, "STRING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->STRING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 282
    new-instance v9, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v11, "DIMENSION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 283
    new-instance v11, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "FRACTION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->FRACTION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 284
    new-instance v13, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v15, "ILLUSTRATION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->ILLUSTRATION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 276
    sput-object v15, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->$VALUES:[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 276
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;
    .locals 1

    .line 276
    const-class v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;
    .locals 1

    .line 276
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->$VALUES:[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    invoke-virtual {v0}, [Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    return-object v0
.end method
