.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$_wjTpI0VzG8EOcdUM_eq9aNXUUs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field public final synthetic f$1:Lcom/android/settingslib/drawer/Tile;

.field public final synthetic f$2:Landroidx/preference/Preference;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$_wjTpI0VzG8EOcdUM_eq9aNXUUs;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$_wjTpI0VzG8EOcdUM_eq9aNXUUs;->f$1:Lcom/android/settingslib/drawer/Tile;

    iput-object p3, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$_wjTpI0VzG8EOcdUM_eq9aNXUUs;->f$2:Landroidx/preference/Preference;

    iput-boolean p4, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$_wjTpI0VzG8EOcdUM_eq9aNXUUs;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$_wjTpI0VzG8EOcdUM_eq9aNXUUs;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$_wjTpI0VzG8EOcdUM_eq9aNXUUs;->f$1:Lcom/android/settingslib/drawer/Tile;

    iget-object v2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$_wjTpI0VzG8EOcdUM_eq9aNXUUs;->f$2:Landroidx/preference/Preference;

    iget-boolean p0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$_wjTpI0VzG8EOcdUM_eq9aNXUUs;->f$3:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindIcon$11$DashboardFeatureProviderImpl(Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;Z)V

    return-void
.end method
