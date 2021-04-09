.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$ToggleReduceBrightColorsPreferenceFragment$pkR04dMpP0iZqBfpMoj7o8EAXDI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/-$$Lambda$ToggleReduceBrightColorsPreferenceFragment$pkR04dMpP0iZqBfpMoj7o8EAXDI;->f$0:Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/-$$Lambda$ToggleReduceBrightColorsPreferenceFragment$pkR04dMpP0iZqBfpMoj7o8EAXDI;->f$0:Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->lambda$onInstallSwitchPreferenceToggleSwitch$0$ToggleReduceBrightColorsPreferenceFragment(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
