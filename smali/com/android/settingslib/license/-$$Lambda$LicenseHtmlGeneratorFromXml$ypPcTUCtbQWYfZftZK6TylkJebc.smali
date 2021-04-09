.class public final synthetic Lcom/android/settingslib/license/-$$Lambda$LicenseHtmlGeneratorFromXml$ypPcTUCtbQWYfZftZK6TylkJebc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settingslib/license/-$$Lambda$LicenseHtmlGeneratorFromXml$ypPcTUCtbQWYfZftZK6TylkJebc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/license/-$$Lambda$LicenseHtmlGeneratorFromXml$ypPcTUCtbQWYfZftZK6TylkJebc;

    invoke-direct {v0}, Lcom/android/settingslib/license/-$$Lambda$LicenseHtmlGeneratorFromXml$ypPcTUCtbQWYfZftZK6TylkJebc;-><init>()V

    sput-object v0, Lcom/android/settingslib/license/-$$Lambda$LicenseHtmlGeneratorFromXml$ypPcTUCtbQWYfZftZK6TylkJebc;->INSTANCE:Lcom/android/settingslib/license/-$$Lambda$LicenseHtmlGeneratorFromXml$ypPcTUCtbQWYfZftZK6TylkJebc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Set;

    check-cast p2, Ljava/util/Set;

    invoke-static {p1, p2}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->lambda$parse$1(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
