.class public final synthetic Lcom/android/settings/location/-$$Lambda$LocationSettings$g4KVkxqE8C9kFZKF4bO1d06SKYA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/location/-$$Lambda$LocationSettings$g4KVkxqE8C9kFZKF4bO1d06SKYA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/location/-$$Lambda$LocationSettings$g4KVkxqE8C9kFZKF4bO1d06SKYA;

    invoke-direct {v0}, Lcom/android/settings/location/-$$Lambda$LocationSettings$g4KVkxqE8C9kFZKF4bO1d06SKYA;-><init>()V

    sput-object v0, Lcom/android/settings/location/-$$Lambda$LocationSettings$g4KVkxqE8C9kFZKF4bO1d06SKYA;->INSTANCE:Lcom/android/settings/location/-$$Lambda$LocationSettings$g4KVkxqE8C9kFZKF4bO1d06SKYA;

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

    check-cast p1, Landroidx/preference/Preference;

    invoke-static {p1}, Lcom/android/settings/location/LocationSettings;->lambda$addPreferencesSorted$0(Landroidx/preference/Preference;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
