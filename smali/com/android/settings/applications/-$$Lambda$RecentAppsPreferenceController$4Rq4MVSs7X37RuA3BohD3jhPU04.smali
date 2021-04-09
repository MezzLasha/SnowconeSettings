.class public final synthetic Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$4Rq4MVSs7X37RuA3BohD3jhPU04;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/RecentAppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$4Rq4MVSs7X37RuA3BohD3jhPU04;->f$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    iput-object p2, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$4Rq4MVSs7X37RuA3BohD3jhPU04;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$4Rq4MVSs7X37RuA3BohD3jhPU04;->f$2:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$4Rq4MVSs7X37RuA3BohD3jhPU04;->f$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$4Rq4MVSs7X37RuA3BohD3jhPU04;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$4Rq4MVSs7X37RuA3BohD3jhPU04;->f$2:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/settings/applications/RecentAppsPreferenceController;->lambda$createAppEntity$1$RecentAppsPreferenceController(Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/view/View;)V

    return-void
.end method
