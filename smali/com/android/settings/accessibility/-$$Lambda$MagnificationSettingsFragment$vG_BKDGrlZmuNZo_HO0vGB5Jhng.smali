.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$vG_BKDGrlZmuNZo_HO0vGB5Jhng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/MagnificationSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/MagnificationSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$vG_BKDGrlZmuNZo_HO0vGB5Jhng;->f$0:Lcom/android/settings/accessibility/MagnificationSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$vG_BKDGrlZmuNZo_HO0vGB5Jhng;->f$0:Lcom/android/settings/accessibility/MagnificationSettingsFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->lambda$initModePreference$0$MagnificationSettingsFragment(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
