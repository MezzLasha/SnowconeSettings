.class public final synthetic Lcom/android/settings/print/-$$Lambda$PrintServiceSettingsFragment$5_XdFtimDVo_jlFi8EV_IweaF2s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/print/-$$Lambda$PrintServiceSettingsFragment$5_XdFtimDVo_jlFi8EV_IweaF2s;->f$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onBeforeCheckedChanged(Landroid/widget/Switch;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/print/-$$Lambda$PrintServiceSettingsFragment$5_XdFtimDVo_jlFi8EV_IweaF2s;->f$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->lambda$initComponents$0$PrintServiceSettingsFragment(Landroid/widget/Switch;Z)Z

    move-result p0

    return p0
.end method
