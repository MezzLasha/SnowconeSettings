.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$WifiSettings$gpfVP81Mt4k5oMwv0u2wZtzWri4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$gpfVP81Mt4k5oMwv0u2wZtzWri4;->f$0:Lcom/android/settings/wifi/WifiSettings;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$gpfVP81Mt4k5oMwv0u2wZtzWri4;->f$0:Lcom/android/settings/wifi/WifiSettings;

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->lambda$onWifiEntriesChanged$3$WifiSettings(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method
