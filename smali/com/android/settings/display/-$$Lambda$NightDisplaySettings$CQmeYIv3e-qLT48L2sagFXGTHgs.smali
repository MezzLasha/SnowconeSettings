.class public final synthetic Lcom/android/settings/display/-$$Lambda$NightDisplaySettings$CQmeYIv3e-qLT48L2sagFXGTHgs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/NightDisplaySettings;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/NightDisplaySettings;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/-$$Lambda$NightDisplaySettings$CQmeYIv3e-qLT48L2sagFXGTHgs;->f$0:Lcom/android/settings/display/NightDisplaySettings;

    iput p2, p0, Lcom/android/settings/display/-$$Lambda$NightDisplaySettings$CQmeYIv3e-qLT48L2sagFXGTHgs;->f$1:I

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/-$$Lambda$NightDisplaySettings$CQmeYIv3e-qLT48L2sagFXGTHgs;->f$0:Lcom/android/settings/display/NightDisplaySettings;

    iget p0, p0, Lcom/android/settings/display/-$$Lambda$NightDisplaySettings$CQmeYIv3e-qLT48L2sagFXGTHgs;->f$1:I

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/settings/display/NightDisplaySettings;->lambda$onCreateDialog$0$NightDisplaySettings(ILandroid/widget/TimePicker;II)V

    return-void
.end method
