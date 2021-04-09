.class public Lcom/android/settingslib/SignalIcon$MobileIconGroup;
.super Lcom/android/settingslib/SignalIcon$IconGroup;
.source "SignalIcon.java"


# instance fields
.field public final dataContentDescription:I

.field public final dataType:I

.field public final isWide:Z

.field public final qsDataType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V
    .locals 0

    .line 148
    invoke-direct/range {p0 .. p9}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    .line 150
    iput p10, p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    .line 151
    iput p11, p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    .line 152
    iput-boolean p12, p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->isWide:Z

    .line 153
    iput p11, p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->qsDataType:I

    return-void
.end method
