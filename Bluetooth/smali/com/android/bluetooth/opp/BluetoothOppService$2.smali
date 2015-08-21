.class Lcom/android/bluetooth/opp/BluetoothOppService$2;
.super Landroid/os/Handler;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 220
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 222
    :sswitch_0
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$200(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->stop()V

    .line 223
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v9, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$302(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 224
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v9

    .line 225
    :try_start_0
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$400(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    move-result-object v8

    if-nez v8, :cond_1

    .line 226
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->stopSelf()V

    .line 228
    :cond_1
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 231
    :sswitch_1
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$500(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 232
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->startSocketListener()V
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$600(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    goto :goto_0

    .line 238
    :sswitch_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v6, "updateValues":Landroid/content/ContentValues;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 240
    .local v0, "contentUri":Landroid/net/Uri;
    const-string v8, "scanned"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    const-string v8, "uri"

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v8, "mimetype"

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v9

    .line 246
    :try_start_1
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v10, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mMediaScanInProgress:Z
    invoke-static {v8, v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$702(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 247
    monitor-exit v9

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v8

    .line 250
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v6    # "updateValues":Landroid/content/ContentValues;
    :sswitch_3
    const-string v8, "BtOppService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Update mInfo.id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for MEDIA_SCANNED_FAILED"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 252
    .local v7, "updateValues1":Landroid/content/ContentValues;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 253
    .local v1, "contentUri1":Landroid/net/Uri;
    const-string v8, "scanned"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v1, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 256
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v9

    .line 257
    :try_start_2
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v10, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mMediaScanInProgress:Z
    invoke-static {v8, v10}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$702(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 258
    monitor-exit v9

    goto/16 :goto_0

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v8

    .line 261
    .end local v1    # "contentUri1":Landroid/net/Uri;
    .end local v7    # "updateValues1":Landroid/content/ContentValues;
    :sswitch_4
    const-string v8, "BtOppService"

    const-string v9, "Get incoming connection"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljavax/obex/ObexTransport;

    .line 269
    .local v5, "transport":Ljavax/obex/ObexTransport;
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$800(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$900(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;

    move-result-object v8

    if-nez v8, :cond_2

    .line 270
    const-string v8, "BtOppService"

    const-string v9, "Start Obex Server"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->createServerSession(Ljavax/obex/ObexTransport;)V
    invoke-static {v8, v5}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1000(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)V

    goto/16 :goto_0

    .line 273
    :cond_2
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$900(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 274
    const-string v8, "BtOppService"

    const-string v9, "OPP busy! Reject connection"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_3
    invoke-interface {v5}, Ljavax/obex/ObexTransport;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 277
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "BtOppService"

    const-string v9, "close tranport error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 284
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    const-string v8, "BtOppService"

    const-string v9, "OPP busy! Retry after 1 second"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I
    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1100(Lcom/android/bluetooth/opp/BluetoothOppService;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1102(Lcom/android/bluetooth/opp/BluetoothOppService;I)I

    .line 286
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;
    invoke-static {v8, v5}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$902(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;

    .line 287
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 288
    .local v3, "msg1":Landroid/os/Message;
    const/4 v8, 0x4

    iput v8, v3, Landroid/os/Message;->what:I

    .line 289
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v3, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 294
    .end local v3    # "msg1":Landroid/os/Message;
    .end local v5    # "transport":Ljavax/obex/ObexTransport;
    :sswitch_5
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$800(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 295
    const-string v8, "BtOppService"

    const-string v9, "Start Obex Server"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;
    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$900(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;

    move-result-object v9

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->createServerSession(Ljavax/obex/ObexTransport;)V
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1000(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)V

    .line 297
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v9, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1102(Lcom/android/bluetooth/opp/BluetoothOppService;I)I

    .line 298
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v9, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$902(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;

    goto/16 :goto_0

    .line 300
    :cond_4
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1100(Lcom/android/bluetooth/opp/BluetoothOppService;)I

    move-result v8

    const/16 v9, 0x14

    if-ne v8, v9, :cond_5

    .line 301
    const-string v8, "BtOppService"

    const-string v9, "Retried 20 seconds, reject connection"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :try_start_4
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$900(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;

    move-result-object v8

    invoke-interface {v8}, Ljavax/obex/ObexTransport;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 307
    :goto_1
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v9, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1102(Lcom/android/bluetooth/opp/BluetoothOppService;I)I

    .line 308
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v9, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$902(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;

    goto/16 :goto_0

    .line 304
    :catch_1
    move-exception v2

    .line 305
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "BtOppService"

    const-string v9, "close tranport error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 310
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    const-string v8, "BtOppService"

    const-string v9, "OPP busy! Retry after 1 second"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I
    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1100(Lcom/android/bluetooth/opp/BluetoothOppService;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I
    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1102(Lcom/android/bluetooth/opp/BluetoothOppService;I)I

    .line 312
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    .line 313
    .local v4, "msg2":Landroid/os/Message;
    const/4 v8, 0x4

    iput v8, v4, Landroid/os/Message;->what:I

    .line 314
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 220
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x64 -> :sswitch_4
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method
