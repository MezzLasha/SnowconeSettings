.class public Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "MediaRouteDynamicControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RouteComparator;,
        Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;,
        Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaControllerCallback;,
        Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouterCallback;,
        Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;,
        Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;,
        Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$VolumeChangeListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field mAdapter:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

.field mArtIconBackgroundColor:I

.field mArtIconBitmap:Landroid/graphics/Bitmap;

.field mArtIconIsLoaded:Z

.field mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

.field mArtIconUri:Landroid/net/Uri;

.field mArtView:Landroid/widget/ImageView;

.field private mAttachedToWindow:Z

.field private final mCallback:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouterCallback;

.field private mCloseButton:Landroid/widget/ImageButton;

.field mContext:Landroid/content/Context;

.field mControllerCallback:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaControllerCallback;

.field private mCreated:Z

.field mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

.field mFetchArtTask:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;

.field final mGroupableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field mIsAnimatingVolumeSliderLayout:Z

.field mIsSelectingRoute:Z

.field private mLastUpdateTime:J

.field mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

.field final mMemberRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMetadataBackground:Landroid/widget/ImageView;

.field private mMetadataBlackScrim:Landroid/view/View;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mRouteForVolumeUpdatingByUser:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field final mRouter:Landroidx/mediarouter/media/MediaRouter;

.field mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field private mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field private mStopCastingButton:Landroid/widget/Button;

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitlePlaceholder:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field final mTransferableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUngroupableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUnmutedVolumeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateMetadataViewsDeferred:Z

.field private mUpdateRoutesViewDeferred:Z

.field mVolumeChangeListener:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$VolumeChangeListener;

