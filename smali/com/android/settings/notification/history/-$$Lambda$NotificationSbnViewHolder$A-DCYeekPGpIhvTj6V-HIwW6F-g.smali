.class public final synthetic Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/history/NotificationSbnViewHolder;

.field public final synthetic f$1:Lcom/android/internal/logging/UiEventLogger;

.field public final synthetic f$10:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lcom/android/internal/logging/InstanceId;

.field public final synthetic f$6:I

.field public final synthetic f$7:Landroid/app/PendingIntent;

.field public final synthetic f$8:Z

.field public final synthetic f$9:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/history/NotificationSbnViewHolder;Lcom/android/internal/logging/UiEventLogger;ZILjava/lang/String;Lcom/android/internal/logging/InstanceId;ILandroid/app/PendingIntent;ZLandroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$0:Lcom/android/settings/notification/history/NotificationSbnViewHolder;

    iput-object p2, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$1:Lcom/android/internal/logging/UiEventLogger;

    iput-boolean p3, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$2:Z

    iput p4, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$3:I

    iput-object p5, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$5:Lcom/android/internal/logging/InstanceId;

    iput p7, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$6:I

    iput-object p8, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$7:Landroid/app/PendingIntent;

    iput-boolean p9, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$8:Z

    iput-object p10, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$9:Landroid/content/Intent;

    iput p11, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$10:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    iget-object v0, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$0:Lcom/android/settings/notification/history/NotificationSbnViewHolder;

    iget-object v1, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$1:Lcom/android/internal/logging/UiEventLogger;

    iget-boolean v2, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$2:Z

    iget v3, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$3:I

    iget-object v4, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$5:Lcom/android/internal/logging/InstanceId;

    iget v6, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$6:I

    iget-object v7, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$7:Landroid/app/PendingIntent;

    iget-boolean v8, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$8:Z

    iget-object v9, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$9:Landroid/content/Intent;

    iget v10, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnViewHolder$A-DCYeekPGpIhvTj6V-HIwW6F-g;->f$10:I

    move-object v11, p1

    invoke-virtual/range {v0 .. v11}, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->lambda$addOnClick$0$NotificationSbnViewHolder(Lcom/android/internal/logging/UiEventLogger;ZILjava/lang/String;Lcom/android/internal/logging/InstanceId;ILandroid/app/PendingIntent;ZLandroid/content/Intent;ILandroid/view/View;)V

    return-void
.end method
