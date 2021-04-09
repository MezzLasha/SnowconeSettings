.class public Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;
.super Lcom/android/settings/development/qstile/DevelopmentTiles;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/qstile/DevelopmentTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WinscopeTrace"
.end annotation


# static fields
.field static final SURFACE_FLINGER_LAYER_TRACE_CONTROL_CODE:I = 0x401

.field static final SURFACE_FLINGER_LAYER_TRACE_STATUS_CODE:I = 0x402


# instance fields
.field private mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field private mSurfaceFlinger:Landroid/os/IBinder;

.field private mToast:Landroid/widget/Toast;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;-><init>()V

    return-void
.end method

.method private isLayerTraceEnabled()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mSurfaceFlinger:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 235
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v3, "android.ui.ISurfaceComposer"

    .line 236
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 237
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 v3, 0x402

    invoke-interface {p0, v3, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 239
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v2, v0

    :goto_1
    :try_start_2
    const-string v3, "DevelopmentTiles"

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get layer trace status, defaulting to false."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_1
    :goto_2
    return v1

    :catchall_2
    move-exception p0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_3
    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 248
    :cond_2
    throw p0
.end method

.method private isSystemUiTracingEnabled()Z
    .locals 2

    :try_start_0
    const-string p0, "statusbar"

    .line 255
    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 254
    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 257
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->isTracing()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get system ui tracing status."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DevelopmentTiles"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isWindowTraceEnabled()Z
    .locals 2

    .line 220
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {p0}, Landroid/view/IWindowManager;->isWindowTraceEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get window trace status, defaulting to false."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DevelopmentTiles"

    .line 222
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private setImeTraceEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 333
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {p0}, Lcom/android/internal/view/IInputMethodManager;->startImeTrace()V

    goto :goto_0

    .line 335
    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {p0}, Lcom/android/internal/view/IInputMethodManager;->stopImeTrace()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 338
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not set ime trace status."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DevelopmentTiles"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setLayerTraceEnabled(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mSurfaceFlinger:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "android.ui.ISurfaceComposer"

    .line 300
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 301
    :goto_0
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 p1, 0x401

    invoke-interface {p0, p1, v1, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 309
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    :goto_3
    :try_start_2
    const-string p1, "DevelopmentTiles"

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set layer tracing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_4
    return-void

    :goto_5
    if-eqz v0, :cond_3

    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 311
    :cond_3
    throw p0
.end method

.method private setSystemUiTracing(Z)V
    .locals 1

    :try_start_0
    const-string p0, "statusbar"

    .line 317
    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 316
    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 320
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->startTracing()V

    goto :goto_0

    .line 322
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->stopTracing()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 326
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not set system ui tracing."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DevelopmentTiles"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private setWindowTraceEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 286
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {p0}, Landroid/view/IWindowManager;->startWindowTrace()V

    goto :goto_0

    .line 288
    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {p0}, Landroid/view/IWindowManager;->stopWindowTrace()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not set window trace status."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DevelopmentTiles"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected isEnabled()Z
    .locals 1

    .line 279
    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->isWindowTraceEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->isLayerTraceEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->isSystemUiTracingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->isImeTraceEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method isImeTraceEnabled()Z
    .locals 2

    .line 268
    :try_start_0
    invoke-static {}, Lcom/android/internal/inputmethod/Completable;->createBoolean()Lcom/android/internal/inputmethod/Completable$Boolean;

    move-result-object v0

    .line 269
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    invoke-static {v0}, Lcom/android/internal/inputmethod/ResultCallbacks;->of(Lcom/android/internal/inputmethod/Completable$Boolean;)Lcom/android/internal/inputmethod/IBooleanResultCallback$Stub;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/internal/view/IInputMethodManager;->isImeTraceEnabled(Lcom/android/internal/inputmethod/IBooleanResultCallback;)V

    .line 270
    invoke-static {v0}, Lcom/android/internal/inputmethod/Completable;->getResult(Lcom/android/internal/inputmethod/Completable$Values;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "DevelopmentTiles"

    const-string v1, "Could not get ime trace status, defaulting to false."

    .line 272
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate()V
    .locals 3

    .line 208
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    .line 209
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mWindowManager:Landroid/view/IWindowManager;

    const-string v0, "SurfaceFlinger"

    .line 210
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mSurfaceFlinger:Landroid/os/IBinder;

    const-string v0, "input_method"

    .line 212
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 211
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    .line 213
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Trace files written to /data/misc/wmtrace"

    const/4 v2, 0x1

    .line 215
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method protected setIsEnabled(Z)V
    .locals 0

    .line 344
    invoke-direct {p0, p1}, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->setWindowTraceEnabled(Z)V

    .line 345
    invoke-direct {p0, p1}, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->setLayerTraceEnabled(Z)V

    .line 346
    invoke-direct {p0, p1}, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->setSystemUiTracing(Z)V

    .line 347
    invoke-direct {p0, p1}, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->setImeTraceEnabled(Z)V

    if-nez p1, :cond_0

    .line 349
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
