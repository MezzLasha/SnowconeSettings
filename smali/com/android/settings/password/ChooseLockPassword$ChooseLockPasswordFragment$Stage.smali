.class public final enum Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final alphaHintForBiometrics:I

.field public final alphaHintForFace:I

.field public final alphaHintForFingerprint:I

.field public final alphaMessage:I

.field public final alphaMessageForBiometrics:I

.field public final buttonText:I

.field public final numericHint:I

.field public final numericHintForBiometrics:I

.field public final numericHintForFace:I

.field public final numericHintForFingerprint:I

.field public final numericMessage:I

.field public final numericMessageForBiometrics:I


# direct methods
.method static constructor <clinit>()V
    .locals 44

    .line 279
    new-instance v16, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget v7, Lcom/android/settings/R$string;->lockpassword_choose_your_screen_lock_header:I

    sget v4, Lcom/android/settings/R$string;->lockpassword_choose_your_password_header_for_fingerprint:I

    sget v5, Lcom/android/settings/R$string;->lockpassword_choose_your_password_header_for_face:I

    sget v6, Lcom/android/settings/R$string;->lockpassword_choose_your_password_header_for_biometrics:I

    sget v8, Lcom/android/settings/R$string;->lockpassword_choose_your_pin_header_for_fingerprint:I

    sget v9, Lcom/android/settings/R$string;->lockpassword_choose_your_pin_header_for_face:I

    sget v10, Lcom/android/settings/R$string;->lockpassword_choose_your_pin_header_for_biometrics:I

    sget v11, Lcom/android/settings/R$string;->lockpassword_choose_your_password_message:I

    sget v14, Lcom/android/settings/R$string;->lock_settings_picker_biometrics_added_security_message:I

    sget v13, Lcom/android/settings/R$string;->lockpassword_choose_your_pin_message:I

    sget v15, Lcom/android/settings/R$string;->next_label:I

    const-string v1, "Introduction"

    const/4 v2, 0x0

    move-object/from16 v0, v16

    move v3, v7

    move v12, v14

    invoke-direct/range {v0 .. v15}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIIIIIIIIIIIII)V

    sput-object v16, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 294
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget v23, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_header:I

    sget v27, Lcom/android/settings/R$string;->lockpassword_confirm_your_pin_header:I

    sget v43, Lcom/android/settings/R$string;->lockpassword_confirm_label:I

    const-string v18, "NeedToConfirm"

    const/16 v19, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v17, v0

    move/from16 v20, v23

    move/from16 v21, v23

    move/from16 v22, v23

    move/from16 v24, v27

    move/from16 v25, v27

    move/from16 v26, v27

    move/from16 v32, v43

    invoke-direct/range {v17 .. v32}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIIIIIIIIIIIII)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 309
    new-instance v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget v34, Lcom/android/settings/R$string;->lockpassword_confirm_passwords_dont_match:I

    sget v38, Lcom/android/settings/R$string;->lockpassword_confirm_pins_dont_match:I

    const-string v29, "ConfirmWrong"

    const/16 v30, 0x2

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v28, v1

    move/from16 v31, v34

    move/from16 v32, v34

    move/from16 v33, v34

    move/from16 v35, v38

    move/from16 v36, v38

    move/from16 v37, v38

    invoke-direct/range {v28 .. v43}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIIIIIIIIIIIII)V

    sput-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v3, 0x0

    aput-object v16, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 277
    sput-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIIIIIII)V"
        }
    .end annotation

    .line 330
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 331
    iput p3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    .line 332
    iput p4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFingerprint:I

    .line 333
    iput p5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFace:I

    .line 334
    iput p6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForBiometrics:I

    .line 336
    iput p7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    .line 337
    iput p8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFingerprint:I

    .line 338
    iput p9, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFace:I

    .line 339
    iput p10, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForBiometrics:I

    .line 341
    iput p11, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessage:I

    .line 342
    iput p12, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessageForBiometrics:I

    .line 343
    iput p13, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessage:I

    .line 344
    iput p14, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessageForBiometrics:I

    .line 345
    iput p15, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .line 277
    const-class v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .line 277
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method


# virtual methods
.method public getHint(ZI)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-ne p2, v2, :cond_0

    .line 374
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFingerprint:I

    return p0

    :cond_0
    if-ne p2, v1, :cond_1

    .line 376
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFace:I

    return p0

    :cond_1
    if-ne p2, v0, :cond_2

    .line 378
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForBiometrics:I

    return p0

    .line 380
    :cond_2
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    return p0

    :cond_3
    if-ne p2, v2, :cond_4

    .line 384
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFingerprint:I

    return p0

    :cond_4
    if-ne p2, v1, :cond_5

    .line 386
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFace:I

    return p0

    :cond_5
    if-ne p2, v0, :cond_6

    .line 388
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForBiometrics:I

    return p0

    .line 390
    :cond_6
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    return p0
.end method

.method public getMessage(ZI)I
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 397
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessageForBiometrics:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessage:I

    :goto_0
    return p0

    :cond_1
    if-eqz p2, :cond_2

    .line 399
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessageForBiometrics:I

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessage:I

    :goto_1
    return p0
.end method
