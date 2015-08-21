.class Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;
.super Ljava/lang/Thread;
.source "BluetoothOppRfcommListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->start(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 109
    const/4 v6, 0x1

    .line 115
    .local v6, "serverOK":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v8, 0xa

    if-ge v3, v8, :cond_0

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$000(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 118
    :try_start_0
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$200(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    const-string v10, "OBEX Object Push"

    sget-object v11, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v11}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v9

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$102(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_1
    if-nez v6, :cond_0

    .line 126
    monitor-enter p0

    .line 129
    const-wide/16 v8, 0x12c

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e1":Ljava/io/IOException;
    const-string v8, "BtOppRfcommListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error create RfcommServerSocket "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v6, 0x0

    goto :goto_1

    .line 130
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v8, "BtOppRfcommListener"

    const-string v9, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    const/4 v9, 0x1

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$002(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Z)Z

    goto :goto_2

    .line 134
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 139
    :cond_0
    if-nez v6, :cond_1

    .line 140
    const-string v8, "BtOppRfcommListener"

    const-string v9, "Error start listening after 10 try"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v8, v12}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$002(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Z)Z

    .line 143
    :cond_1
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$000(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 144
    const-string v8, "BtOppRfcommListener"

    const-string v9, "Accept thread started."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_2
    :goto_3
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$000(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 150
    :try_start_4
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$100(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v8

    if-nez v8, :cond_3

    .line 153
    :cond_3
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$100(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v5

    .line 154
    .local v5, "sSocket":Landroid/bluetooth/BluetoothServerSocket;
    if-nez v5, :cond_4

    .line 155
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    const/4 v9, 0x1

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$002(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Z)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 169
    .end local v5    # "sSocket":Landroid/bluetooth/BluetoothServerSocket;
    :catch_2
    move-exception v1

    .line 170
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "BtOppRfcommListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error accept connection "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-wide/16 v8, 0x1f4

    :try_start_5
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 173
    :catch_3
    move-exception v8

    goto :goto_3

    .line 158
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "sSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_4
    :try_start_6
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 161
    .local v0, "clientSocket":Landroid/bluetooth/BluetoothSocket;
    new-instance v7, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;

    invoke-direct {v7, v0}, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 163
    .local v7, "transport":Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 164
    .local v4, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mCallback:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$300(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 165
    const/16 v8, 0x64

    iput v8, v4, Landroid/os/Message;->what:I

    .line 166
    iput-object v7, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 167
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 176
    .end local v0    # "clientSocket":Landroid/bluetooth/BluetoothSocket;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "sSocket":Landroid/bluetooth/BluetoothServerSocket;
    .end local v7    # "transport":Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;
    :cond_5
    const-string v8, "BtOppRfcommListener"

    const-string v9, "BluetoothSocket listen thread finished"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method
