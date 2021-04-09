.class public final synthetic Lcom/android/settings/display/-$$Lambda$AdaptiveSleepPermissionPreferenceController$P_dAaSIzWjbNao4bkeoIhvrPFDY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/-$$Lambda$AdaptiveSleepPermissionPreferenceController$P_dAaSIzWjbNao4bkeoIhvrPFDY;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/display/-$$Lambda$AdaptiveSleepPermissionPreferenceController$P_dAaSIzWjbNao4bkeoIhvrPFDY;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/-$$Lambda$AdaptiveSleepPermissionPreferenceController$P_dAaSIzWjbNao4bkeoIhvrPFDY;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/display/-$$Lambda$AdaptiveSleepPermissionPreferenceController$P_dAaSIzWjbNao4bkeoIhvrPFDY;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->lambda$new$0(Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
