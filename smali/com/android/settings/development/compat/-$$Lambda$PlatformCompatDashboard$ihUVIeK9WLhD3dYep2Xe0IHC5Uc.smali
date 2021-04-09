.class public final synthetic Lcom/android/settings/development/compat/-$$Lambda$PlatformCompatDashboard$ihUVIeK9WLhD3dYep2Xe0IHC5Uc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/development/compat/PlatformCompatDashboard;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/development/compat/PlatformCompatDashboard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/compat/-$$Lambda$PlatformCompatDashboard$ihUVIeK9WLhD3dYep2Xe0IHC5Uc;->f$0:Lcom/android/settings/development/compat/PlatformCompatDashboard;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/compat/-$$Lambda$PlatformCompatDashboard$ihUVIeK9WLhD3dYep2Xe0IHC5Uc;->f$0:Lcom/android/settings/development/compat/PlatformCompatDashboard;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->lambda$createAppPreference$2$PlatformCompatDashboard(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
