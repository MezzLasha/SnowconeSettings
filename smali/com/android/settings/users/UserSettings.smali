.class public Lcom/android/settings/users/UserSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sRemoveGuestBitmap:Landroid/graphics/Bitmap;


# instance fields
.field mAddGuest:Lcom/android/settingslib/RestrictedPreference;

.field mAddUser:Lcom/android/settingslib/RestrictedPreference;

.field private mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

.field private mAddingUser:Z

.field private mAddingUserName:Ljava/lang/String;

.field private mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

.field private mHandler:Landroid/os/Handler;

.field mMePreference:Lcom/android/settings/users/UserPreference;

.field private mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

.field private mPendingUserIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingUserName:Ljava/lang/CharSequence;

.field private mRemoveGuestIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mRemovingUserId:I

.field private mShouldUpdateUserList:Z

.field private mSwitchBarController:Lcom/android/settings/users/MultiUserSwitchBarController;

.field private mUserCaps:Lcom/android/settings/users/UserCapabilities;

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserCreatingDialog:Lcom/android/settingslib/users/UserCreatingDialog;

.field mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mUserListCategory:Landroidx/preference/PreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/users/UserSettings;->USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 168
    sput-object v0, Lcom/android/settings/users/UserSettings;->sRemoveGuestBitmap:Landroid/graphics/Bitmap;

    .line 1197
    new-instance v0, Lcom/android/settings/users/UserSettings$12;

    sget v1, Lcom/android/settings/R$xml;->user_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/users/UserSettings$12;-><init>(I)V

    sput-object v0, Lcom/android/settings/users/UserSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 158
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 160
    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    .line 171
    new-instance v0, Lcom/android/settingslib/users/EditUserInfoController;

    const-string v1, "com.android.settings.files"

    invoke-direct {v0, v1}, Lcom/android/settingslib/users/EditUserInfoController;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    .line 186
    new-instance v0, Lcom/android/settings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$1;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 200
    new-instance v0, Lcom/android/settings/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$2;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/users/UserSettings;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/users/UserSettings;I)I
    .locals 0

    .line 98
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/users/UserSettings;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/settings/users/UserSettings;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/users/UserSettings;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/settings/users/UserSettings;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/settings/users/UserSettings;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hideUserCreatingDialog()V

    return-void
.end method

