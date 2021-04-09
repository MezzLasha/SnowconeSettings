.class public Lcom/android/settingslib/widget/settingsspinner/SettingsSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_RESOURCE:I


# instance fields
.field private final mDefaultInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget v0, Lcom/android/settingslib/widget/R$layout;->settings_spinner_view:I

    sput v0, Lcom/android/settingslib/widget/settingsspinner/SettingsSpinnerAdapter;->DEFAULT_RESOURCE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    sget v0, Lcom/android/settingslib/widget/settingsspinner/SettingsSpinnerAdapter;->DEFAULT_RESOURCE:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const v0, 0x1090009

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/widget/settingsspinner/SettingsSpinnerAdapter;->mDefaultInflater:Landroid/view/LayoutInflater;

    return-void
.end method
