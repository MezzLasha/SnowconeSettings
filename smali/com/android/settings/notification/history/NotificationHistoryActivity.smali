.class public Lcom/android/settings/notification/history/NotificationHistoryActivity;
.super Landroid/app/Activity;
.source "NotificationHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "NotifHistory"


# instance fields
.field private mCountdownFuture:Ljava/util/concurrent/Future;

.field private mCountdownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mDismissView:Landroid/view/ViewGroup;

.field private mHistoryEmpty:Landroid/view/ViewGroup;

.field private mHistoryLoader:Lcom/android/settings/notification/history/HistoryLoader;

.field private mHistoryOff:Landroid/view/ViewGroup;

.field private mHistoryOn:Landroid/view/ViewGroup;

.field private final mListener:Landroid/service/notification/NotificationListenerService;

.field private mNm:Landroid/app/INotificationManager;

.field private mOnHistoryLoaderListener:Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;

.field private final mOnSwitchClickListener:Lcom/android/settingslib/widget/OnMainSwitchChangeListener;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSnoozeView:Landroid/view/ViewGroup;

.field private mSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

.field private mTodayView:Landroid/view/ViewGroup;

.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 131
    new-instance v0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$-qAmMZg5kUoyyaOUBNGHXaB6z0o;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$-qAmMZg5kUoyyaOUBNGHXaB6z0o;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mOnHistoryLoaderListener:Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;

    .line 328
    new-instance v0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$FD5W5oWDDR8gzMfo6CpbGr20M1U;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$FD5W5oWDDR8gzMfo6CpbGr20M1U;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mOnSwitchClickListener:Lcom/android/settingslib/widget/OnMainSwitchChangeListener;

    .line 356
    new-instance v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mListener:Landroid/service/notification/NotificationListenerService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/app/INotificationManager;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mNm:Landroid/app/INotificationManager;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSnoozeView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/os/UserManager;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUm:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mDismissView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mCountdownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private bindSwitch()V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0}, Lcom/android/settingslib/widget/MainSwitchBar;->show()V

    .line 304
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    sget v1, Lcom/android/settings/R$string;->notification_history_toggle:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/String;)V

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mOnSwitchClickListener:Lcom/android/settingslib/widget/OnMainSwitchChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :catch_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_history_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/MainSwitchBar;->setChecked(Z)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/MainSwitchBar;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->toggleViews(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lcom/android/settings/notification/history/NotificationHistoryPackage;ILandroid/view/View;)V
    .locals 0

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p6

    if-nez p6, :cond_0

    const/16 p6, 0x8

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    invoke-virtual {p1, p6}, Landroid/view/View;->setVisibility(I)V

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p6

    if-nez p6, :cond_1

    .line 170
    sget p6, Lcom/android/settings/R$drawable;->ic_expand_less:I

    goto :goto_1

    :cond_1
    const p6, 0x108039b

    .line 169
    :goto_1
    invoke-virtual {p2, p6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    .line 173
    sget p2, Lcom/android/settings/R$string;->condition_expand_hide:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 174
    :cond_2
    sget p2, Lcom/android/settings/R$string;->condition_expand_show:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 172
    :goto_2
    invoke-virtual {p3, p2}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    const p2, 0x8000

    .line 175
    invoke-virtual {p3, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 176
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 177
    sget-object p1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_PACKAGE_HISTORY_OPEN:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    goto :goto_3

    .line 178
    :cond_3
    sget-object p1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_PACKAGE_HISTORY_CLOSE:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    :goto_3
    iget p2, p4, Lcom/android/settings/notification/history/NotificationHistoryPackage;->uid:I

    iget-object p3, p4, Lcom/android/settings/notification/history/NotificationHistoryPackage;->pkgName:Ljava/lang/String;

    .line 176
    invoke-interface {p0, p1, p2, p3, p5}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/widget/TextView;Landroid/view/View;I)V
    .locals 4

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$plurals;->notification_history_count:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 199
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 197
    invoke-virtual {p0, v0, p3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p3, :cond_0

    const/16 p0, 0x8

    .line 201
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Ljava/util/List;)V
    .locals 17

    move-object/from16 v7, p0

    .line 132
    sget v0, Lcom/android/settings/R$id;->today_list:I

    invoke-virtual {v7, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 133
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v8, 0x8

    if-eqz v1, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 132
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, v7, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mCountdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 135
    iget-object v0, v7, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 136
    iget-object v0, v7, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;

    invoke-direct {v1, v7}, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 153
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_3

    move-object/from16 v13, p1

    .line 154
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/settings/notification/history/NotificationHistoryPackage;

    .line 155
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->notification_history_app_layout:I

    const/4 v2, 0x0

    .line 156
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 158
    sget v6, Lcom/android/settings/R$id;->notification_list:I

    invoke-virtual {v15, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 159
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 160
    sget v0, Lcom/android/settings/R$id;->app_header:I

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 161
    sget v0, Lcom/android/settings/R$id;->expand:I

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    .line 162
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 163
    sget v0, Lcom/android/settings/R$string;->condition_expand_hide:I

    invoke-virtual {v7, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 164
    :cond_1
    sget v0, Lcom/android/settings/R$string;->condition_expand_show:I

    invoke-virtual {v7, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 166
    new-instance v4, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$-M3mzkOTtwRWVT6bCCW-6FxrAxQ;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v8, v4

    move-object v4, v5

    move-object v9, v5

    move-object v5, v14

    move/from16 v16, v6

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$-M3mzkOTtwRWVT6bCCW-6FxrAxQ;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lcom/android/settings/notification/history/NotificationHistoryPackage;I)V

    invoke-virtual {v9, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    sget v0, Lcom/android/settings/R$id;->label:I

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 183
    iget-object v1, v14, Lcom/android/settings/notification/history/NotificationHistoryPackage;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, v14, Lcom/android/settings/notification/history/NotificationHistoryPackage;->pkgName:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v1, v7, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget v3, v14, Lcom/android/settings/notification/history/NotificationHistoryPackage;->uid:I

    .line 185
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 184
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 186
    sget v0, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 187
    iget-object v1, v14, Lcom/android/settings/notification/history/NotificationHistoryPackage;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    sget v0, Lcom/android/settings/R$id;->count:I

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$plurals;->notification_history_count:I

    iget-object v3, v14, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    .line 191
    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, v14, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 190
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move/from16 v1, v16

    .line 194
    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    .line 195
    new-instance v2, Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    iget-object v3, v7, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mNm:Landroid/app/INotificationManager;

    new-instance v4, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$uT4gmsfn-bDl5iZaTTGVgOFQ1kc;

    invoke-direct {v4, v7, v0, v15}, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$uT4gmsfn-bDl5iZaTTGVgOFQ1kc;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;Landroid/widget/TextView;Landroid/view/View;)V

    iget-object v0, v7, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-direct {v2, v3, v1, v4, v0}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;-><init>(Landroid/app/INotificationManager;Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;Lcom/android/settings/notification/history/NotificationHistoryAdapter$OnItemDeletedListener;Lcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 204
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v14, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->onRebuildComplete(Ljava/util/List;)V

    .line 207
    iget-object v0, v7, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v12, v12, 0x1

    const/16 v8, 0x8

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/widget/Switch;Z)V
    .locals 3

    const-string p1, "notification_history_enabled"

    const/4 v0, 0x0

    .line 332
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    if-eq v1, p2, :cond_1

    .line 338
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_ON:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    goto :goto_1

    .line 341
    :cond_0
    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_OFF:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    .line 340
    :goto_1
    invoke-interface {p1, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 342
    sget-object p1, Lcom/android/settings/notification/history/NotificationHistoryActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchChange history to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 347
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 348
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOff:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 350
    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOff:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 351
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 353
    :goto_2
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private synthetic lambda$onResume$3()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/MainSwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$id;->today_list:I

    .line 264
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSnoozeView:Landroid/view/ViewGroup;

    .line 265
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mDismissView:Landroid/view/ViewGroup;

    .line 266
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 268
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onResume$4()V
    .locals 4

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mCountdownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 260
    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity;->TAG:Ljava/lang/String;

    const-string v2, "timed out waiting for loading"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    :goto_0
    new-instance v0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$bTa8TY00tr-d7SmToW6lYQFEOdo;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$bTa8TY00tr-d7SmToW6lYQFEOdo;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private toggleViews(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 318
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOff:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 319
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 321
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 322
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOff:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 323
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 325
    :goto_0
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$NotificationHistoryActivity(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lcom/android/settings/notification/history/NotificationHistoryPackage;ILandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->lambda$new$0(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lcom/android/settings/notification/history/NotificationHistoryPackage;ILandroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$1$NotificationHistoryActivity(Landroid/widget/TextView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->lambda$new$1(Landroid/widget/TextView;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic lambda$new$2$NotificationHistoryActivity(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->lambda$new$2(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$new$5$NotificationHistoryActivity(Landroid/widget/Switch;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->lambda$new$5(Landroid/widget/Switch;Z)V

    return-void
.end method

.method public synthetic lambda$onResume$3$NotificationHistoryActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->lambda$onResume$3()V

    return-void
.end method

.method public synthetic lambda$onResume$4$NotificationHistoryActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->lambda$onResume$4()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 213
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 214
    sget p1, Lcom/android/settings/R$string;->notification_history:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 215
    sget p1, Lcom/android/settings/R$layout;->notification_history:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 216
    sget p1, Lcom/android/settings/R$id;->apps:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    .line 217
    sget p1, Lcom/android/settings/R$id;->snoozed_list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSnoozeView:Landroid/view/ViewGroup;

    .line 218
    sget p1, Lcom/android/settings/R$id;->recently_dismissed_list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mDismissView:Landroid/view/ViewGroup;

    .line 219
    sget p1, Lcom/android/settings/R$id;->history_off:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOff:Landroid/view/ViewGroup;

    .line 220
    sget p1, Lcom/android/settings/R$id;->history_on:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    .line 221
    sget p1, Lcom/android/settings/R$id;->history_on_empty:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    .line 222
    sget p1, Lcom/android/settings/R$id;->main_switch_bar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/MainSwitchBar;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/android/settingslib/widget/MainSwitchBar;

    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 226
    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 227
    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 228
    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mCountdownFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 290
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 292
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 0

    .line 297
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 3

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 281
    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity;->TAG:Ljava/lang/String;

    const-string v2, "Cannot unregister listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_CLOSE:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 284
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 236
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 237
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUm:Landroid/os/UserManager;

    .line 239
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mCountdownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 241
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 242
    new-instance v0, Lcom/android/settings/notification/history/HistoryLoader;

    new-instance v1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/notification/history/HistoryLoader;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryLoader:Lcom/android/settings/notification/history/HistoryLoader;

    .line 243
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mOnHistoryLoaderListener:Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/history/HistoryLoader;->load(Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;)V

    const-string v0, "notification"

    .line 246
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 245
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mNm:Landroid/app/INotificationManager;

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mListener:Landroid/service/notification/NotificationListenerService;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 248
    invoke-virtual {v0, p0, v1, v2}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 251
    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity;->TAG:Ljava/lang/String;

    const-string v2, "Cannot register listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->bindSwitch()V

    .line 256
    new-instance v0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$N8Unl9_L2gxBKLOh5xRet171ci0;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$N8Unl9_L2gxBKLOh5xRet171ci0;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mCountdownFuture:Ljava/util/concurrent/Future;

    .line 273
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_OPEN:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method
