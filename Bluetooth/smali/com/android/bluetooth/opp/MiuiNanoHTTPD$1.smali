.class Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;
.super Ljava/lang/Object;
.source "MiuiNanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    # getter for: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;
    invoke-static {v2}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$100(Lcom/android/bluetooth/opp/MiuiNanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .local v0, "finalAccept":Ljava/net/Socket;
    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->registerConnection(Ljava/net/Socket;)V

    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .local v1, "inputStream":Ljava/io/InputStream;
    if-nez v1, :cond_1

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/net/Socket;)V
    invoke-static {v0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$200(Ljava/net/Socket;)V

    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->unRegisterConnection(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "finalAccept":Ljava/net/Socket;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    # getter for: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;
    invoke-static {v2}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$100(Lcom/android/bluetooth/opp/MiuiNanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .restart local v0    # "finalAccept":Ljava/net/Socket;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    # getter for: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->asyncRunner:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$AsyncRunner;
    invoke-static {v2}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$500(Lcom/android/bluetooth/opp/MiuiNanoHTTPD;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$AsyncRunner;

    move-result-object v2

    new-instance v3, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1$1;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;Ljava/net/Socket;Ljava/io/InputStream;)V

    invoke-interface {v2, v3}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$AsyncRunner;->exec(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v0    # "finalAccept":Ljava/net/Socket;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
