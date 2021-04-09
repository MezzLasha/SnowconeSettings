.class public final synthetic Lcom/android/settings/sound/-$$Lambda$ResumableMediaAppsController$FeIYlhsN1qus7ahgm1-7Gb_nAqk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/sound/ResumableMediaAppsController;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/sound/ResumableMediaAppsController;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/sound/-$$Lambda$ResumableMediaAppsController$FeIYlhsN1qus7ahgm1-7Gb_nAqk;->f$0:Lcom/android/settings/sound/ResumableMediaAppsController;

    iput-object p2, p0, Lcom/android/settings/sound/-$$Lambda$ResumableMediaAppsController$FeIYlhsN1qus7ahgm1-7Gb_nAqk;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sound/-$$Lambda$ResumableMediaAppsController$FeIYlhsN1qus7ahgm1-7Gb_nAqk;->f$0:Lcom/android/settings/sound/ResumableMediaAppsController;

    iget-object p0, p0, Lcom/android/settings/sound/-$$Lambda$ResumableMediaAppsController$FeIYlhsN1qus7ahgm1-7Gb_nAqk;->f$1:Ljava/util/Set;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/sound/ResumableMediaAppsController;->lambda$displayPreference$0$ResumableMediaAppsController(Ljava/util/Set;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
