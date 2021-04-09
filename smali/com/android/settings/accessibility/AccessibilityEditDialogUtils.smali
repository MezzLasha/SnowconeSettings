.class public Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;
.super Ljava/lang/Object;
.source "AccessibilityEditDialogUtils.java"


# direct methods
.method private static createDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 145
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->createEditDialogContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 147
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->save:I

    .line 148
    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->cancel:I

    sget-object p2, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityEditDialogUtils$Ue_3PLdTYBQPwWl4BtiG_k5E-Us;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$AccessibilityEditDialogUtils$Ue_3PLdTYBQPwWl4BtiG_k5E-Us;

    .line 149
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static createEditDialogContentView(Landroid/content/Context;I)Landroid/view/View;
    .locals 3

    const-string v0, "layout_inflater"

    .line 191
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    .line 218
    sget p0, Lcom/android/settings/R$layout;->accessibility_edit_magnification_shortcut:I

    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    .line 222
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 212
    :cond_1
    sget p1, Lcom/android/settings/R$layout;->accessibility_edit_magnification_mode:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 214
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->initMagnifyFullScreen(Landroid/content/Context;Landroid/view/View;)V

    .line 215
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->initMagnifyWindowScreen(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 204
    :cond_2
    sget p1, Lcom/android/settings/R$layout;->accessibility_edit_shortcut_magnification:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 206
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 207
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 208
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->initMagnifyShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 209
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->initAdvancedWidget(Landroid/view/View;)V

    goto :goto_0

    .line 198
    :cond_3
    sget p1, Lcom/android/settings/R$layout;->accessibility_edit_shortcut:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 200
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 201
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    :goto_0
    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method private static createSwitchShortcutDialogContentView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x3

    .line 180
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->createEditDialogContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static getSummaryStringWithIcon(Landroid/content/Context;I)Landroid/text/SpannableString;
    .locals 5

    .line 332
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_software:I

    .line 333
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    const-string v2, "%s"

    .line 337
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x2

    .line 339
    sget v3, Lcom/android/settings/R$drawable;->ic_accessibility_new:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 340
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, p0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const-string v4, ""

    .line 341
    invoke-virtual {v3, v4}, Landroid/text/style/ImageSpan;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    .line 342
    invoke-virtual {p0, v4, v4, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 p0, 0x21

    .line 343
    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private static initAdvancedWidget(Landroid/view/View;)V
    .locals 2

    .line 292
    sget v0, Lcom/android/settings/R$id;->advanced_shortcut:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 293
    sget v1, Lcom/android/settings/R$id;->triple_tap_shortcut:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 294
    new-instance v1, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityEditDialogUtils$ogendozVJdYEc_e17jvoZyyS8gk;

    invoke-direct {v1, v0, p0}, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityEditDialogUtils$ogendozVJdYEc_e17jvoZyyS8gk;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 270
    sget v0, Lcom/android/settings/R$id;->hardware_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 271
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_hardware:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 273
    sget v1, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_hardware:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 275
    sget v1, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_hardware:I

    invoke-static {p1, v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static initMagnifyFullScreen(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 229
    sget v0, Lcom/android/settings/R$id;->magnify_full_screen:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 230
    sget v0, Lcom/android/settings/R$string;->accessibility_magnification_area_settings_full_screen:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 232
    sget v0, Lcom/android/settings/R$drawable;->accessibility_magnification_full_screen:I

    invoke-static {p1, p0, v0}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static initMagnifyShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 281
    sget v0, Lcom/android/settings/R$id;->triple_tap_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 282
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_triple_tap:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 284
    sget v1, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_triple_tap:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 286
    sget v1, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_triple_tap:I

    invoke-static {p1, v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static initMagnifyWindowScreen(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 236
    sget v0, Lcom/android/settings/R$id;->magnify_window_screen:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 237
    sget v0, Lcom/android/settings/R$string;->accessibility_magnification_area_settings_window_screen:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 239
    sget v0, Lcom/android/settings/R$drawable;->accessibility_magnification_window_screen:I

    invoke-static {p1, p0, v0}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 262
    sget v0, Lcom/android/settings/R$id;->software_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 263
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 264
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    .line 265
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->retrieveTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 266
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->retrieveSummary(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->retrieveImageResId(Landroid/content/Context;)I

    move-result p0

    .line 265
    invoke-static {p1, v1, v0, p0}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method static synthetic lambda$createDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 150
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$initAdvancedWidget$2(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const/16 p2, 0x8

    .line 295
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p0, 0x0

    .line 296
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$setEditShortcutButtonsListener$1(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 176
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method private static retrieveImageResId(Landroid/content/Context;)I
    .locals 2

    .line 322
    sget v0, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_software:I

    .line 323
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 325
    sget p0, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_software_gesture_talkback:I

    goto :goto_0

    .line 326
    :cond_0
    sget p0, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_software_gesture:I

    :goto_0
    move v0, p0

    :cond_1
    return v0
.end method

.method private static retrieveSummary(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1

    .line 311
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 313
    sget p1, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_software_gesture_talkback:I

    goto :goto_0

    .line 314
    :cond_0
    sget p1, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_software_gesture:I

    .line 315
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 317
    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->getSummaryStringWithIcon(Landroid/content/Context;I)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method

.method private static retrieveTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    .line 301
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_software:I

    .line 302
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_software_gesture_talkback:I

    goto :goto_0

    .line 305
    :cond_0
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_software_gesture:I

    .line 307
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static setEditShortcutButtonsListener(Landroidx/appcompat/app/AlertDialog;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 169
    sget v0, Lcom/android/settings/R$id;->container_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 170
    sget v1, Lcom/android/settings/R$id;->switch_shortcut_positive_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 172
    sget v2, Lcom/android/settings/R$id;->switch_shortcut_negative_button:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 175
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    new-instance p1, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityEditDialogUtils$FQPFIZKRdPne8Y7IuXJBSK9sD78;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityEditDialogUtils$FQPFIZKRdPne8Y7IuXJBSK9sD78;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static setScrollIndicators(Landroidx/appcompat/app/AlertDialog;)V
    .locals 1

    .line 161
    sget v0, Lcom/android/settings/R$id;->container_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ScrollView;

    const/4 v0, 0x3

    .line 162
    invoke-virtual {p0, v0, v0}, Landroid/widget/ScrollView;->setScrollIndicators(II)V

    return-void
.end method

.method private static setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;I)V
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 1

    .line 249
    sget v0, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 250
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 251
    sget p1, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 252
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0x8

    .line 253
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :goto_0
    sget p1, Lcom/android/settings/R$id;->image:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 258
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static showEditShortcutDialog(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, v0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->createDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 84
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->setScrollIndicators(Landroidx/appcompat/app/AlertDialog;)V

    return-object p0
.end method

.method public static showMagnificationEditShortcutDialog(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 98
    invoke-static {p0, v0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->createDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 101
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->setScrollIndicators(Landroidx/appcompat/app/AlertDialog;)V

    return-object p0
.end method

.method public static showMagnificationModeDialog(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    const/4 v0, 0x2

    .line 115
    invoke-static {p0, v0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->createDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 118
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->setScrollIndicators(Landroidx/appcompat/app/AlertDialog;)V

    return-object p0
.end method

.method public static showMagnificationSwitchShortcutDialog(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    .line 132
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->createSwitchShortcutDialogContentView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 134
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 137
    invoke-static {p0, p2}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->setEditShortcutButtonsListener(Landroidx/appcompat/app/AlertDialog;Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->setScrollIndicators(Landroidx/appcompat/app/AlertDialog;)V

    return-object p0
.end method
