.class public Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFileManager;
.super Ljava/lang/Object;
.source "MiuiNanoHTTPD.java"

# interfaces
.implements Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/MiuiNanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTempFileManager"
.end annotation


# instance fields
.field private final tempFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFile;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpdir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFileManager;->tmpdir:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFile;

    .local v0, "file":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFile;
    :try_start_0
    invoke-interface {v0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFile;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0    # "file":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFile;
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void
.end method

.method public createTempFile()Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFile;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFileManager;->tmpdir:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFile;-><init>(Ljava/lang/String;)V

    .local v0, "tempFile":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFile;
    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
