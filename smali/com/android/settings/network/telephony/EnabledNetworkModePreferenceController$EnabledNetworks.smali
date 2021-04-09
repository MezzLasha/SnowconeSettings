.class final enum Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;
.super Ljava/lang/Enum;
.source "EnabledNetworkModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EnabledNetworks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_4G_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_CDMA_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_CDMA_NO_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_CDMA_ONLY_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_EXCEPT_GSM_4G_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_EXCEPT_GSM_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_EXCEPT_GSM_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_EXCEPT_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_TDSCDMA_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_UNKNOWN:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

.field public static final enum PREFERRED_NETWORK_MODE_CHOICES_WORLD_MODE:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 168
    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    const-string v1, "ENABLED_NETWORKS_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_UNKNOWN:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    .line 169
    new-instance v1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    const-string v3, "ENABLED_NETWORKS_CDMA_CHOICES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_CDMA_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    .line 170
    new-instance v3, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    const-string v5, "ENABLED_NETWORKS_CDMA_NO_LTE_CHOICES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_CDMA_NO_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    .line 171
    new-instance v5, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    const-string v7, "ENABLED_NETWORKS_CDMA_ONLY_LTE_CHOICES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_CDMA_ONLY_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    .line 172
    new-instance v7, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    const-string v9, "ENABLED_NETWORKS_TDSCDMA_CHOICES"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_TDSCDMA_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    .line 173
    new-instance v9, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    const-string v11, "ENABLED_NETWORKS_EXCEPT_GSM_LTE_CHOICES"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    .line 174
    new-instance v11, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    const-string v13, "ENABLED_NETWORKS_EXCEPT_GSM_4G_CHOICES"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_4G_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    .line 175
    new-instance v13, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    const-string v15, "ENABLED_NETWORKS_EXCEPT_GSM_CHOICES"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    .line 176
    new-instance v15, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    const-string v14, "ENABLED_NETWORKS_EXCEPT_LTE_CHOICES"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    .line 177
    new-instance v14, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    const-string v12, "ENABLED_NETWORKS_4G_CHOICES"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_4G_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    .line 178
    new-instance v12, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    const-string v10, "ENABLED_NETWORKS_CHOICES"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->ENABLED_NETWORKS_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    .line 179
    new-instance v10, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    const-string v8, "PREFERRED_NETWORK_MODE_CHOICES_WORLD_MODE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->PREFERRED_NETWORK_MODE_CHOICES_WORLD_MODE:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    .line 167
    sput-object v8, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->$VALUES:[Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;
    .locals 1

    .line 167
    const-class v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;
    .locals 1

    .line 167
    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->$VALUES:[Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    invoke-virtual {v0}, [Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$EnabledNetworks;

    return-object v0
.end method
