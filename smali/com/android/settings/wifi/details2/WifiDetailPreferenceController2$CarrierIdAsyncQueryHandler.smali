.class Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "WifiDetailPreferenceController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarrierIdAsyncQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/content/Context;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    .line 208
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/content/Context;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 214
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$000(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$100(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$200(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_require_specific_sim_card_to_connect:I

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 223
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 221
    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 216
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$100(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroidx/preference/Preference;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_require_sim_card_to_connect:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_3
    return-void
.end method
