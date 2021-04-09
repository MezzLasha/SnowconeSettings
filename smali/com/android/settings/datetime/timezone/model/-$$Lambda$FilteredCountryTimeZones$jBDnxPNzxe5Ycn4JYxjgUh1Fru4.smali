.class public final synthetic Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$jBDnxPNzxe5Ycn4JYxjgUh1Fru4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$jBDnxPNzxe5Ycn4JYxjgUh1Fru4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$jBDnxPNzxe5Ycn4JYxjgUh1Fru4;

    invoke-direct {v0}, Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$jBDnxPNzxe5Ycn4JYxjgUh1Fru4;-><init>()V

    sput-object v0, Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$jBDnxPNzxe5Ycn4JYxjgUh1Fru4;->INSTANCE:Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$jBDnxPNzxe5Ycn4JYxjgUh1Fru4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->lambda$new$0(Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;)Z

    move-result p0

    return p0
.end method
