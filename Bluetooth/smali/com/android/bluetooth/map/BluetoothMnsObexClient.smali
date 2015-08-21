.class public Lcom/android/bluetooth/map/BluetoothMnsObexClient;
.super Ljava/lang/Object;
.source "BluetoothMnsObexClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMnsObexClient$1;,
        Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;
    }
.end annotation


# static fields
.field public static final BluetoothUuid_ObexMns:Landroid/os/ParcelUuid;

.field private static final D:Z = false

.field public static final MSG_MNS_NOTIFICATION_REGISTRATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMnsObexClient"

.field private static final TYPE_EVENT:Ljava/lang/String; = "x-bt/MAP-event-report"

.field private static final V:Z


# instance fields
.field private hsConnect:Ljavax/obex/HeaderSet;

.field private mCallback:Landroid/os/Handler;

.field private mClientSession:Ljavax/obex/ClientSession;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field private mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field private mObserverRegistered:Z

.field mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mTransport:Ljavax/obex/ObexTransport;

.field private volatile mWaitingForRemote:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "00001133-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BluetoothUuid_ObexMns:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "callback"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    .line 59
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    .line 61
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mCallback:Landroid/os/Handler;

    .line 63
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserverRegistered:Z

    .line 184
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->hsConnect:Ljavax/obex/HeaderSet;

    .line 75
    if-nez p2, :cond_0

    .line 76
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Obex transport is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BluetoothMnsObexClient"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 80
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 81
    .local v0, "looper":Landroid/os/Looper;
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;-><init>(Lcom/android/bluetooth/map/BluetoothMnsObexClient;Landroid/os/Looper;Lcom/android/bluetooth/map/BluetoothMnsObexClient$1;)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    .line 82
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 84
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mCallback:Landroid/os/Handler;

    .line 85
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 86
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->init()V

    .line 87
    return-void
.end method

