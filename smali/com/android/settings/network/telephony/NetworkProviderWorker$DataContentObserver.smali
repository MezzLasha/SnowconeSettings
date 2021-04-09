.class public Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;
.super Landroid/database/ContentObserver;
.source "NetworkProviderWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/NetworkProviderWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataContentObserver"
.end annotation


# instance fields
.field private final mNetworkProviderWorker:Lcom/android/settings/network/telephony/NetworkProviderWorker;

.field final synthetic this$0:Lcom/android/settings/network/telephony/NetworkProviderWorker;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/NetworkProviderWorker;Landroid/os/Handler;Lcom/android/settings/network/telephony/NetworkProviderWorker;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;->this$0:Lcom/android/settings/network/telephony/NetworkProviderWorker;

    .line 186
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 187
    iput-object p3, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;->mNetworkProviderWorker:Lcom/android/settings/network/telephony/NetworkProviderWorker;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;->mNetworkProviderWorker:Lcom/android/settings/network/telephony/NetworkProviderWorker;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateSlice()V

    return-void
.end method

.method public register(Landroid/content/Context;I)V
    .locals 1

    .line 202
    invoke-static {p1, p2}, Lcom/android/settings/network/MobileDataContentObserver;->getObservableUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 0

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
