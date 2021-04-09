.class public final synthetic Lcom/android/settings/display/-$$Lambda$AdaptiveSleepPreferenceController$3EuADL9wkzyZt2NU8_EyCRbDvOc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/-$$Lambda$AdaptiveSleepPreferenceController$3EuADL9wkzyZt2NU8_EyCRbDvOc;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/-$$Lambda$AdaptiveSleepPreferenceController$3EuADL9wkzyZt2NU8_EyCRbDvOc;->f$0:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->lambda$new$0(Landroid/content/Context;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
