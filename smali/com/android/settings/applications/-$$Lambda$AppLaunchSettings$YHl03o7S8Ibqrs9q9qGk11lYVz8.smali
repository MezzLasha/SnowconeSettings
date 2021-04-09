.class public final synthetic Lcom/android/settings/applications/-$$Lambda$AppLaunchSettings$YHl03o7S8Ibqrs9q9qGk11lYVz8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/AppLaunchSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/AppLaunchSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$$Lambda$AppLaunchSettings$YHl03o7S8Ibqrs9q9qGk11lYVz8;->f$0:Lcom/android/settings/applications/AppLaunchSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/-$$Lambda$AppLaunchSettings$YHl03o7S8Ibqrs9q9qGk11lYVz8;->f$0:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppLaunchSettings;->lambda$onCreate$0$AppLaunchSettings(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