.field mVolumeSliderHolderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaRouteCtrlDialog"

    const/4 v1, 0x3

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "theme"
        }
    .end annotation

    const/4 v0, 0x0

    .line 219
    invoke-static {p1, p2, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedDialogContext(Landroid/content/Context;IZ)Landroid/content/Context;

    move-result-object p1

    .line 220
    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedDialogStyle(Landroid/content/Context;)I

    move-result p2

    .line 219
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 124
    sget-object p1, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 127
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMemberRoutes:Ljava/util/List;

    .line 129
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mGroupableRoutes:Ljava/util/List;

    .line 131
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mTransferableRoutes:Ljava/util/List;

    .line 135
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mUngroupableRoutes:Ljava/util/List;

    .line 143
    new-instance p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$1;

    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$1;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;)V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mHandler:Landroid/os/Handler;

    .line 221
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    .line 223
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 224
    new-instance p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouterCallback;

    invoke-direct {p2, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouterCallback;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;)V

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouterCallback;

    .line 225
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p2

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 226
    new-instance p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaControllerCallback;

    invoke-direct {p2, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaControllerCallback;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;)V

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mControllerCallback:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaControllerCallback;

    .line 227
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method private static blurBitmap(Landroid/graphics/Bitmap;FLandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "radius",
            "context"
        }
    .end annotation

    .line 657
    invoke-static {p2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p2

    .line 658
    invoke-static {p2, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 661
    invoke-static {p2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    .line 662
    invoke-virtual {v2, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 663
    invoke-virtual {v2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 664
    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 666
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 667
    invoke-virtual {v1, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 669
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 670
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 671
    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 672
    invoke-virtual {p2}, Landroid/renderscript/RenderScript;->destroy()V

    return-object p0
.end method

.method static isBitmapRecycled(Landroid/graphics/Bitmap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 416
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static setLayoutHeight(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "height"
        }
    .end annotation

    .line 534
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 535
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 536
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionToken"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 239
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mControllerCallback:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaControllerCallback;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 240
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 245
    :cond_1
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mAttachedToWindow:Z

    if-nez v0, :cond_2

    return-void

    .line 248
    :cond_2
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 249
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mControllerCallback:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaControllerCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 250
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 251
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 252
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->reloadIconIfNeeded()V

    .line 253
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateMetadataViews()V

    return-void
.end method

.method private shouldDeferUpdateViews()Z
    .locals 2

    .line 456
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouteForVolumeUpdatingByUser:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mIsSelectingRoute:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mIsAnimatingVolumeSliderLayout:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    iget-boolean p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mCreated:Z

    xor-int/2addr p0, v1

    return p0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method clearLoadedBitmap()V
    .locals 2

    const/4 v0, 0x0

    .line 443
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconIsLoaded:Z

    const/4 v1, 0x0

    .line 444
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    .line 445
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconBackgroundColor:I

    return-void
.end method

.method getCurrentGroupableRoutes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .line 580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 581
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProvider()Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 582
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 583
    invoke-virtual {v3, v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 584
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->isGroupable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 585
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 396
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mAttachedToWindow:Z

    .line 399
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouterCallback;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 400
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateRoutes()V

    .line 401
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 332
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 334
    sget p1, Landroidx/mediarouter/R$layout;->mr_cast_dialog:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 335
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->setDialogBackgroundColor(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 337
    sget p1, Landroidx/mediarouter/R$id;->mr_cast_close_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mCloseButton:Landroid/widget/ImageButton;

    const/4 v0, -0x1

    .line 338
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 339
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$2;

    invoke-direct {v1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$2;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    sget p1, Landroidx/mediarouter/R$id;->mr_cast_stop_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    .line 346
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 347
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    new-instance v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$3;

    invoke-direct {v1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$3;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    new-instance p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;)V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

    .line 358
    sget p1, Landroidx/mediarouter/R$id;->mr_cast_list:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 359
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 360
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 361
    new-instance p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$VolumeChangeListener;

    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$VolumeChangeListener;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;)V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mVolumeChangeListener:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$VolumeChangeListener;

    .line 362
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mVolumeSliderHolderMap:Ljava/util/Map;

    .line 363
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mUnmutedVolumeMap:Ljava/util/Map;

    .line 365
    sget p1, Landroidx/mediarouter/R$id;->mr_cast_meta_background:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMetadataBackground:Landroid/widget/ImageView;

    .line 366
    sget p1, Landroidx/mediarouter/R$id;->mr_cast_meta_black_scrim:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMetadataBlackScrim:Landroid/view/View;

    .line 367
    sget p1, Landroidx/mediarouter/R$id;->mr_cast_meta_art:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtView:Landroid/widget/ImageView;

    .line 368
    sget p1, Landroidx/mediarouter/R$id;->mr_cast_meta_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mTitleView:Landroid/widget/TextView;

    .line 369
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    sget p1, Landroidx/mediarouter/R$id;->mr_cast_meta_subtitle:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    .line 371
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 372
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 373
    sget v0, Landroidx/mediarouter/R$string;->mr_cast_dialog_title_view_placeholder:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mTitlePlaceholder:Ljava/lang/String;

    const/4 p1, 0x1

    .line 375
    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mCreated:Z

    .line 376
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateLayout()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 406
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 407
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mAttachedToWindow:Z

    .line 409
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 410
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 411
    invoke-direct {p0, v1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method public onFilterRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "route"
        }
    .end annotation

    .line 326
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 327
    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onFilterRoutes(Ljava/util/List;)V
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
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 307
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 308
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, v1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->onFilterRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method reloadIconIfNeeded()V
    .locals 4

    .line 421
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 422
    :goto_0
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    .line 423
    :goto_1
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 424
    :goto_2
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;

    if-nez v3, :cond_3

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconUri:Landroid/net/Uri;

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->getIconUri()Landroid/net/Uri;

    move-result-object v3

    :goto_3
    if-ne v2, v0, :cond_5

    if-nez v2, :cond_4

    .line 427
    invoke-static {v3, v1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    return-void

    .line 430
    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    .line 431
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 433
    :cond_6
    new-instance v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 434
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selector"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 286
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 289
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 291
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouterCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 293
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateRoutes()V

    :cond_0
    return-void

    .line 283
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "selector must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method updateLayout()V
    .locals 3

    .line 383
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getDialogWidthForDynamicGroup(Landroid/content/Context;)I

    move-result v0

    .line 384
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getDialogHeight(Landroid/content/Context;)I

    move-result v1

    .line 385
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    const/4 v0, 0x0

    .line 387
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    .line 388
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconUri:Landroid/net/Uri;

    .line 389
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->reloadIconIfNeeded()V

    .line 390
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateMetadataViews()V

    .line 391
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateRoutesView()V

    return-void
.end method

.method updateMetadataViews()V
    .locals 7

    .line 478
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->shouldDeferUpdateViews()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 479
    iput-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mUpdateMetadataViewsDeferred:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 482
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mUpdateMetadataViewsDeferred:Z

    .line 484
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 485
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 487
    :cond_2
    iget-boolean v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconIsLoaded:Z

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->isBitmapRecycled(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 489
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtView:Landroid/widget/ImageView;

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 491
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtView:Landroid/widget/ImageView;

    iget v5, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconBackgroundColor:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 496
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMetadataBlackScrim:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 497
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v2, v5, :cond_3

    .line 498
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    const/high16 v5, 0x41200000    # 10.0f

    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->blurBitmap(Landroid/graphics/Bitmap;FLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 499
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMetadataBackground:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 501
    :cond_3
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMetadataBackground:Landroid/widget/ImageView;

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 504
    :cond_4
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->isBitmapRecycled(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t set artwork image with recycled bitmap: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "MediaRouteCtrlDialog"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_5
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMetadataBlackScrim:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 509
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMetadataBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 511
    :goto_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->clearLoadedBitmap()V

    .line 513
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v2, :cond_6

    move-object v2, v3

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 514
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v1

    .line 516
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v6}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 517
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v1, v6

    if-eqz v5, :cond_8

    .line 520
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 522
    :cond_8
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mTitlePlaceholder:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    if-eqz v1, :cond_9

    .line 525
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 528
    :cond_9
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method updateRoutes()V
    .locals 4

    .line 625
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMemberRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 626
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mGroupableRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 627
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mTransferableRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 629
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMemberRoutes:Ljava/util/List;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 630
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProvider()Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 631
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 632
    invoke-virtual {v2, v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 635
    :cond_1
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->isGroupable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 636
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mGroupableRoutes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    :cond_2
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->isTransferable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mTransferableRoutes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 644
    :cond_3
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mGroupableRoutes:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->onFilterRoutes(Ljava/util/List;)V

    .line 645
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mTransferableRoutes:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->onFilterRoutes(Ljava/util/List;)V

    .line 648
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMemberRoutes:Ljava/util/List;

    sget-object v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RouteComparator;->sInstance:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RouteComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 649
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mGroupableRoutes:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 650
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mTransferableRoutes:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 652
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->updateItems()V

    return-void
.end method

.method updateRoutesView()V
    .locals 6

    .line 597
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_4

    .line 598
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-ltz v0, :cond_3

    .line 599
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->shouldDeferUpdateViews()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iput-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mUpdateRoutesViewDeferred:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 603
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mUpdateRoutesViewDeferred:Z

    .line 605
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 608
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mLastUpdateTime:J

    .line 609
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->notifyAdapterDataSetChanged()V

    goto :goto_0

    .line 611
    :cond_3
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 612
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mLastUpdateTime:J

    add-long/2addr v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_4
    :goto_0
    return-void
.end method

.method updateViewsIfNeeded()V
    .locals 1

    .line 467
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mUpdateRoutesViewDeferred:Z

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateRoutesView()V

    .line 471
    :cond_0
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mUpdateMetadataViewsDeferred:Z

    if-eqz v0, :cond_1

    .line 472
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateMetadataViews()V

    :cond_1
    return-void
.end method
