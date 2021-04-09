.class public final synthetic Lcom/android/settings/display/-$$Lambda$ScreenTimeoutSettings$Q4KBM4_18BhzdZ5tKaYCcBXAa5I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/ScreenTimeoutSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/ScreenTimeoutSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/-$$Lambda$ScreenTimeoutSettings$Q4KBM4_18BhzdZ5tKaYCcBXAa5I;->f$0:Lcom/android/settings/display/ScreenTimeoutSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/-$$Lambda$ScreenTimeoutSettings$Q4KBM4_18BhzdZ5tKaYCcBXAa5I;->f$0:Lcom/android/settings/display/ScreenTimeoutSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/display/ScreenTimeoutSettings;->lambda$updateCandidates$1$ScreenTimeoutSettings(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
