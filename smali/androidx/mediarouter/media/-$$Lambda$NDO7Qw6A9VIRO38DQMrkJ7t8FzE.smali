.class public final synthetic Landroidx/mediarouter/media/-$$Lambda$NDO7Qw6A9VIRO38DQMrkJ7t8FzE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;


# direct methods
.method public synthetic constructor <init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/-$$Lambda$NDO7Qw6A9VIRO38DQMrkJ7t8FzE;->f$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/media/-$$Lambda$NDO7Qw6A9VIRO38DQMrkJ7t8FzE;->f$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
