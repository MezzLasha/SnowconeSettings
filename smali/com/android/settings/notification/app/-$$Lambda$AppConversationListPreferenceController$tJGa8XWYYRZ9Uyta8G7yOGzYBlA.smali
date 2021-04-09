.class public final synthetic Lcom/android/settings/notification/app/-$$Lambda$AppConversationListPreferenceController$tJGa8XWYYRZ9Uyta8G7yOGzYBlA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/notification/app/-$$Lambda$AppConversationListPreferenceController$tJGa8XWYYRZ9Uyta8G7yOGzYBlA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/app/-$$Lambda$AppConversationListPreferenceController$tJGa8XWYYRZ9Uyta8G7yOGzYBlA;

    invoke-direct {v0}, Lcom/android/settings/notification/app/-$$Lambda$AppConversationListPreferenceController$tJGa8XWYYRZ9Uyta8G7yOGzYBlA;-><init>()V

    sput-object v0, Lcom/android/settings/notification/app/-$$Lambda$AppConversationListPreferenceController$tJGa8XWYYRZ9Uyta8G7yOGzYBlA;->INSTANCE:Lcom/android/settings/notification/app/-$$Lambda$AppConversationListPreferenceController$tJGa8XWYYRZ9Uyta8G7yOGzYBlA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/service/notification/ConversationChannelWrapper;

    check-cast p2, Landroid/service/notification/ConversationChannelWrapper;

    invoke-static {p1, p2}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->lambda$new$0(Landroid/service/notification/ConversationChannelWrapper;Landroid/service/notification/ConversationChannelWrapper;)I

    move-result p0

    return p0
.end method
