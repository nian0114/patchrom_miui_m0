.class Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
.super Ljava/lang/Thread;
.source "BluetoothOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketConnectThread"
.end annotation


# instance fields
.field private btSocket:Landroid/bluetooth/BluetoothSocket;

.field private final channel:I

.field private final device:Landroid/bluetooth/BluetoothDevice;

.field private final host:Ljava/lang/String;

.field private isConnected:Z

.field private mRetry:Z

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

.field private timestamp:J


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;IZ)V
    .locals 3
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "channel"    # I
    .param p4, "retry"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 526
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 527
    const-string v0, "Socket Connect Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 511
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    .line 513
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 528
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    .line 529
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->host:Ljava/lang/String;

    .line 530
    iput p3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->channel:I

    .line 531
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->isConnected:Z

    .line 532
    iput-boolean p4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 533
    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "retry"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 537
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 538
    const-string v0, "Socket Connect Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 511
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    .line 513
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 539
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    .line 540
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->host:Ljava/lang/String;

    .line 541
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->channel:I

    .line 542
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->isConnected:Z

    .line 543
    iput-boolean p3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 544
    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Ljava/lang/String;II)V
    .locals 3
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "dummy"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 516
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 517
    const-string v0, "Socket Connect Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 511
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    .line 513
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 518
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->host:Ljava/lang/String;

    .line 519
    iput p3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->channel:I

    .line 520
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    .line 521
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->isConnected:Z

    .line 522
    return-void
.end method

.method private markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V
    .locals 2
    .param p1, "s"    # Landroid/bluetooth/BluetoothSocket;

    .prologue
    .line 668
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 673
    return-void

    .line 669
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private markConnectionFailed(Ljava/net/Socket;)V
    .locals 3
    .param p1, "s"    # Ljava/net/Socket;

    .prologue
    .line 659
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 664
    return-void

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BtOppTransfer"

    const-string v2, "TCP socket close error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public interrupt()V
    .locals 3

    .prologue
    .line 548
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    .line 550
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BtOppTransfer"

    const-string v2, "Error when close socket"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->timestamp:J

    .line 620
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    sget-object v5, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :try_start_1
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 632
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 634
    .local v3, "transport":Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->setName(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 638
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 655
    .end local v3    # "transport":Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v1

    .line 622
    .local v1, "e1":Ljava/io/IOException;
    const-string v4, "BtOppTransfer"

    const-string v5, "Rfcomm socket create error"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V

    goto :goto_0

    .line 639
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 640
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BtOppTransfer"

    const-string v5, "Rfcomm socket connect exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    iget-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Invalid exchange"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 648
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v4

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5, v7, v7, v6}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 649
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v4

    const-wide/16 v5, 0x5dc

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 651
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V

    goto :goto_0
.end method