.method private handleSendException(Ljava/lang/String;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/String;

    .prologue
    .line 374
    const-string v0, "BluetoothMnsObexClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when sending event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void
.end method

.method private notifyUpdateWakeLock()V
    .locals 2

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 379
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 380
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 381
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 214
    const-string v5, "BluetoothMnsObexClient"

    const-string v6, "handleRegistration: connect 2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, "btSocket":Landroid/bluetooth/BluetoothSocket;
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BluetoothUuid_ObexMns:Landroid/os/ParcelUuid;

    invoke-virtual {v6}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    new-instance v5, Lcom/android/bluetooth/map/BluetoothMnsRfcommTransport;

    invoke-direct {v5, v0}, Lcom/android/bluetooth/map/BluetoothMnsRfcommTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;

    .line 230
    :try_start_1
    new-instance v5, Ljavax/obex/ClientSession;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;

    invoke-direct {v5, v6}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    .line 231
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    :goto_0
    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    if-eqz v5, :cond_0

    .line 236
    iput-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    .line 237
    new-instance v3, Ljavax/obex/HeaderSet;

    invoke-direct {v3}, Ljavax/obex/HeaderSet;-><init>()V

    .line 239
    .local v3, "hs":Ljavax/obex/HeaderSet;
    const/16 v5, 0x10

    new-array v4, v5, [B

    fill-array-data v4, :array_0

    .line 243
    .local v4, "mnsTarget":[B
    const/16 v5, 0x46

    invoke-virtual {v3, v5, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 245
    monitor-enter p0

    .line 246
    const/4 v5, 0x1

    :try_start_2
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWaitingForRemote:Z

    .line 247
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    :try_start_3
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {v5, v3}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->hsConnect:Ljavax/obex/HeaderSet;

    .line 251
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 256
    .end local v3    # "hs":Ljavax/obex/HeaderSet;
    .end local v4    # "mnsTarget":[B
    :cond_0
    :goto_1
    monitor-enter p0

    .line 257
    const/4 v5, 0x0

    :try_start_4
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWaitingForRemote:Z

    .line 258
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 259
    :goto_2
    return-void

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "BluetoothMnsObexClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BtSocket Connect error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 232
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 233
    .local v2, "e1":Ljava/io/IOException;
    const-string v5, "BluetoothMnsObexClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OBEX session create error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    .end local v2    # "e1":Ljava/io/IOException;
    .restart local v3    # "hs":Ljavax/obex/HeaderSet;
    .restart local v4    # "mnsTarget":[B
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 252
    :catch_2
    move-exception v1

    .line 253
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "BluetoothMnsObexClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OBEX session connect error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 258
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "hs":Ljavax/obex/HeaderSet;
    .end local v4    # "mnsTarget":[B
    :catchall_1
    move-exception v5

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v5

    .line 239
    :array_0
    .array-data 1
        -0x45t
        0x58t
        0x2bt
        0x41t
        0x42t
        0xct
        0x11t
        -0x25t
        -0x50t
        -0x22t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public declared-synchronized disconnect()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {v1}, Ljavax/obex/ClientSession;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    :try_start_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v1}, Ljavax/obex/ObexTransport;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string v1, "BluetoothMnsObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session disconnect error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_5
    const-string v1, "BluetoothMnsObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session close error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 148
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 149
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "BluetoothMnsObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTransport.close error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public getContentObserver()Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    return-object v0
.end method

.method public getMessageHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleRegistration(II)V
    .locals 4
    .param p1, "masId"    # I
    .param p2, "notificationStatus"    # I

    .prologue
    const/4 v3, 0x1

    .line 187
    const-string v0, "BluetoothMnsObexClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRegistration( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p2, v3, :cond_0

    .line 191
    const-string v0, "BluetoothMnsObexClient"

    const-string v1, "handleRegistration: connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->connect()V

    .line 195
    :cond_0
    if-nez p2, :cond_2

    .line 197
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserverRegistered:Z

    if-ne v0, v3, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unregisterObserver()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserverRegistered:Z

    .line 200
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->disconnect()V

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 202
    :cond_2
    if-ne p2, v3, :cond_1

    .line 206
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserverRegistered:Z

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0, p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->registerObserver(Lcom/android/bluetooth/map/BluetoothMnsObexClient;I)V

    .line 208
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserverRegistered:Z

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    return v0
.end method

.method public sendEvent([BI)I
    .locals 18
    .param p1, "eventBytes"    # [B
    .param p2, "masInstanceId"    # I

    .prologue
    .line 263
    const/4 v6, 0x0

    .line 264
    .local v6, "error":Z
    const/4 v11, -0x1

    .line 266
    .local v11, "responseCode":I
    const/4 v3, 0x0

    .line 267
    .local v3, "bytesWritten":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    .line 269
    .local v4, "clientSession":Ljavax/obex/ClientSession;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    if-eqz v13, :cond_0

    if-nez v4, :cond_1

    .line 270
    :cond_0
    const-string v13, "BluetoothMnsObexClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sendEvent after disconnect:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v11

    .line 370
    .end local v11    # "responseCode":I
    .local v12, "responseCode":I
    :goto_0
    return v12

    .line 274
    .end local v12    # "responseCode":I
    .restart local v11    # "responseCode":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->notifyUpdateWakeLock()V

    .line 276
    new-instance v10, Ljavax/obex/HeaderSet;

    invoke-direct {v10}, Ljavax/obex/HeaderSet;-><init>()V

    .line 277
    .local v10, "request":Ljavax/obex/HeaderSet;
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 278
    .local v1, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMasInstanceId(I)V

    .line 280
    const/4 v9, 0x0

    .line 281
    .local v9, "putOperation":Ljavax/obex/ClientOperation;
    const/4 v8, 0x0

    .line 284
    .local v8, "outputStream":Ljava/io/OutputStream;
    const/16 v13, 0x42

    :try_start_0
    const-string v14, "x-bt/MAP-event-report"

    invoke-virtual {v10, v13, v14}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 285
    const/16 v13, 0x4c

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->EncodeParams()[B

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->hsConnect:Ljavax/obex/HeaderSet;

    iget-object v13, v13, Ljavax/obex/HeaderSet;->mConnectionID:[B

    if-eqz v13, :cond_3

    .line 288
    const/4 v13, 0x4

    new-array v13, v13, [B

    iput-object v13, v10, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->hsConnect:Ljavax/obex/HeaderSet;

    iget-object v13, v13, Ljavax/obex/HeaderSet;->mConnectionID:[B

    const/4 v14, 0x0

    iget-object v15, v10, Ljavax/obex/HeaderSet;->mConnectionID:[B

    const/16 v16, 0x0

    const/16 v17, 0x4

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    :goto_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 295
    const/4 v13, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWaitingForRemote:Z

    .line 296
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :try_start_2
    invoke-virtual {v4, v10}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljavax/obex/ClientOperation;

    move-object v9, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 307
    :goto_2
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 308
    const/4 v13, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWaitingForRemote:Z

    .line 309
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 310
    if-nez v6, :cond_2

    .line 313
    :try_start_5
    invoke-virtual {v9}, Ljavax/obex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v8

    .line 320
    :cond_2
    :goto_3
    if-nez v6, :cond_d

    .line 322
    :try_start_6
    invoke-virtual {v9}, Ljavax/obex/ClientOperation;->getMaxPacketSize()I

    move-result v7

    .line 324
    .local v7, "maxChunkSize":I
    :goto_4
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v3, v13, :cond_c

    .line 325
    move-object/from16 v0, p1

    array-length v13, v0

    sub-int/2addr v13, v3

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 326
    .local v2, "bytesToWrite":I
    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 327
    add-int/2addr v3, v2

    goto :goto_4

    .line 291
    .end local v2    # "bytesToWrite":I
    .end local v7    # "maxChunkSize":I
    :cond_3
    const-string v13, "BluetoothMnsObexClient"

    const-string v14, "sendEvent: no connection ID"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .line 338
    :catch_0
    move-exception v5

    .line 339
    .local v5, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->handleSendException(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 340
    const/4 v6, 0x1

    .line 346
    if-eqz v8, :cond_4

    .line 347
    :try_start_8
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 353
    :cond_4
    :goto_5
    if-nez v6, :cond_5

    if-eqz v9, :cond_5

    .line 354
    :try_start_9
    invoke-virtual {v9}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v11

    .line 355
    const/4 v13, -0x1

    if-eq v11, v13, :cond_5

    .line 357
    const/16 v13, 0xa0

    if-eq v11, v13, :cond_5

    .line 358
    const-string v13, "BluetoothMnsObexClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Response error code is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_5
    if-eqz v9, :cond_6

    .line 363
    invoke-virtual {v9}, Ljavax/obex/ClientOperation;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .end local v5    # "e":Ljava/io/IOException;
    :cond_6
    :goto_6
    move v12, v11

    .line 370
    .end local v11    # "responseCode":I
    .restart local v12    # "responseCode":I
    goto/16 :goto_0

    .line 296
    .end local v12    # "responseCode":I
    .restart local v11    # "responseCode":I
    :catchall_0
    move-exception v13

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v13
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 341
    :catch_1
    move-exception v5

    .line 342
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_c
    invoke-virtual {v5}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->handleSendException(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 343
    const/4 v6, 0x1

    .line 346
    if-eqz v8, :cond_7

    .line 347
    :try_start_d
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 353
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_7
    :goto_7
    if-nez v6, :cond_8

    if-eqz v9, :cond_8

    .line 354
    :try_start_e
    invoke-virtual {v9}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v11

    .line 355
    const/4 v13, -0x1

    if-eq v11, v13, :cond_8

    .line 357
    const/16 v13, 0xa0

    if-eq v11, v13, :cond_8

    .line 358
    const-string v13, "BluetoothMnsObexClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Response error code is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_8
    if-eqz v9, :cond_6

    .line 363
    invoke-virtual {v9}, Ljavax/obex/ClientOperation;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_6

    .line 365
    :catch_2
    move-exception v5

    .line 366
    .local v5, "e":Ljava/io/IOException;
    const-string v13, "BluetoothMnsObexClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error when closing stream after send "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_8
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 303
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 304
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_f
    const-string v13, "BluetoothMnsObexClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error when put HeaderSet "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 305
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 309
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v13

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    throw v13
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 345
    :catchall_2
    move-exception v13

    .line 346
    if-eqz v8, :cond_9

    .line 347
    :try_start_12
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 353
    :cond_9
    :goto_9
    if-nez v6, :cond_a

    if-eqz v9, :cond_a

    .line 354
    :try_start_13
    invoke-virtual {v9}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v11

    .line 355
    const/4 v14, -0x1

    if-eq v11, v14, :cond_a

    .line 357
    const/16 v14, 0xa0

    if-eq v11, v14, :cond_a

    .line 358
    const-string v14, "BluetoothMnsObexClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Response error code is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_a
    if-eqz v9, :cond_b

    .line 363
    invoke-virtual {v9}, Ljavax/obex/ClientOperation;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    .line 345
    :cond_b
    :goto_a
    throw v13

    .line 314
    :catch_4
    move-exception v5

    .line 315
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_14
    const-string v13, "BluetoothMnsObexClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error when opening OutputStream "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v6, 0x1

    goto/16 :goto_3

    .line 330
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v7    # "maxChunkSize":I
    :cond_c
    move-object/from16 v0, p1

    array-length v13, v0

    if-ne v3, v13, :cond_10

    .line 331
    const-string v13, "BluetoothMnsObexClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SendEvent finished send length"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    array-length v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 346
    .end local v7    # "maxChunkSize":I
    :cond_d
    :goto_b
    if-eqz v8, :cond_e

    .line 347
    :try_start_15
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    .line 353
    :cond_e
    :goto_c
    if-nez v6, :cond_f

    if-eqz v9, :cond_f

    .line 354
    :try_start_16
    invoke-virtual {v9}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v11

    .line 355
    const/4 v13, -0x1

    if-eq v11, v13, :cond_f

    .line 357
    const/16 v13, 0xa0

    if-eq v11, v13, :cond_f

    .line 358
    const-string v13, "BluetoothMnsObexClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Response error code is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_f
    if-eqz v9, :cond_6

    .line 363
    invoke-virtual {v9}, Ljavax/obex/ClientOperation;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_5

    goto/16 :goto_6

    .line 365
    :catch_5
    move-exception v5

    .line 366
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v13, "BluetoothMnsObexClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error when closing stream after send "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_8

    .line 333
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v7    # "maxChunkSize":I
    :cond_10
    const/4 v6, 0x1

    .line 334
    :try_start_17
    invoke-virtual {v9}, Ljavax/obex/ClientOperation;->abort()V

    .line 335
    const-string v13, "BluetoothMnsObexClient"

    const-string v14, "SendEvent interrupted"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    goto :goto_b

    .line 349
    .end local v7    # "maxChunkSize":I
    :catch_6
    move-exception v5

    .line 350
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v14, "BluetoothMnsObexClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error when closing stream after send "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 365
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .line 366
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v14, "BluetoothMnsObexClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error when closing stream after send "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 349
    :catch_8
    move-exception v5

    .line 350
    const-string v13, "BluetoothMnsObexClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error when closing stream after send "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 365
    :catch_9
    move-exception v5

    .line 366
    const-string v13, "BluetoothMnsObexClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error when closing stream after send "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_8

    .line 349
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_a
    move-exception v5

    .line 350
    .local v5, "e":Ljava/io/IOException;
    const-string v13, "BluetoothMnsObexClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error when closing stream after send "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 349
    .end local v5    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v5

    .line 350
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v13, "BluetoothMnsObexClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error when closing stream after send "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method

.method public shutdown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 164
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 165
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 168
    :cond_0
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    .line 172
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->disconnect()V

    .line 174
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserverRegistered:Z

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unregisterObserver()V

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserverRegistered:Z

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v1, :cond_3

    .line 179
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deinit()V

    .line 180
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 182
    :cond_3
    return-void
.end method
