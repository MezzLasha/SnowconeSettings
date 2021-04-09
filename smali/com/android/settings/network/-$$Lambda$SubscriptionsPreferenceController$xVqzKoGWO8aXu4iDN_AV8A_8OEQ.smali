.class public final synthetic Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$xVqzKoGWO8aXu4iDN_AV8A_8OEQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/SubscriptionsPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/SubscriptionsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$xVqzKoGWO8aXu4iDN_AV8A_8OEQ;->f$0:Lcom/android/settings/network/SubscriptionsPreferenceController;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$xVqzKoGWO8aXu4iDN_AV8A_8OEQ;->f$0:Lcom/android/settings/network/SubscriptionsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController;->lambda$updateForProvider$0$SubscriptionsPreferenceController(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
