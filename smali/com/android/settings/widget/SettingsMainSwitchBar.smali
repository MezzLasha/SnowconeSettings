.class public Lcom/android/settings/widget/SettingsMainSwitchBar;
.super Lcom/android/settingslib/widget/MainSwitchBar;
.source "SettingsMainSwitchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mMetricsTag:Ljava/lang/String;

.field private mOnBeforeListener:Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/widget/MainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const p1, 0x1020040

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mSwitch:Landroid/widget/Switch;

    .line 71
    new-instance p1, Lcom/android/settings/widget/-$$Lambda$SettingsMainSwitchBar$QQMX2o9DO-qiIUYettEqpHCgU7Q;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/-$$Lambda$SettingsMainSwitchBar$QQMX2o9DO-qiIUYettEqpHCgU7Q;-><init>(Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/widget/Switch;Z)V
    .locals 0

    .line 71
    invoke-direct {p0, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->logMetrics(Z)V

    return-void
.end method

.method private logMetrics(Z)V
    .locals 6

    .line 122
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsTag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/switch_bar"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const/16 v2, 0x355

    const/4 v3, 0x0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 0

    .line 111
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$SettingsMainSwitchBar(Landroid/widget/Switch;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->lambda$new$0(Landroid/widget/Switch;Z)V

    return-void
.end method

.method protected onRestrictedIconClick()V
    .locals 6

    .line 76
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsTag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/switch_bar|restricted"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const/16 v2, 0x355

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mOnBeforeListener:Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mSwitch:Landroid/widget/Switch;

    .line 87
    invoke-interface {v0, v1, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Landroid/widget/Switch;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->setChecked(Z)V

    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->setChecked(Z)V

    return-void
.end method

.method public setMetricsTag(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsTag:Ljava/lang/String;

    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mOnBeforeListener:Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;

    return-void
.end method
