.class public final synthetic Lcom/android/settings/display/-$$Lambda$TwilightLocationPreferenceController$URxYIusWhd8OfMT5GbDGFFDfu58;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/TwilightLocationPreferenceController;

.field public final synthetic f$1:Lcom/android/settingslib/widget/BannerMessagePreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/TwilightLocationPreferenceController;Lcom/android/settingslib/widget/BannerMessagePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/-$$Lambda$TwilightLocationPreferenceController$URxYIusWhd8OfMT5GbDGFFDfu58;->f$0:Lcom/android/settings/display/TwilightLocationPreferenceController;

    iput-object p2, p0, Lcom/android/settings/display/-$$Lambda$TwilightLocationPreferenceController$URxYIusWhd8OfMT5GbDGFFDfu58;->f$1:Lcom/android/settingslib/widget/BannerMessagePreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/-$$Lambda$TwilightLocationPreferenceController$URxYIusWhd8OfMT5GbDGFFDfu58;->f$0:Lcom/android/settings/display/TwilightLocationPreferenceController;

    iget-object p0, p0, Lcom/android/settings/display/-$$Lambda$TwilightLocationPreferenceController$URxYIusWhd8OfMT5GbDGFFDfu58;->f$1:Lcom/android/settingslib/widget/BannerMessagePreference;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/display/TwilightLocationPreferenceController;->lambda$displayPreference$0$TwilightLocationPreferenceController(Lcom/android/settingslib/widget/BannerMessagePreference;Landroid/view/View;)V

    return-void
.end method
