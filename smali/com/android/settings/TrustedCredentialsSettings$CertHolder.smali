.class Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CertHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

.field private final mAlias:Ljava/lang/String;

.field private mDeleted:Z

.field public mProfileId:I

.field private final mService:Landroid/security/IKeyChainService;

.field private final mSslCert:Landroid/net/http/SslCertificate;

.field private final mSubjectPrimary:Ljava/lang/String;

.field private final mSubjectSecondary:Ljava/lang/String;

.field private final mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field private final mX509Cert:Ljava/security/cert/X509Certificate;


# direct methods
.method private constructor <init>(Landroid/security/IKeyChainService;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;I)V
    .locals 2

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    iput p6, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    .line 845
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mService:Landroid/security/IKeyChainService;

    .line 846
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    .line 847
    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 848
    iput-object p4, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    .line 849
    iput-object p5, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;

    .line 851
    new-instance p2, Landroid/net/http/SslCertificate;

    invoke-direct {p2, p5}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    .line 853
    invoke-virtual {p2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object p5

    invoke-virtual {p5}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object p5

    .line 854
    invoke-virtual {p2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object p6

    invoke-virtual {p6}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object p6

    .line 855
    invoke-virtual {p2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v0

    .line 859
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 860
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 861
    iput-object p6, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 862
    iput-object p5, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    .line 864
    :cond_0
    iput-object p6, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 865
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    .line 868
    :cond_1
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    const-string v0, ""

    if-nez p6, :cond_2

    .line 869
    iput-object p5, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 870
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    .line 872
    :cond_2
    invoke-virtual {p2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 873
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    .line 877
    :goto_0
    :try_start_0
    invoke-static {p3, p1, p4}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$3400(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 879
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Remote exception while checking if alias "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is deleted."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TrustedCredentialsSettings"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 881
    iput-boolean p1, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/security/IKeyChainService;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;ILcom/android/settings/TrustedCredentialsSettings$1;)V
    .locals 0

    .line 825
    invoke-direct/range {p0 .. p6}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;-><init>(Landroid/security/IKeyChainService;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z
    .locals 0

    .line 825
    iget-boolean p0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Z)Z
    .locals 0

    .line 825
    iput-boolean p1, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/security/cert/X509Certificate;
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2

    .line 885
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 889
    :cond_0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 825
    check-cast p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->compareTo(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 892
    instance-of v0, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 895
    :cond_0
    check-cast p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 896
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 0

    .line 907
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 903
    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 899
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isDeleted()Z
    .locals 0

    .line 915
    iget-boolean p0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    return p0
.end method

.method public isSystemCert()Z
    .locals 1

    .line 911
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
