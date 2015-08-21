.class public Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFile;
.super Ljava/lang/Object;
.source "MiuiNanoHTTPD.java"

# interfaces
.implements Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/MiuiNanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTempFile"
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private fstream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "tempdir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NanoHTTPD-"

    const-string v1, ""

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFile;->fstream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFile;->fstream:Ljava/io/OutputStream;

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFile;->fstream:Ljava/io/OutputStream;

    return-object v0
.end method
