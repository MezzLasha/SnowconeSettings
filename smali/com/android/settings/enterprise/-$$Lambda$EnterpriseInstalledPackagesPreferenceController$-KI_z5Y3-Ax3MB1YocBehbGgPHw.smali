.class public final synthetic Lcom/android/settings/enterprise/-$$Lambda$EnterpriseInstalledPackagesPreferenceController$-KI_z5Y3-Ax3MB1YocBehbGgPHw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/enterprise/-$$Lambda$EnterpriseInstalledPackagesPreferenceController$-KI_z5Y3-Ax3MB1YocBehbGgPHw;->f$0:[Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final onNumberOfAppsResult(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/enterprise/-$$Lambda$EnterpriseInstalledPackagesPreferenceController$-KI_z5Y3-Ax3MB1YocBehbGgPHw;->f$0:[Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->lambda$isAvailable$1([Ljava/lang/Boolean;I)V

    return-void
.end method