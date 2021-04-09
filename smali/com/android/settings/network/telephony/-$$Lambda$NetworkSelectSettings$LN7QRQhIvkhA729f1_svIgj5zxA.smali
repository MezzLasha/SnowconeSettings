.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$LN7QRQhIvkhA729f1_svIgj5zxA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

.field public final synthetic f$1:Lcom/android/internal/telephony/OperatorInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/internal/telephony/OperatorInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$LN7QRQhIvkhA729f1_svIgj5zxA;->f$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iput-object p2, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$LN7QRQhIvkhA729f1_svIgj5zxA;->f$1:Lcom/android/internal/telephony/OperatorInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$LN7QRQhIvkhA729f1_svIgj5zxA;->f$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object p0, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$LN7QRQhIvkhA729f1_svIgj5zxA;->f$1:Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->lambda$onPreferenceTreeClick$0$NetworkSelectSettings(Lcom/android/internal/telephony/OperatorInfo;)V

    return-void
.end method
