.class final Lcom/google/common/io/Closer$LoggingSuppressor;
.super Ljava/lang/Object;
.source "Closer.java"

# interfaces
.implements Lcom/google/common/io/Closer$Suppressor;


# static fields
.field static final INSTANCE:Lcom/google/common/io/Closer$LoggingSuppressor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 244
    new-instance v0, Lcom/google/common/io/Closer$LoggingSuppressor;

    invoke-direct {v0}, Lcom/google/common/io/Closer$LoggingSuppressor;-><init>()V

    sput-object v0, Lcom/google/common/io/Closer$LoggingSuppressor;->INSTANCE:Lcom/google/common/io/Closer$LoggingSuppressor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
