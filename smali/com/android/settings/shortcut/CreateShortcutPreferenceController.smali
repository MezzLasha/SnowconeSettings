.class public Lcom/android/settings/shortcut/CreateShortcutPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "CreateShortcutPreferenceController.java"


# static fields
.field private static final SHORTCUT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final SHORTCUT_ID_PREFIX:Ljava/lang/String; = "component-shortcut-"

.field static final SHORTCUT_PROBE:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String; = "CreateShortcutPrefCtrl"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mHost:Landroid/app/Activity;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mShortcutManager:Landroid/content/pm/ShortcutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings.SHORTCUT"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->SHORTCUT_PROBE:Landroid/content/Intent;

    .line 282
    sget-object v0, Lcom/android/settings/shortcut/-$$Lambda$CreateShortcutPreferenceController$UPdzeGPbYPEv1PqS5VJO5ICmS1s;->INSTANCE:Lcom/android/settings/shortcut/-$$Lambda$CreateShortcutPreferenceController$UPdzeGPbYPEv1PqS5VJO5ICmS1s;

    sput-object v0, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->SHORTCUT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "connectivity"

    .line 78
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 79
    const-class p2, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ShortcutManager;

    iput-object p2, p0, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 81
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method private static buildShortcutIntent(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .locals 2

    .line 206
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->SHORTCUT_PROBE:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v1, 0x14000000

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 208
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static createIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;III)Landroid/graphics/Bitmap;
    .locals 4

    .line 236
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030224

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 238
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const/high16 v1, 0x40000000    # 2.0f

    .line 239
    invoke-static {p4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    .line 240
    invoke-virtual {p3, p4, p4}, Landroid/view/View;->measure(II)V

    .line 241
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 243
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v2, 0x1020006

    .line 247
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 248
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v3, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 249
    instance-of v0, p2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    .line 250
    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 252
    :cond_0
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot load icon from app "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", returning a default icon"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CreateShortcutPrefCtrl"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget p1, Lcom/android/settings/R$drawable;->ic_launcher_settings:I

    invoke-static {p0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    .line 256
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 259
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p3, p2, p2, p0, p1}, Landroid/view/View;->layout(IIII)V

    .line 260
    invoke-virtual {p3, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object p4
.end method

.method private static createShortcutInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo;
    .locals 4

    .line 213
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 216
    iget v0, p2, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v0, :cond_0

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_0

    .line 217
    sget v1, Lcom/android/settings/R$layout;->shortcut_badge_maskable:I

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->shortcut_size_maskable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 217
    invoke-static {p0, p2, v0, v1, v2}, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->createIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;III)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p2

    goto :goto_0

    .line 223
    :cond_0
    sget p2, Lcom/android/settings/R$drawable;->ic_launcher_settings:I

    invoke-static {p0, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p2

    .line 225
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "component-shortcut-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v1, p0, v0}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1, p3}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    .line 229
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    .line 230
    invoke-virtual {p0, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    .line 231
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$1(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 0

    .line 283
    iget p0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    iget p1, p1, Landroid/content/pm/ResolveInfo;->priority:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private synthetic lambda$updateState$0(Landroid/content/pm/ResolveInfo;Landroidx/preference/Preference;)Z
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->mHost:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 128
    :cond_0
    invoke-static {p1}, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->buildShortcutIntent(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 129
    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    .line 127
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->createResultIntent(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    .line 130
    iget-object v0, p0, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->mHost:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->logCreateShortcut(Landroid/content/pm/ResolveInfo;)V

    .line 132
    iget-object p0, p0, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->mHost:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method private logCreateShortcut(Landroid/content/pm/ResolveInfo;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 197
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p1, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0x33d

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static updateRestoredShortcuts(Landroid/content/Context;)V
    .locals 7

    .line 265
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 268
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "component-shortcut-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 272
    invoke-static {v4}, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->buildShortcutIntent(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v5

    .line 273
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 272
    invoke-static {p0, v5, v4, v3}, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->createShortcutInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 278
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method createResultIntent(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->createShortcutInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutManager;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$mipmap;->ic_launcher_settings:I

    .line 152
    invoke-static {v1, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 151
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.INTENT"

    .line 153
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 154
    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 156
    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 157
    iget p2, p1, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz p2, :cond_1

    .line 158
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget p3, Lcom/android/settings/R$layout;->shortcut_badge:I

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->shortcut_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 158
    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->createIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;III)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$updateState$0$CreateShortcutPreferenceController(Landroid/content/pm/ResolveInfo;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->lambda$updateState$0(Landroid/content/pm/ResolveInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method queryShortcuts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    iget-object v1, p0, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v2, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->SHORTCUT_PROBE:Landroid/content/Intent;

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 180
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 181
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-class v4, Lcom/android/settings/Settings$TetherSettingsActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 186
    :cond_1
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_2

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping non-system app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CreateShortcutPrefCtrl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_3
    sget-object p0, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->SHORTCUT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->mHost:Landroid/app/Activity;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 8

    .line 96
    instance-of v0, p1, Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/preference/PreferenceGroup;

    .line 100
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->queryShortcuts()Ljava/util/List;

    move-result-object v1

    .line 102
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 103
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 106
    :cond_1
    new-instance v2, Landroidx/preference/PreferenceCategory;

    invoke-direct {v2, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 111
    iget v6, v5, Landroid/content/pm/ResolveInfo;->priority:I

    div-int/lit8 v6, v6, 0xa

    if-eq v6, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-eqz v4, :cond_3

    .line 116
    new-instance v2, Landroidx/preference/PreferenceCategory;

    invoke-direct {v2, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 120
    :cond_3
    new-instance v4, Landroidx/preference/Preference;

    invoke-direct {v4, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 121
    iget-object v7, p0, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 123
    new-instance v7, Lcom/android/settings/shortcut/-$$Lambda$CreateShortcutPreferenceController$ZITaKR659n4_66B5M3MO2dPB0fs;

    invoke-direct {v7, p0, v5}, Lcom/android/settings/shortcut/-$$Lambda$CreateShortcutPreferenceController$ZITaKR659n4_66B5M3MO2dPB0fs;-><init>(Lcom/android/settings/shortcut/CreateShortcutPreferenceController;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 135
    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v4, v6

    goto :goto_0

    :cond_4
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
