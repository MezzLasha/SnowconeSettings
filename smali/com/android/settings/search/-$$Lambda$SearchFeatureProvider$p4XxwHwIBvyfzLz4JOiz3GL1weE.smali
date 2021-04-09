.class public final synthetic Lcom/android/settings/search/-$$Lambda$SearchFeatureProvider$p4XxwHwIBvyfzLz4JOiz3GL1weE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/search/SearchFeatureProvider;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/search/SearchFeatureProvider;Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/search/-$$Lambda$SearchFeatureProvider$p4XxwHwIBvyfzLz4JOiz3GL1weE;->f$0:Lcom/android/settings/search/SearchFeatureProvider;

    iput-object p2, p0, Lcom/android/settings/search/-$$Lambda$SearchFeatureProvider$p4XxwHwIBvyfzLz4JOiz3GL1weE;->f$1:Landroid/app/Activity;

    iput p3, p0, Lcom/android/settings/search/-$$Lambda$SearchFeatureProvider$p4XxwHwIBvyfzLz4JOiz3GL1weE;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/search/-$$Lambda$SearchFeatureProvider$p4XxwHwIBvyfzLz4JOiz3GL1weE;->f$0:Lcom/android/settings/search/SearchFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/search/-$$Lambda$SearchFeatureProvider$p4XxwHwIBvyfzLz4JOiz3GL1weE;->f$1:Landroid/app/Activity;

    iget p0, p0, Lcom/android/settings/search/-$$Lambda$SearchFeatureProvider$p4XxwHwIBvyfzLz4JOiz3GL1weE;->f$2:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/search/SearchFeatureProvider;->lambda$initSearchToolbar$0(Lcom/android/settings/search/SearchFeatureProvider;Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method
