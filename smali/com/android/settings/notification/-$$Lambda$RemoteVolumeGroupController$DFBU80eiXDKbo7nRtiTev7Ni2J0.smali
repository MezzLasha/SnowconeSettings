.class public final synthetic Lcom/android/settings/notification/-$$Lambda$RemoteVolumeGroupController$DFBU80eiXDKbo7nRtiTev7Ni2J0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/RemoteVolumeGroupController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/RemoteVolumeGroupController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$RemoteVolumeGroupController$DFBU80eiXDKbo7nRtiTev7Ni2J0;->f$0:Lcom/android/settings/notification/RemoteVolumeGroupController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/-$$Lambda$RemoteVolumeGroupController$DFBU80eiXDKbo7nRtiTev7Ni2J0;->f$0:Lcom/android/settings/notification/RemoteVolumeGroupController;

    invoke-virtual {p0}, Lcom/android/settings/notification/RemoteVolumeGroupController;->lambda$onDeviceListUpdate$1$RemoteVolumeGroupController()V

    return-void
.end method
