.class public final Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;
.super Ljava/lang/Exception;
.source "MiuiNanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/MiuiNanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6377280e63a17cdL


# instance fields
.field private final status:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;->status:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "status"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;->status:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;->status:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    return-object v0
.end method
