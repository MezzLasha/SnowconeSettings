.class public final synthetic Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$SYsjSkvNF96ydrfyqjWEFveuL_w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$SYsjSkvNF96ydrfyqjWEFveuL_w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$SYsjSkvNF96ydrfyqjWEFveuL_w;

    invoke-direct {v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$SYsjSkvNF96ydrfyqjWEFveuL_w;-><init>()V

    sput-object v0, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$SYsjSkvNF96ydrfyqjWEFveuL_w;->INSTANCE:Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$SYsjSkvNF96ydrfyqjWEFveuL_w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->lambda$bindPreference$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
