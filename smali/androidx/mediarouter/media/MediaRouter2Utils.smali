.class Landroidx/mediarouter/media/MediaRouter2Utils;
.super Ljava/lang/Object;
.source "MediaRouter2Utils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method static getRouteIds(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 212
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 215
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    if-nez v1, :cond_1

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static toDiscoveryPreference(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)Landroid/media/RouteDiscoveryPreference;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "discoveryRequest"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 242
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 245
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v0

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteSelector;->getControlCategories()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 249
    invoke-static {v2}, Landroidx/mediarouter/media/MediaRouter2Utils;->toRouteFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_1
    new-instance p0, Landroid/media/RouteDiscoveryPreference$Builder;

    invoke-direct {p0, v1, v0}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p0}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object p0

    return-object p0

    .line 243
    :cond_2
    :goto_1
    new-instance p0, Landroid/media/RouteDiscoveryPreference$Builder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p0}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object p0

    return-object p0
.end method

.method public static toMediaRouteDescriptor(Landroid/media/MediaRoute2Info;)Landroidx/mediarouter/media/MediaRouteDescriptor;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fwkMediaRoute2Info"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 126
    :cond_0
    new-instance v1, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 127
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getConnectionState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setConnectionState(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    move-result-object v1

    .line 129
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getVolumeHandling()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setVolumeHandling(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    move-result-object v1

    .line 130
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getVolumeMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setVolumeMax(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    move-result-object v1

    .line 131
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setVolume(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    move-result-object v1

    .line 132
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 133
    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setEnabled(Z)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    move-result-object v1

    const/4 v3, 0x0

    .line 134
    invoke-virtual {v1, v3}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setCanDisconnect(Z)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 138
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setDescription(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 141
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getIconUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 143
    invoke-virtual {v1, v4}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setIconUri(Landroid/net/Uri;)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 146
    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string v4, "androidx.mediarouter.media.KEY_EXTRAS"

    .line 147
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "androidx.mediarouter.media.KEY_DEVICE_TYPE"

    .line 148
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "androidx.mediarouter.media.KEY_CONTROL_FILTERS"

    .line 149
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 155
    invoke-virtual {p0, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setDeviceType(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    const-string v0, "androidx.mediarouter.media.KEY_PLAYBACK_TYPE"

    .line 156
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setPlaybackType(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 159
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 161
    invoke-virtual {v1, p0}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->addControlFilters(Ljava/util/Collection;)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 168
    :cond_4
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->build()Landroidx/mediarouter/media/MediaRouteDescriptor;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    return-object v0
.end method

.method static toRouteFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controlCategory"
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object p0

    :pswitch_0
    const-string p0, "android.media.route.feature.LIVE_VIDEO"

    return-object p0

    :pswitch_1
    const-string p0, "android.media.route.feature.LIVE_AUDIO"

    return-object p0

    :pswitch_2
    const-string p0, "android.media.route.feature.REMOTE_PLAYBACK"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b1e3633 -> :sswitch_2
        0x3909bb2a -> :sswitch_1
        0x3a2c33cf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
