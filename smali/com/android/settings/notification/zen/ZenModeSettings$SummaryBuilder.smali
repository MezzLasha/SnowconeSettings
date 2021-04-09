.class public Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SummaryBuilder"
.end annotation


# static fields
.field private static final ALL_PRIORITY_CATEGORIES:[I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 114
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->ALL_PRIORITY_CATEGORIES:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x40
        0x80
        0x4
        0x2
        0x1
        0x8
        0x10
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getCategory(ILandroid/app/NotificationManager$Policy;Z)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    .line 266
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_alarms_list_first:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 268
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_alarms_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x40

    if-ne p1, v0, :cond_3

    if-eqz p3, :cond_2

    .line 272
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_media_list_first:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 274
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_media_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v0, 0x80

    if-ne p1, v0, :cond_5

    if-eqz p3, :cond_4

    .line 278
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_system_list_first:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 280
    :cond_4
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_system_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    .line 283
    iget p1, p2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-nez p1, :cond_6

    .line 284
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_anyone:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    if-ne p1, v1, :cond_7

    .line 286
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_contacts:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 288
    :cond_7
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_starred:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    if-eqz p3, :cond_9

    .line 292
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_events_list_first:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 294
    :cond_9
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_events_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    if-ne p1, v1, :cond_c

    if-eqz p3, :cond_b

    .line 298
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_reminders_list_first:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 300
    :cond_b
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_reminders_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const/16 v0, 0x8

    if-ne p1, v0, :cond_12

    .line 303
    iget p1, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez p1, :cond_e

    if-eqz p3, :cond_d

    .line 305
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_anyone:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 307
    :cond_d
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_all_callers:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    if-ne p1, v1, :cond_10

    if-eqz p3, :cond_f

    .line 310
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_contacts:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 312
    :cond_f
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_contacts_callers:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    if-eqz p3, :cond_11

    .line 315
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_starred:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 317
    :cond_11
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_starred_callers:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    const/16 p2, 0x10

    if-ne p1, p2, :cond_14

    if-eqz p3, :cond_13

    .line 321
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_repeat_callers:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 323
    :cond_13
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_repeat_callers_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    const-string p0, ""

    return-object p0
.end method

.method private getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager$Policy;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    sget-object v1, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->ALL_PRIORITY_CATEGORIES:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget v5, v1, v4

    if-eqz p3, :cond_0

    .line 245
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v3

    .line 246
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, p1, v5}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x10

    if-ne v5, v7, :cond_1

    const/16 v7, 0x8

    .line 248
    invoke-direct {p0, p1, v7}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v7, :cond_1

    goto :goto_2

    .line 253
    :cond_1
    invoke-direct {p0, v5, p1, v6}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getCategory(ILandroid/app/NotificationManager$Policy;Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z
    .locals 0

    .line 260
    iget p0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr p0, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getCallsSettingSummary$1(Ljava/lang/Integer;)Z
    .locals 2

    .line 154
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v1, v0, :cond_1

    const/16 v0, 0x10

    .line 155
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v0, p0, :cond_0

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

.method static synthetic lambda$getMessagesSettingSummary$2(Ljava/lang/Integer;)Z
    .locals 1

    .line 171
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x4

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getOtherSoundCategoriesSummary$0(Ljava/lang/Integer;)Z
    .locals 3

    .line 128
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-eq v2, v0, :cond_1

    const/16 v0, 0x40

    .line 129
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_1

    const/16 v0, 0x80

    .line 130
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 131
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    .line 132
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method getAutomaticRulesSummary()Ljava/lang/String;
    .locals 3

    .line 217
    new-instance v0, Landroid/icu/text/MessageFormat;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->zen_mode_settings_schedules_summary:I

    .line 218
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 220
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getEnabledAutomaticRulesCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "count"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {v0, v1}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getBlockedEffectsSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 0

    .line 204
    iget p1, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-nez p1, :cond_0

    .line 205
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->zen_mode_restrict_notifications_summary_muted:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 207
    :cond_0
    invoke-static {p1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 208
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->zen_mode_restrict_notifications_summary_hidden:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 211
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->zen_mode_restrict_notifications_summary_custom:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getCallsSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 5

    .line 153
    sget-object v0, Lcom/android/settings/notification/zen/-$$Lambda$ZenModeSettings$SummaryBuilder$X2V0wrsnrfKvaIzsMaYV4b0kEm0;->INSTANCE:Lcom/android/settings/notification/zen/-$$Lambda$ZenModeSettings$SummaryBuilder$X2V0wrsnrfKvaIzsMaYV4b0kEm0;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;

    move-result-object p1

    .line 156
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_none_calls:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 160
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->zen_mode_calls_summary_one:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 161
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    .line 160
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 163
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->zen_mode_calls_summary_two:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 164
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    .line 165
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v3, v1

    .line 163
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getEnabledAutomaticRulesCount()I
    .locals 2

    .line 228
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    .line 229
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 231
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 232
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AutomaticZenRule;

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method getMessagesSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 2

    .line 170
    sget-object v0, Lcom/android/settings/notification/zen/-$$Lambda$ZenModeSettings$SummaryBuilder$cJHlRy7SFTBEdznxaTr_02yeBRU;->INSTANCE:Lcom/android/settings/notification/zen/-$$Lambda$ZenModeSettings$SummaryBuilder$cJHlRy7SFTBEdznxaTr_02yeBRU;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;

    move-result-object p1

    .line 172
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_none_messages:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 176
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method getOtherSoundCategoriesSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 5

    .line 126
    sget-object v0, Lcom/android/settings/notification/zen/-$$Lambda$ZenModeSettings$SummaryBuilder$f68SIop6NlXK3uLhACoU9A6u0bc;->INSTANCE:Lcom/android/settings/notification/zen/-$$Lambda$ZenModeSettings$SummaryBuilder$f68SIop6NlXK3uLhACoU9A6u0bc;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;

    move-result-object p1

    .line 134
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 135
    new-instance v2, Landroid/icu/text/MessageFormat;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->zen_mode_other_sounds_summary:I

    .line 136
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 137
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 138
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "count"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v0, v1, :cond_0

    const/4 v3, 0x0

    .line 141
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "sound_category_1"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    .line 143
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "sound_category_2"

    invoke-interface {p0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 145
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "sound_category_3"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    invoke-virtual {v2, p0}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getSoundSummary()Ljava/lang/String;
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/service/notification/ZenModeConfig;->getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 188
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->zen_mode_sound_summary_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->zen_mode_sound_summary_on_with_info:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 194
    :cond_1
    new-instance v0, Landroid/icu/text/MessageFormat;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->zen_mode_sound_summary_off:I

    .line 195
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getEnabledAutomaticRulesCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "count"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {v0, v1}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
