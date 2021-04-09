.class public final synthetic Lcom/android/settingslib/license/-$$Lambda$LicenseHtmlGeneratorFromXml$3u4Q3FfSqDXrOmNA8jTRuVAS6ME;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settingslib/license/-$$Lambda$LicenseHtmlGeneratorFromXml$3u4Q3FfSqDXrOmNA8jTRuVAS6ME;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/license/-$$Lambda$LicenseHtmlGeneratorFromXml$3u4Q3FfSqDXrOmNA8jTRuVAS6ME;

    invoke-direct {v0}, Lcom/android/settingslib/license/-$$Lambda$LicenseHtmlGeneratorFromXml$3u4Q3FfSqDXrOmNA8jTRuVAS6ME;-><init>()V

    sput-object v0, Lcom/android/settingslib/license/-$$Lambda$LicenseHtmlGeneratorFromXml$3u4Q3FfSqDXrOmNA8jTRuVAS6ME;->INSTANCE:Lcom/android/settingslib/license/-$$Lambda$LicenseHtmlGeneratorFromXml$3u4Q3FfSqDXrOmNA8jTRuVAS6ME;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->lambda$parse$0(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
