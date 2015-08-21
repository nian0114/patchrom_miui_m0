.class Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$1;
.super Ljava/lang/Object;
.source "MiuiBluetoothOppObexClientSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->createChannel()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$1;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$1;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;

    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$1;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mServerSocket:Ljava/net/ServerSocket;
    invoke-static {v2}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    # setter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSocket:Ljava/net/Socket;
    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;Ljava/net/Socket;)Ljava/net/Socket;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$1;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;

    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$1;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->access$000(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    # setter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSocketInput:Ljava/io/InputStream;
    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->access$202(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;Ljava/io/InputStream;)Ljava/io/InputStream;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$1;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;

    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$1;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->access$000(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    # setter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSocketOutput:Ljava/io/OutputStream;
    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->access$302(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    const-string v1, "MiuiBluetoothObexOppClientSession"

    const-string v2, "accept socket."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
