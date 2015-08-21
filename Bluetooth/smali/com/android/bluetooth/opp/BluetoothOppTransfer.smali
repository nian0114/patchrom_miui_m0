.class public Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.super Ljava/lang/Object;
.source "BluetoothOppTransfer.java"

# interfaces
.implements Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;,
        Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    }
.end annotation


# static fields
.field private static final CONNECT_RETRY_TIME:I = 0x64

.field private static final CONNECT_WAIT_TIMEOUT:I = 0xafc8

.field private static final D:Z = true

.field private static final OPUSH_UUID16:S = 0x1105s

.field private static final RFCOMM_CONNECTED:I = 0xb

.field private static final RFCOMM_ERROR:I = 0xa

.field private static final SOCKET_ERROR_RETRY:I = 0xd

.field private static final SOCKET_LINK_KEY_ERROR:Ljava/lang/String; = "Invalid exchange"

.field private static final TAG:Ljava/lang/String; = "BtOppTransfer"

.field private static final V:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

.field private mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

.field private mContext:Landroid/content/Context;

.field private mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

.field private mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

.field private mTimestamp:J

.field private mTransport:Ljavax/obex/ObexTransport;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerManager"    # Landroid/os/PowerManager;
    .param p3, "batch"    # Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/opp/BluetoothOppObexSession;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/opp/BluetoothOppObexSession;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerManager"    # Landroid/os/PowerManager;
    .param p3, "batch"    # Lcom/android/bluetooth/opp/BluetoothOppBatch;
    .param p4, "session"    # Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    .line 111
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 112
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    .line 114
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->registerListern(Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;)V

    .line 115
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .param p1, "x1"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .param p1, "x1"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markShareTimeout(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .param p1, "x1"    # Ljavax/obex/ObexTransport;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->startObexSession()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .param p1, "x1"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->processCurrentShare()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .param p1, "x1"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->tickShareStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed()V

    return-void
.end method

.method private markBatchFailed()V
    .locals 1

    .prologue
    .line 340
    const/16 v0, 0x1eb

    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V

    .line 341
    return-void
.end method

.method private markBatchFailed(I)V
    .locals 9
    .param p1, "failReason"    # I

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xc8

    .line 285
    monitor-enter p0

    .line 287
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    const-string v4, "BtOppTransfer"

    const-string v5, "Mark all ShareInfo in the batch as failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v4, :cond_1

    .line 296
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget p1, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 299
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 301
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 305
    :cond_1
    const/4 v2, 0x0

    .line 306
    .local v2, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    if-nez v4, :cond_3

    .line 337
    :cond_2
    return-void

    .line 291
    .end local v2    # "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 309
    .restart local v2    # "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v4}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v2

    .line 310
    :goto_1
    if-eqz v2, :cond_2

    .line 311
    iget v4, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ge v4, v7, :cond_5

    .line 312
    iput p1, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 314
    .local v0, "contentUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v3, "updateValues":Landroid/content/ContentValues;
    const-string v4, "status"

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    iget v4, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v4, :cond_6

    .line 318
    iget-object v4, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getSendFileInfo(Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v1

    .line 320
    .local v1, "fileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    iget-object v4, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 321
    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 322
    const-string v4, "hint"

    iget-object v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v4, "total_bytes"

    iget-wide v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 324
    const-string v4, "mimetype"

    iget-object v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .end local v1    # "fileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 332
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v4, v0, v5}, Lcom/android/bluetooth/opp/Constants;->sendIntentIfCompleted(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 334
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v3    # "updateValues":Landroid/content/ContentValues;
    :cond_5
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v4}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v2

    goto :goto_1

    .line 327
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local v3    # "updateValues":Landroid/content/ContentValues;
    :cond_6
    iget v4, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ge v4, v7, :cond_4

    iget-object v4, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 328
    new-instance v4, Ljava/io/File;

    iget-object v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 288
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .end local v3    # "updateValues":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method private markShareTimeout(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 5
    .param p1, "share"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    const/4 v4, 0x0

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 278
    .local v0, "contentUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 279
    .local v1, "updateValues":Landroid/content/ContentValues;
    const-string v2, "confirm"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method private processCurrentShare()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    invoke-interface {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 464
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->setConfirmed()V

    .line 467
    :cond_0
    return-void
.end method

.method private startConnectSession()V
    .locals 3

    .prologue
    .line 493
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;Z)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startObexSession()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 424
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 426
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 427
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-nez v0, :cond_0

    .line 431
    const-string v0, "BtOppTransfer"

    const-string v1, "Unexpected error happened !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v0, :cond_2

    .line 439
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;-><init>(Landroid/content/Context;Ljavax/obex/ObexTransport;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getNumShares()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->start(Landroid/os/Handler;I)V

    .line 457
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->processCurrentShare()V

    goto :goto_0

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-ne v0, v1, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    if-nez v0, :cond_1

    .line 448
    const-string v0, "BtOppTransfer"

    const-string v1, "Unexpected error happened !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed()V

    .line 450
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    goto :goto_0
.end method

.method private tickShareStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 5
    .param p1, "share"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    const/4 v4, 0x0

    .line 679
    if-nez p1, :cond_0

    .line 680
    const-string v2, "BtOppTransfer"

    const-string v3, "Share is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :goto_0
    return-void

    .line 683
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 684
    .local v0, "contentUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 685
    .local v1, "updateValues":Landroid/content/ContentValues;
    const-string v2, "direction"

    iget v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 686
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getBatchId()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    return v0
.end method

.method public onBatchCanceled()V
    .locals 2

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->stop()V

    .line 740
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 741
    return-void
.end method

.method public onShareAdded(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 700
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    .line 701
    .local v0, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 702
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 706
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 713
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->processCurrentShare()V

    .line 714
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->setConfirmed()V

    .line 717
    :cond_1
    return-void
.end method

.method public onShareDeleted(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 731
    return-void
.end method

.method public setConfirmed()V
    .locals 2

    .prologue
    .line 475
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;

    const-string v1, "Server Unblock thread"

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Ljava/lang/String;)V

    .line 484
    .local v0, "notifyThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 485
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    const-string v0, "BtOppTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start transfer when Bluetooth is disabled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed()V

    .line 372
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BtOpp Transfer Handler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    .line 383
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v0, :cond_2

    .line 385
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->startConnectSession()V

    goto :goto_0

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->startObexSession()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->interrupt()V

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    invoke-interface {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
