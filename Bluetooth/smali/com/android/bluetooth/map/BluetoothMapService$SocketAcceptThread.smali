.class Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;
.super Ljava/lang/Thread;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketAcceptThread"
.end annotation


# instance fields
.field private stopped:Z

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 1

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->stopped:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMapService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p2, "x1"    # Lcom/android/bluetooth/map/BluetoothMapService$1;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 370
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v4

    if-nez v4, :cond_3

    .line 371
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->initSocket()Z
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$200(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 398
    .local v2, "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$400(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 400
    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->access$500()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 401
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const v5, 0x7f0600a0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 403
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$400(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getTrustState()Z

    move-result v3

    .line 404
    .local v3, "trust":Z
    const-string v4, "BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetTrustState() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    if-eqz v3, :cond_6

    .line 409
    :try_start_1
    const-string v4, "BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "incoming connection accepted from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " automatically as trusted device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->startObexServerSession()V
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$600(Lcom/android/bluetooth/map/BluetoothMapService;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 431
    :goto_1
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->stopped:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 376
    .end local v2    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    .end local v3    # "trust":Z
    :cond_3
    :goto_2
    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->stopped:Z

    if-nez v4, :cond_0

    .line 378
    :try_start_3
    const-string v4, "BluetoothMapService"

    const-string v5, "Accepting socket connection..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v2

    .line 380
    .restart local v2    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    if-nez v2, :cond_4

    .line 381
    const-string v4, "BluetoothMapService"

    const-string v5, "mServerSocket is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 432
    .end local v2    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :catch_0
    move-exception v0

    .line 433
    .local v0, "ex":Ljava/io/IOException;
    iput-boolean v7, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->stopped:Z

    goto :goto_2

    .line 384
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v2    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_4
    :try_start_4
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v5

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$302(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 385
    const-string v4, "BluetoothMapService"

    const-string v5, "Accepted socket connection..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    monitor-enter v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 387
    :try_start_5
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$300(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    if-nez v4, :cond_5

    .line 388
    const-string v4, "BluetoothMapService"

    const-string v6, "mConnSocket is null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    monitor-exit v5

    goto/16 :goto_0

    .line 392
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 391
    :cond_5
    :try_start_7
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapService;->access$300(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v6}, Lcom/android/bluetooth/map/BluetoothMapService;->access$402(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 392
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 393
    :try_start_8
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$400(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_1

    .line 394
    const-string v4, "BluetoothMapService"

    const-string v5, "getRemoteDevice() = null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 412
    .restart local v3    # "trust":Z
    :catch_1
    move-exception v0

    .line 413
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v4, "BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "catch exception starting obex server session"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 417
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v4, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$400(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 424
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v5, 0x1

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z
    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$702(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v4, v1, v5}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v4, "BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "waiting for authorization for connection from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1
.end method

.method shutdown()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->stopped:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
