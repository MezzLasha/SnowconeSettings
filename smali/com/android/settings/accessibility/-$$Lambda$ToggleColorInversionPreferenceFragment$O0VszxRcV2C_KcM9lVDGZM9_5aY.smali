.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$ToggleColorInversionPreferenceFragment$O0VszxRcV2C_KcM9lVDGZM9_5aY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/-$$Lambda$ToggleColorInversionPreferenceFragment$O0VszxRcV2C_KcM9lVDGZM9_5aY;->f$0:Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/-$$Lambda$ToggleColorInversionPreferenceFragment$O0VszxRcV2C_KcM9lVDGZM9_5aY;->f$0:Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;->lambda$onInstallSwitchPreferenceToggleSwitch$0$ToggleColorInversionPreferenceFragment(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
