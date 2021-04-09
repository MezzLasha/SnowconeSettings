.class public Lcom/android/settings/biometrics/face/FaceSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "FaceSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAttentionController:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

.field private mConfirmingPassword:Z

.field private mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mEnrollButton:Landroidx/preference/Preference;

.field private mEnrollController:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

.field private final mEnrollListener:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController$Listener;

.field private mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mLockscreenController:Lcom/android/settings/biometrics/face/FaceSettingsLockscreenBypassPreferenceController;

.field private final mRemovalListener:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;

.field private mRemoveButton:Landroidx/preference/Preference;

.field private mRemoveController:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

.field private mTogglePreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:[B

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 320
    new-instance v0, Lcom/android/settings/biometrics/face/FaceSettings$1;

    sget v1, Lcom/android/settings/R$xml;->security_settings_face:I

    invoke-direct {v0, v1}, Lcom/android/settings/biometrics/face/FaceSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/biometrics/face/FaceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/android/settings/biometrics/face/-$$Lambda$FaceSettings$TEoDiWzAgU6GzwUROT5ko2T2ca0;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceSettings$TEoDiWzAgU6GzwUROT5ko2T2ca0;-><init>(Lcom/android/settings/biometrics/face/FaceSettings;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mRemovalListener:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;

    .line 96
    new-instance v0, Lcom/android/settings/biometrics/face/-$$Lambda$FaceSettings$Vq1FnFpoQWPXSz490WImkKmzj1s;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceSettings$Vq1FnFpoQWPXSz490WImkKmzj1s;-><init>(Lcom/android/settings/biometrics/face/FaceSettings;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollListener:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController$Listener;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 57
    invoke-static {p0, p1}, Lcom/android/settings/biometrics/face/FaceSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 310
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 311
    new-instance v0, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v0, Lcom/android/settings/biometrics/face/FaceSettingsAppPreferenceController;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceSettingsAppPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v0, Lcom/android/settings/biometrics/face/FaceSettingsConfirmPreferenceController;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceSettingsConfirmPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public static isFaceHardwareDetected(Landroid/content/Context;)Z
    .locals 5

    .line 104
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p0

    const-string v0, "FaceSettings"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v2, "FaceManager is null"

    .line 107
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v2

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FaceManager is not null. Hardware detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p0, :cond_1

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mTogglePreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 88
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mRemoveButton:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 93
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollButton:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x5

    .line 97
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic lambda$onActivityResult$2(Landroid/content/Intent;IJ)V
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p2, p1, v0, p3, p4}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 251
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mAttentionController:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    invoke-virtual {p1, p2}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->setToken([B)V

    .line 252
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollController:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    invoke-virtual {p1, p2}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->setToken([B)V

    const/4 p1, 0x0

    .line 253
    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mConfirmingPassword:Z

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 286
    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettings;->isFaceHardwareDetected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/face/FaceSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mControllers:Ljava/util/List;

    .line 291
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 292
    instance-of v1, v0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    if-eqz v1, :cond_2

    .line 293
    check-cast v0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mAttentionController:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    goto :goto_0

    .line 294
    :cond_2
    instance-of v1, v0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    if-eqz v1, :cond_3

    .line 295
    check-cast v0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mRemoveController:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    .line 296
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mRemovalListener:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->setListener(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mRemoveController:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->setActivity(Lcom/android/settings/SettingsActivity;)V

    goto :goto_0

    .line 298
    :cond_3
    instance-of v1, v0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    if-eqz v1, :cond_1

    .line 299
    check-cast v0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollController:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    .line 300
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollListener:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController$Listener;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->setListener(Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController$Listener;)V

    .line 301
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollController:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->setActivity(Lcom/android/settings/SettingsActivity;)V

    goto :goto_0

    .line 305
    :cond_4
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mControllers:Ljava/util/List;

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 281
    sget p0, Lcom/android/settings/R$string;->help_url_face:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FaceSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5e7

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 122
    sget p0, Lcom/android/settings/R$xml;->security_settings_face:I

    return p0
.end method

.method public synthetic lambda$new$0$FaceSettings()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceSettings;->lambda$new$0()V

    return-void
.end method

.method public synthetic lambda$new$1$FaceSettings(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceSettings;->lambda$new$1(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onActivityResult$2$FaceSettings(Landroid/content/Intent;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/face/FaceSettings;->lambda$onActivityResult$2(Landroid/content/Intent;IJ)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 237
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FaceSettings"

    const-string v1, "No credential"

    .line 240
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    new-instance p2, Lcom/android/settings/biometrics/face/-$$Lambda$FaceSettings$o_BaE6_7hkamhaGSjqlZhtE8CXw;

    invoke-direct {p2, p0, p3}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceSettings$o_BaE6_7hkamhaGSjqlZhtE8CXw;-><init>(Lcom/android/settings/biometrics/face/FaceSettings;Landroid/content/Intent;)V

    invoke-virtual {p1, p2}, Landroid/hardware/face/FaceManager;->generateChallenge(Landroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    .line 258
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 195
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 197
    const-class p1, Lcom/android/settings/biometrics/face/FaceSettingsLockscreenBypassPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics/face/FaceSettingsLockscreenBypassPreferenceController;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mLockscreenController:Lcom/android/settings/biometrics/face/FaceSettingsLockscreenBypassPreferenceController;

    .line 198
    iget p0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, p0}, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;->setUserId(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/android/settings/biometrics/face/FaceSettings;->isFaceHardwareDetected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "FaceSettings"

    const-string v0, "no faceManager, finish this"

    .line 142
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 147
    :cond_0
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserManager:Landroid/os/UserManager;

    .line 148
    const-class v1, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 152
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "android.intent.extra.USER_ID"

    .line 151
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFaceFeatureProvider()Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    .line 155
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->security_settings_face_profile_preference_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v0, "security_settings_face_keyguard"

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    const-string v3, "security_settings_face_app"

    .line 161
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    const-string v4, "security_settings_face_require_attention"

    .line 162
    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    const-string v5, "security_settings_face_require_confirmation"

    .line 163
    invoke-virtual {p0, v5}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    .line 164
    iget-object v6, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mLockscreenController:Lcom/android/settings/biometrics/face/FaceSettingsLockscreenBypassPreferenceController;

    .line 165
    invoke-virtual {v6}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    .line 166
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x5

    new-array v8, v8, [Landroidx/preference/Preference;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v2, 0x1

    aput-object v3, v8, v2

    const/4 v2, 0x2

    aput-object v4, v8, v2

    const/4 v2, 0x3

    aput-object v5, v8, v2

    const/4 v2, 0x4

    aput-object v6, v8, v2

    .line 167
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mTogglePreferences:Ljava/util/List;

    const-string v2, "security_settings_face_delete_faces_container"

    .line 169
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mRemoveButton:Landroidx/preference/Preference;

    const-string v2, "security_settings_face_enroll_faces_container"

    .line 170
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollButton:Landroidx/preference/Preference;

    .line 173
    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 174
    instance-of v4, v3, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;

    if-eqz v4, :cond_3

    .line 175
    check-cast v3, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;

    iget v4, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;->setUserId(I)V

    goto :goto_0

    .line 176
    :cond_3
    instance-of v4, v3, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    if-eqz v4, :cond_2

    .line 177
    check-cast v3, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    iget v4, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->setUserId(I)V

    goto :goto_0

    .line 180
    :cond_4
    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mRemoveController:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    iget v3, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->setUserId(I)V

    .line 183
    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 185
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mLockscreenController:Lcom/android/settings/biometrics/face/FaceSettingsLockscreenBypassPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_5
    if-eqz p1, :cond_6

    .line 189
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    :cond_6
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 203
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 205
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mConfirmingPassword:Z

    if-nez v1, :cond_0

    .line 206
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/4 v1, 0x4

    .line 208
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->security_settings_face_preference_title:I

    .line 209
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 210
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    .line 211
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    .line 216
    iput-boolean v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mConfirmingPassword:Z

    if-nez v0, :cond_1

    const-string v0, "FaceSettings"

    const-string v1, "Password not set"

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mAttentionController:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->setToken([B)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollController:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->setToken([B)V

    .line 226
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    .line 227
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollButton:Landroidx/preference/Preference;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 228
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mRemoveButton:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/biometrics/face/FaceFeatureProvider;->isAttentionSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "security_settings_face_require_attention"

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    const-string v0, "hw_auth_token"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 266
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 268
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollController:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->isClicked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mConfirmingPassword:Z

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->revokeChallenge()V

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    return-void
.end method
