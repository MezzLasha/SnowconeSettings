.class public final synthetic Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$Xb_1kKA4SpWIyH3WFxwE4zq8CBM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$Xb_1kKA4SpWIyH3WFxwE4zq8CBM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$Xb_1kKA4SpWIyH3WFxwE4zq8CBM;

    invoke-direct {v0}, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$Xb_1kKA4SpWIyH3WFxwE4zq8CBM;-><init>()V

    sput-object v0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$Xb_1kKA4SpWIyH3WFxwE4zq8CBM;->INSTANCE:Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$Xb_1kKA4SpWIyH3WFxwE4zq8CBM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->lambda$buildSliceKeywords$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
