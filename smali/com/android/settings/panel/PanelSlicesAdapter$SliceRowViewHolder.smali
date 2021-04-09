.class public Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PanelSlicesAdapter.java"

# interfaces
.implements Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/panel/PanelSlicesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SliceRowViewHolder"
.end annotation


# instance fields
.field private mDividerAllowedAbove:Z

.field final mSliceSliderLayout:Landroid/widget/LinearLayout;

.field final sliceView:Landroidx/slice/widget/SliceView;

.field final synthetic this$0:Lcom/android/settings/panel/PanelSlicesAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/panel/PanelSlicesAdapter;Landroid/view/View;)V
    .locals 2

    .line 123
    iput-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->this$0:Lcom/android/settings/panel/PanelSlicesAdapter;

    .line 124
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->mDividerAllowedAbove:Z

    .line 125
    sget v0, Lcom/android/settings/R$id;->slice_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceView;

    iput-object v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x2

    .line 126
    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setMode(I)V

    .line 127
    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceView;->setShowTitleItems(Z)V

    .line 128
    sget p1, Lcom/android/settings/R$id;->slice_slider_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->mSliceSliderLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method private synthetic lambda$onBind$0(Landroidx/lifecycle/LiveData;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    .locals 6

    .line 146
    iget-object p3, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p3

    .line 147
    invoke-virtual {p3}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->this$0:Lcom/android/settings/panel/PanelSlicesAdapter;

    .line 150
    invoke-static {p0}, Lcom/android/settings/panel/PanelSlicesAdapter;->access$100(Lcom/android/settings/panel/PanelSlicesAdapter;)I

    move-result v3

    .line 151
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/Slice;

    invoke-virtual {p0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    iget v5, p2, Landroidx/slice/widget/EventInfo;->actionType:I

    const/4 v1, 0x0

    const/16 v2, 0x67a

    .line 148
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public isDividerAllowedAbove()Z
    .locals 0

    .line 160
    iget-boolean p0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->mDividerAllowedAbove:Z

    return p0
.end method

.method public isDividerAllowedBelow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$onBind$0$PanelSlicesAdapter$SliceRowViewHolder(Landroidx/lifecycle/LiveData;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->lambda$onBind$0(Landroidx/lifecycle/LiveData;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    return-void
.end method

.method public onBind(Landroidx/lifecycle/LiveData;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;I)V"
        }
    .end annotation

    .line 135
    iget-object p2, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->this$0:Lcom/android/settings/panel/PanelSlicesAdapter;

    invoke-static {p2}, Lcom/android/settings/panel/PanelSlicesAdapter;->access$000(Lcom/android/settings/panel/PanelSlicesAdapter;)Lcom/android/settings/panel/PanelFragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 138
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/slice/Slice;

    if-eqz p2, :cond_0

    .line 139
    invoke-virtual {p2}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p2

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_INDICATOR_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 p2, 0x0

    .line 140
    iput-boolean p2, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->mDividerAllowedAbove:Z

    .line 144
    :cond_1
    iget-object p2, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    new-instance v0, Lcom/android/settings/panel/-$$Lambda$PanelSlicesAdapter$SliceRowViewHolder$24t6BW0UJf2SL06vnRA_GBl4ldc;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/panel/-$$Lambda$PanelSlicesAdapter$SliceRowViewHolder$24t6BW0UJf2SL06vnRA_GBl4ldc;-><init>(Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {p2, v0}, Landroidx/slice/widget/SliceView;->setOnSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    return-void
.end method
