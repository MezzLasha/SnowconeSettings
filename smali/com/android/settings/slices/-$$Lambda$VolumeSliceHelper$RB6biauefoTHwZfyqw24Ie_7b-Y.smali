.class public final synthetic Lcom/android/settings/slices/-$$Lambda$VolumeSliceHelper$RB6biauefoTHwZfyqw24Ie_7b-Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/slices/-$$Lambda$VolumeSliceHelper$RB6biauefoTHwZfyqw24Ie_7b-Y;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/slices/-$$Lambda$VolumeSliceHelper$RB6biauefoTHwZfyqw24Ie_7b-Y;->f$0:Landroid/content/Context;

    check-cast p1, Landroid/net/Uri;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p0, p1, p2}, Lcom/android/settings/slices/VolumeSliceHelper;->lambda$notifyAllStreamsChanged$0(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Integer;)V

    return-void
.end method
