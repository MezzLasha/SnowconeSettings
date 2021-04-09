.class public final enum Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceTooShort:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum FirstChoiceValid:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum HelpScreen:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# instance fields
.field final footerMessage:I

.field final headerMessage:I

.field final leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field final message:I

.field final messageForBiometrics:I

.field final patternEnabled:Z

.field final rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 390
    new-instance v10, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget v11, Lcom/android/settings/R$string;->lock_settings_picker_biometrics_added_security_message:I

    sget v12, Lcom/android/settings/R$string;->lockpassword_choose_your_pattern_message:I

    sget v5, Lcom/android/settings/R$string;->lockpattern_recording_intro_header:I

    sget-object v23, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v24, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    move-object v0, v10

    move v3, v11

    move v4, v12

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v10, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 396
    new-instance v25, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget v18, Lcom/android/settings/R$string;->lockpattern_settings_help_how_to_record:I

    sget-object v20, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v14, "HelpScreen"

    const/4 v15, 0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    move-object/from16 v13, v25

    move-object/from16 v19, v23

    invoke-direct/range {v13 .. v22}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v25, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 399
    new-instance v26, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget v5, Lcom/android/settings/R$string;->lockpattern_recording_incorrect_too_short:I

    sget-object v13, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "ChoiceTooShort"

    const/4 v2, 0x2

    move-object/from16 v0, v26

    move-object v6, v13

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v26, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 405
    new-instance v24, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget v5, Lcom/android/settings/R$string;->lockpattern_pattern_entered_header:I

    sget-object v7, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "FirstChoiceValid"

    const/4 v2, 0x3

    const/4 v9, 0x0

    move-object/from16 v0, v24

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v24, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 410
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget v18, Lcom/android/settings/R$string;->lockpattern_need_to_confirm:I

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v14, "NeedToConfirm"

    const/4 v15, 0x4

    const/16 v22, 0x1

    move-object v13, v0

    move-object/from16 v20, v1

    invoke-direct/range {v13 .. v22}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 414
    new-instance v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget v18, Lcom/android/settings/R$string;->lockpattern_need_to_unlock_wrong:I

    const-string v14, "ConfirmWrong"

    const/4 v15, 0x5

    move-object v13, v2

    invoke-direct/range {v13 .. v22}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 418
    new-instance v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget v18, Lcom/android/settings/R$string;->lockpattern_pattern_confirmed_header:I

    sget-object v20, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v14, "ChoiceConfirmed"

    const/4 v15, 0x6

    const/16 v22, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v22}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v3, 0x7

    new-array v3, v3, [Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    const/4 v4, 0x1

    aput-object v25, v3, v4

    const/4 v4, 0x2

    aput-object v26, v3, v4

    const/4 v4, 0x3

    aput-object v24, v3, v4

    const/4 v4, 0x4

    aput-object v0, v3, v4

    const/4 v0, 0x5

    aput-object v2, v3, v0

    const/4 v0, 0x6

    aput-object v1, v3, v0

    .line 388
    sput-object v3, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;",
            "Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;",
            "IZ)V"
        }
    .end annotation

    .line 436
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 437
    iput p5, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 438
    iput p3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->messageForBiometrics:I

    .line 439
    iput p4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->message:I

    .line 440
    iput-object p6, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 441
    iput-object p7, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 442
    iput p8, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    .line 443
    iput-boolean p9, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .line 388
    const-class v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .line 388
    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method