.method static synthetic access$1600(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 98
    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->launchChooseLockscreen()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->exitGuest()V

    return-void
.end method

.method private addUserNow(I)V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 764
    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-ne p1, v1, :cond_1

    .line 766
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 767
    :cond_0
    sget v1, Lcom/android/settings/R$string;->user_new_user_name:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 768
    :cond_1
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 769
    :cond_2
    sget v1, Lcom/android/settings/R$string;->user_new_profile_name:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    .line 770
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    new-instance v0, Lcom/android/settingslib/users/UserCreatingDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/users/UserCreatingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCreatingDialog:Lcom/android/settingslib/users/UserCreatingDialog;

    .line 773
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 774
    new-instance v0, Lcom/android/settings/users/UserSettings$10;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/users/UserSettings$10;-><init>(Lcom/android/settings/users/UserSettings;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :catchall_0
    move-exception p0

    .line 770
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static assignDefaultPhoto(Landroid/content/Context;I)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "user"

    .line 1166
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1168
    invoke-virtual {v0, p1, p0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    const/4 p0, 0x1

    return p0
.end method

.method private buildAddUserDialog(I)Landroid/app/Dialog;
    .locals 9

    .line 683
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    .line 685
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/android/settings/users/-$$Lambda$PfWcnZJHN1K9fBjohJoTWQYwe9k;

    invoke-direct {v3, p0}, Lcom/android/settings/users/-$$Lambda$PfWcnZJHN1K9fBjohJoTWQYwe9k;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    .line 688
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    .line 690
    sget v6, Lcom/android/settingslib/R$string;->user_info_settings_title:I

    goto :goto_0

    .line 691
    :cond_0
    sget v6, Lcom/android/settingslib/R$string;->profile_info_settings_title:I

    .line 689
    :goto_0
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/users/-$$Lambda$UserSettings$IcfHN2ixJlfw_8qs4BpsToPMVgs;

    invoke-direct {v7, p0, p1}, Lcom/android/settings/users/-$$Lambda$UserSettings$IcfHN2ixJlfw_8qs4BpsToPMVgs;-><init>(Lcom/android/settings/users/UserSettings;I)V

    new-instance v8, Lcom/android/settings/users/-$$Lambda$UserSettings$BBisEJk50ecbsrX9eALjegonG6M;

    invoke-direct {v8, p0}, Lcom/android/settings/users/-$$Lambda$UserSettings$BBisEJk50ecbsrX9eALjegonG6M;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 684
    invoke-virtual/range {v1 .. v8}, Lcom/android/settingslib/users/EditUserInfoController;->createDialog(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object p0

    .line 704
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private buildEditCurrentUserDialog()Landroid/app/Dialog;
    .locals 8

    .line 652
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 658
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1, v2, v0}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 660
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    new-instance v4, Lcom/android/settings/users/-$$Lambda$PfWcnZJHN1K9fBjohJoTWQYwe9k;

    invoke-direct {v4, p0}, Lcom/android/settings/users/-$$Lambda$PfWcnZJHN1K9fBjohJoTWQYwe9k;-><init>(Lcom/android/settings/users/UserSettings;)V

    iget-object v5, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    sget v6, Lcom/android/settingslib/R$string;->profile_info_settings_title:I

    .line 665
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/users/-$$Lambda$UserSettings$Lpzlt4rBAVAY08PaDoTDIRjggpM;

    invoke-direct {v7, p0, v3, v0}, Lcom/android/settings/users/-$$Lambda$UserSettings$Lpzlt4rBAVAY08PaDoTDIRjggpM;-><init>(Lcom/android/settings/users/UserSettings;Landroid/graphics/drawable/Drawable;Landroid/content/pm/UserInfo;)V

    const/4 p0, 0x0

    move-object v0, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p0

    .line 660
    invoke-virtual/range {v0 .. v7}, Lcom/android/settingslib/users/EditUserInfoController;->createDialog(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private canSwitchUserNow()Z
    .locals 0

    .line 972
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserSwitchability()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)V
    .locals 3

    .line 1175
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 1177
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    .line 1180
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    .line 1179
    invoke-static {v1, v0, v2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1184
    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/Context;I)Z

    return-void

    :cond_1
    const-string v1, "user"

    .line 1188
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 1189
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1190
    invoke-virtual {p0, p1, v1}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1192
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1099
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object p0

    return-object p0
.end method

.method private exitGuest()V
    .locals 1

    .line 825
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->isCurrentUserGuest()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 828
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    return-void
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 4

    .line 417
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    sget v1, Lcom/android/settings/R$string;->user_you:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 421
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    .line 422
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1127
    sget-object v0, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1130
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1129
    invoke-static {p0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1132
    sget-object p0, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1044
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1046
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1045
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 1048
    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private getEncircledRemoveGuestIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1052
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mRemoveGuestIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1054
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/users/UserSettings;->getRemoveGuestIconAsBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1053
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mRemoveGuestIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 1056
    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mRemoveGuestIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private static getRemoveGuestIconAsBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1143
    sget-object v0, Lcom/android/settings/users/UserSettings;->sRemoveGuestBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1144
    sget v0, Lcom/android/settings/R$drawable;->ic_delete:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v2, 0x1060263

    .line 1146
    invoke-virtual {p0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1145
    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1148
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1149
    invoke-static {v0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Lcom/android/settings/users/UserSettings;->sRemoveGuestBitmap:Landroid/graphics/Bitmap;

    .line 1151
    :cond_0
    sget-object p0, Lcom/android/settings/users/UserSettings;->sRemoveGuestBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private hasLockscreenSecurity()Z
    .locals 1

    .line 430
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 431
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method private hideUserCreatingDialog()V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCreatingDialog:Lcom/android/settingslib/users/UserCreatingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserCreatingDialog:Lcom/android/settingslib/users/UserCreatingDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private isCurrentUserGuest()Z
    .locals 0

    .line 968
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p0, p0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    return p0
.end method

.method private synthetic lambda$buildAddUserDialog$2(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 693
    iput-object p3, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    .line 694
    iput-object p2, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    .line 695
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    return-void
.end method

.method private synthetic lambda$buildAddUserDialog$3()V
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 699
    :try_start_0
    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    .line 700
    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    .line 701
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$buildEditCurrentUserDialog$0(Landroid/content/pm/UserInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 669
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 670
    invoke-static {p2}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 669
    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$buildEditCurrentUserDialog$1(Landroid/graphics/drawable/Drawable;Landroid/content/pm/UserInfo;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eq p4, p1, :cond_0

    .line 668
    new-instance p1, Lcom/android/settings/users/-$$Lambda$UserSettings$6DBQ1a32lg9hRzzXABlF91NIEp0;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/settings/users/-$$Lambda$UserSettings$6DBQ1a32lg9hRzzXABlF91NIEp0;-><init>(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 671
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1, p4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 674
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 675
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 676
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget p1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, p3}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$getRealUsersCount$4(Landroid/content/pm/UserInfo;)Z
    .locals 1

    .line 1018
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private launchChooseLockscreen()V
    .locals 3

    .line 435
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    .line 436
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xa

    .line 438
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1023
    new-instance v0, Lcom/android/settings/users/UserSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$11;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/util/List;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    .line 1040
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadProfile()V
    .locals 2

    .line 388
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->isCurrentUserGuest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledRemoveGuestIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 391
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    sget v1, Lcom/android/settings/R$string;->user_clear_guest_menu:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 394
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void

    .line 398
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$3;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 413
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private onAddUserClicked(I)V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_0
    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    .line 463
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    .line 465
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 459
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 470
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onRemoveUserClicked(I)V
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_0
    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v1, :cond_0

    .line 476
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 p1, 0x1

    .line 477
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 479
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onUserCreated(I)V
    .locals 1

    .line 483
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hideUserCreatingDialog()V

    .line 485
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 488
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 489
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    const/4 v0, 0x1

    .line 490
    invoke-direct {p0, p1, v0}, Lcom/android/settings/users/UserSettings;->openUserDetails(Landroid/content/pm/UserInfo;Z)V

    return-void
.end method

.method private openUserDetails(Landroid/content/pm/UserInfo;Z)V
    .locals 3

    .line 500
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 501
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "new_user"

    .line 502
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 503
    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/users/UserDetailsSettings;

    .line 504
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p2

    .line 505
    invoke-virtual {p2, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p2

    iget-object p1, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 506
    invoke-virtual {p2, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private removeThisUser()V
    .locals 2

    .line 749
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result v0

    const-string v1, "UserSettings"

    if-nez v0, :cond_0

    const-string p0, "Cannot remove current user when switching is disabled"

    .line 750
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 754
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 755
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->removeUserOrSetEphemeral(I)I

    .line 756
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Unable to remove self user"

    .line 758
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private removeUserNow()V
    .locals 2

    .line 733
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 734
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    goto :goto_0

    .line 736
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$9;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method

.method private setPhotoId(Landroidx/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 1

    .line 1060
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 1062
    invoke-direct {p0, p2}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private updateAddGuest(Landroid/content/Context;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 976
    iget-object p2, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p2, p2, Lcom/android/settings/users/UserCapabilities;->mCanAddGuest:Z

    if-eqz p2, :cond_0

    .line 977
    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-eqz p1, :cond_0

    .line 979
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 980
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 981
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 982
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSelectable(Z)V

    goto :goto_0

    .line 984
    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private updateAddUser(Landroid/content/Context;)V
    .locals 5

    .line 989
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v0, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v0, :cond_4

    .line 990
    :cond_0
    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-eqz p1, :cond_4

    .line 992
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 993
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 994
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result p1

    .line 995
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 997
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    sget v3, Lcom/android/settings/R$string;->user_add_max_count:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 998
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getRealUsersCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-virtual {p0, v3, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 997
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1000
    :cond_2
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1002
    :goto_1
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1003
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    .line 1004
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 1003
    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    .line 1007
    :cond_4
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateUI()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    .line 380
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x259

    return p0

    :pswitch_1
    const/16 p0, 0x258

    return p0

    :pswitch_2
    const/16 p0, 0x257

    return p0

    :pswitch_3
    const/16 p0, 0x256

    return p0

    :pswitch_4
    const/16 p0, 0x252

    return p0

    :cond_0
    const/16 p0, 0x253

    return p0

    :cond_1
    const/16 p0, 0x24f

    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getHelpResource()I
    .locals 0

    .line 1113
    sget p0, Lcom/android/settings/R$string;->help_url_users:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x60

    return p0
.end method

.method getRealUsersCount()I
    .locals 2

    .line 1016
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    .line 1017
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/users/-$$Lambda$UserSettings$RPkdkHH2ceYKchMt83CcL72CQtk;->INSTANCE:Lcom/android/settings/users/-$$Lambda$UserSettings$RPkdkHH2ceYKchMt83CcL72CQtk;

    .line 1018
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1019
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public synthetic lambda$buildAddUserDialog$2$UserSettings(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/users/UserSettings;->lambda$buildAddUserDialog$2(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic lambda$buildAddUserDialog$3$UserSettings()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->lambda$buildAddUserDialog$3()V

    return-void
.end method

.method public synthetic lambda$buildEditCurrentUserDialog$0$UserSettings(Landroid/content/pm/UserInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->lambda$buildEditCurrentUserDialog$0(Landroid/content/pm/UserInfo;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic lambda$buildEditCurrentUserDialog$1$UserSettings(Landroid/graphics/drawable/Drawable;Landroid/content/pm/UserInfo;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/users/UserSettings;->lambda$buildEditCurrentUserDialog$1(Landroid/graphics/drawable/Drawable;Landroid/content/pm/UserInfo;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 222
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 226
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->multiple_users_main_switch_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Lcom/android/settingslib/widget/MainSwitchBar;->show()V

    .line 229
    new-instance v1, Lcom/android/settings/users/MultiUserSwitchBarController;

    new-instance v2, Lcom/android/settings/widget/MainSwitchBarController;

    invoke-direct {v2, v0}, Lcom/android/settings/widget/MainSwitchBarController;-><init>(Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    invoke-direct {v1, p1, v2, p0}, Lcom/android/settings/users/MultiUserSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;)V

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mSwitchBarController:Lcom/android/settings/users/MultiUserSwitchBarController;

    .line 231
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mSwitchBarController:Lcom/android/settings/users/MultiUserSwitchBarController;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 443
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    .line 446
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 447
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    .line 450
    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 236
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 237
    sget v0, Lcom/android/settings/R$xml;->user_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 239
    invoke-static {v1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    .line 244
    :cond_0
    new-instance v0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    const-string v2, "user_settings_add_users_when_locked"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 247
    new-instance v0, Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    const-string v2, "multiuser_top_intro"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/users/MultiUserTopIntroPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    .line 250
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 251
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 252
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 254
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 255
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    if-eqz p1, :cond_2

    const-string v0, "removing_user"

    .line 258
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 264
    :cond_2
    invoke-static {v1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    const-string p1, "user"

    .line 265
    invoke-virtual {v1, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 266
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez p1, :cond_3

    return-void

    .line 270
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    const-string v0, "user_list"

    .line 272
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    .line 273
    new-instance v0, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, p1}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const-string p1, "user_me"

    .line 274
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 276
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz p1, :cond_4

    .line 277
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    sget v0, Lcom/android/settings/R$string;->user_admin:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_4
    const-string p1, "guest_add"

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    .line 281
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "user_add"

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    .line 284
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-nez v0, :cond_5

    .line 286
    sget v0, Lcom/android/settings/R$string;->user_add_user_menu:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 288
    :cond_5
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 290
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sget-object v4, Lcom/android/settings/users/UserSettings;->USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 293
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUI()V

    const/4 p1, 0x0

    .line 294
    iput-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    .line 520
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const v3, 0x104000a

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq p1, v6, :cond_1

    packed-switch p1, :pswitch_data_0

    return-object v1

    .line 639
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter p1

    .line 640
    :try_start_0
    sget v0, Lcom/android/settingslib/R$string;->user_new_profile_name:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    .line 642
    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    .line 643
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-direct {p0, v6}, Lcom/android/settings/users/UserSettings;->buildAddUserDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 643
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 631
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter p1

    .line 632
    :try_start_2
    sget v0, Lcom/android/settingslib/R$string;->user_new_user_name:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    .line 634
    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    .line 635
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 636
    invoke-direct {p0, v2}, Lcom/android/settings/users/UserSettings;->buildAddUserDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    .line 635
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 628
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->buildEditCurrentUserDialog()Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 613
    :pswitch_3
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->user_exit_guest_confirm_title:I

    .line 614
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->user_exit_guest_confirm_message:I

    .line 615
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->user_exit_guest_dialog_remove:I

    new-instance v2, Lcom/android/settings/users/UserSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserSettings$8;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 616
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 623
    invoke-virtual {p0, v4, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 624
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 599
    :pswitch_4
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settingslib/R$string;->user_need_lock_message:I

    .line 600
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settingslib/R$string;->user_set_lock_button:I

    new-instance v2, Lcom/android/settings/users/UserSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserSettings$7;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 601
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 608
    invoke-virtual {p0, v4, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 609
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 568
    :pswitch_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 569
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "title"

    .line 570
    sget v4, Lcom/android/settingslib/R$string;->user_add_user_item_title:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "summary"

    .line 572
    sget v4, Lcom/android/settingslib/R$string;->user_add_user_item_summary:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "title"

    .line 575
    sget v7, Lcom/android/settingslib/R$string;->user_add_profile_item_title:I

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "summary"

    .line 577
    sget v7, Lcom/android/settingslib/R$string;->user_add_profile_item_summary:I

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance v7, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v7, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 582
    new-instance v8, Landroid/widget/SimpleAdapter;

    invoke-virtual {v7}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/android/settings/R$layout;->two_line_list_item:I

    const-string v0, "title"

    const-string v4, "summary"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v4

    new-array v6, v6, [I

    sget v0, Lcom/android/settings/R$id;->title:I

    aput v0, v6, v5

    sget v0, Lcom/android/settings/R$id;->summary:I

    aput v0, v6, v2

    move-object v0, v8

    move-object v2, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 586
    sget p1, Lcom/android/settingslib/R$string;->user_add_user_type_title:I

    invoke-virtual {v7, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 587
    new-instance p1, Lcom/android/settings/users/UserSettings$6;

    invoke-direct {p1, p0}, Lcom/android/settings/users/UserSettings$6;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v7, v8, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 596
    invoke-virtual {v7}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 537
    :pswitch_6
    new-instance p0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/android/settings/R$string;->user_cannot_manage_message:I

    .line 538
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 539
    invoke-virtual {p0, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 540
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 542
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "key_add_user_long_message_displayed"

    .line 544
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 547
    sget v5, Lcom/android/settingslib/R$string;->user_add_user_message_short:I

    goto :goto_0

    .line 548
    :cond_2
    sget v5, Lcom/android/settingslib/R$string;->user_add_user_message_long:I

    .line 549
    :goto_0
    new-instance v6, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v6, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settingslib/R$string;->user_add_user_title:I

    .line 550
    invoke-virtual {v6, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 551
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v5, Lcom/android/settings/users/UserSettings$5;

    invoke-direct {v5, p0, v2, p1}, Lcom/android/settings/users/UserSettings$5;-><init>(Lcom/android/settings/users/UserSettings;ZLandroid/content/SharedPreferences;)V

    .line 552
    invoke-virtual {v0, v3, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 563
    invoke-virtual {p0, v4, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 564
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 527
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    new-instance v1, Lcom/android/settings/users/UserSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserSettings$4;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-static {p1, v0, v1}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    .line 347
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->user_remove_user_menu:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-interface {p1, v5, v3, v5, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 351
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 354
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 355
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "no_remove_user"

    .line 354
    invoke-static {v1, v3, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 356
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 359
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 322
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 324
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .line 513
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 515
    invoke-virtual {p0, p0}, Lcom/android/settings/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1105
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, -0x1

    .line 1106
    :try_start_0
    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 1107
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 1108
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onMultiUserSwitchChanged(Z)V
    .locals 0

    .line 375
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUI()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 364
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 366
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onRemoveUserClicked(I)V

    return v1

    .line 369
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 317
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 1068
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 1069
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->isCurrentUserGuest()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 1070
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    .line 1072
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :goto_0
    return v1

    .line 1075
    :cond_1
    instance-of v0, p1, Lcom/android/settings/users/UserPreference;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1076
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    check-cast p1, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1077
    invoke-direct {p0, p1, v2}, Lcom/android/settings/users/UserSettings;->openUserDetails(Landroid/content/pm/UserInfo;Z)V

    return v1

    .line 1079
    :cond_2
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v0, :cond_4

    .line 1082
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x6

    .line 1083
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1085
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    :goto_1
    return v1

    .line 1088
    :cond_4
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v0, :cond_5

    .line 1089
    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 1090
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 1091
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/settingslib/R$string;->user_guest:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1090
    invoke-virtual {p1, v0, v2}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1092
    invoke-direct {p0, p1, v1}, Lcom/android/settings/users/UserSettings;->openUserDetails(Landroid/content/pm/UserInfo;Z)V

    return v1

    :cond_5
    return v2
.end method

.method public onResume()V
    .locals 3

    .line 299
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 301
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 304
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 307
    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 309
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    if-eqz v0, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUI()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 334
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const-string v1, "removing_user"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settingslib/users/EditUserInfoController;->startingActivityForResult()V

    .line 341
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method updateUserList()V
    .locals 13

    .line 833
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 837
    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v1

    .line 839
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 840
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 841
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    .line 844
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    .line 845
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 846
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_2

    .line 852
    :cond_4
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-ne v10, v11, :cond_5

    .line 853
    iget-object v9, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    goto/16 :goto_5

    .line 854
    :cond_5
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 855
    new-instance v10, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v11

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v10, v11, v9, v12}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 856
    sget v11, Lcom/android/settings/R$string;->user_guest:I

    invoke-virtual {v10, v11}, Landroidx/preference/Preference;->setTitle(I)V

    .line 857
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const-string v11, "user_guest"

    .line 858
    invoke-virtual {v10, v11}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    invoke-virtual {v10, v4}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 861
    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 863
    iget-object v11, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v11, v11, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-eqz v11, :cond_6

    .line 864
    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_3

    .line 866
    :cond_6
    invoke-virtual {v10, v9}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 868
    :goto_3
    invoke-virtual {v10, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_4

    .line 870
    :cond_7
    new-instance v10, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v11

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v10, v11, v9, v12}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 871
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "id="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 874
    sget v9, Lcom/android/settings/R$string;->user_admin:I

    invoke-virtual {v10, v9}, Landroidx/preference/Preference;->setSummary(I)V

    .line 876
    :cond_8
    iget-object v9, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v9}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 877
    invoke-virtual {v10, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 878
    invoke-virtual {v10, v4}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 879
    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setSelectable(Z)V

    :goto_4
    move-object v9, v10

    :goto_5
    if-nez v9, :cond_9

    goto/16 :goto_2

    .line 884
    :cond_9
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eq v10, v11, :cond_c

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v10

    if-nez v10, :cond_c

    .line 887
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 888
    sget v10, Lcom/android/settings/R$string;->user_summary_restricted_not_set_up:I

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_7

    .line 890
    :cond_a
    sget v10, Lcom/android/settings/R$string;->user_summary_not_set_up:I

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setSummary(I)V

    .line 893
    iget-object v10, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v10, v10, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-nez v10, :cond_b

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result v10

    if-eqz v10, :cond_b

    move v10, v6

    goto :goto_6

    :cond_b
    move v10, v5

    :goto_6
    invoke-virtual {v9, v10}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_7

    .line 895
    :cond_c
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 896
    sget v10, Lcom/android/settings/R$string;->user_summary_restricted_profile:I

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setSummary(I)V

    .line 898
    :cond_d
    :goto_7
    iget-object v10, v8, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v10, :cond_f

    .line 899
    iget-object v10, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_e

    .line 901
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 904
    :cond_e
    invoke-direct {p0, v9, v8}, Lcom/android/settings/users/UserSettings;->setPhotoId(Landroidx/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_2

    .line 906
    :cond_f
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v8

    if-nez v8, :cond_3

    .line 908
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 913
    :cond_10
    iget-boolean v4, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-eqz v4, :cond_11

    .line 914
    new-instance v4, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, -0xa

    invoke-direct {v4, v6, v9, v7}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 916
    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 917
    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 918
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 919
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    :cond_11
    sget-object v4, Lcom/android/settings/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 926
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 929
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_12

    .line 930
    invoke-direct {p0, v2}, Lcom/android/settings/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    .line 934
    :cond_12
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v2, v2, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v2, :cond_13

    .line 935
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    sget v4, Lcom/android/settings/R$string;->user_list_title:I

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_8

    .line 937
    :cond_13
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v9}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 941
    :goto_8
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 944
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 945
    invoke-virtual {v4}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v4

    .line 944
    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 946
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v4, v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 948
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    .line 949
    invoke-virtual {v4}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v4

    .line 948
    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 950
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    invoke-virtual {v4, v2}, Lcom/android/settings/users/MultiUserTopIntroPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 951
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 953
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/settings/users/-$$Lambda$uQEL8vudzbm77scSiS__mtakyco;->INSTANCE:Lcom/android/settings/users/-$$Lambda$uQEL8vudzbm77scSiS__mtakyco;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->updateAddGuest(Landroid/content/Context;Z)V

    .line 954
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->updateAddUser(Landroid/content/Context;)V

    .line 956
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-nez v0, :cond_14

    return-void

    .line 960
    :cond_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/UserPreference;

    const v2, 0x7fffffff

    .line 961
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 962
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_9

    :cond_15
    return-void
.end method
