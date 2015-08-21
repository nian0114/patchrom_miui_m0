.class Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;
.super Ljava/lang/Object;
.source "MiuiNanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;

.field final synthetic val$finalAccept:Ljava/net/Socket;

.field final synthetic val$inputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;Ljava/net/Socket;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->this$1:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;

    iput-object p2, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->val$finalAccept:Ljava/net/Socket;

    iput-object p3, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->val$inputStream:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->val$finalAccept:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->this$1:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;

    iget-object v1, v1, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    # getter for: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->tempFileManagerFactory:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManagerFactory;
    invoke-static {v1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$300(Lcom/android/bluetooth/opp/MiuiNanoHTTPD;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManagerFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManagerFactory;->create()Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;

    move-result-object v2

    .local v2, "tempFileManager":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;
    new-instance v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->this$1:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;

    iget-object v1, v1, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->val$inputStream:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->val$finalAccept:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD;Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    .local v0, "session":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->val$finalAccept:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "session":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;
    .end local v2    # "tempFileManager":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    instance-of v1, v6, Ljava/net/SocketException;

    if-eqz v1, :cond_0

    const-string v1, "NanoHttpd Shutdown"

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v4}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->val$inputStream:Ljava/io/InputStream;

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->val$finalAccept:Ljava/net/Socket;

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/net/Socket;)V
    invoke-static {v1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$200(Ljava/net/Socket;)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->this$1:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;

    iget-object v1, v1, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->val$finalAccept:Ljava/net/Socket;

    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->unRegisterConnection(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception v1

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v4}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->val$inputStream:Ljava/io/InputStream;

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v3}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->val$finalAccept:Ljava/net/Socket;

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/net/Socket;)V
    invoke-static {v3}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$200(Ljava/net/Socket;)V

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->this$1:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;

    iget-object v3, v3, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->val$finalAccept:Ljava/net/Socket;

    invoke-virtual {v3, v5}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->unRegisterConnection(Ljava/net/Socket;)V

    throw v1

    .restart local v0    # "session":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;
    .restart local v2    # "tempFileManager":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;
    :cond_2
    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v4}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->val$inputStream:Ljava/io/InputStream;

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->val$finalAccept:Ljava/net/Socket;

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/net/Socket;)V
    invoke-static {v1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$200(Ljava/net/Socket;)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->this$1:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;

    iget-object v1, v1, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;->val$finalAccept:Ljava/net/Socket;

    goto :goto_1
.end method
