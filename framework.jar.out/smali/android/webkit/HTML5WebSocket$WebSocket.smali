.class Landroid/webkit/HTML5WebSocket$WebSocket;
.super Ljava/lang/Object;
.source "HTML5WebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebSocket"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final LOG_TAG:Ljava/lang/String; = "WebSocket"


# instance fields
.field private mBufferReadQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mBufferWriteQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

.field private mHost:Ljava/lang/String;

.field private mIsSecure:Z

.field private mPort:I

.field private mReadBuffer:Ljava/nio/ByteBuffer;

.field private mRunning:Z

.field private mSelector:Ljava/nio/channels/Selector;

.field private mSocketChannel:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Landroid/webkit/HTML5WebSocket;)V
    .locals 2
    .parameter "webSocket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mRunning:Z

    iput-boolean v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mIsSecure:Z

    iput-object v1, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mHost:Ljava/lang/String;

    const/16 v0, 0x50

    iput v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mPort:I

    iput-object v1, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mReadBuffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mBufferWriteQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mBufferReadQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private closeImpl()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/HTML5WebSocket$WebSocket;->setSocketRunning(Z)V

    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

    invoke-virtual {v0}, Landroid/webkit/HTML5WebSocket;->onClosed()V

    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSelector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_1
    return-void
.end method

.method private handleConnectable(Ljava/nio/channels/SelectionKey;)V
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    :cond_0
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mReadBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

    invoke-virtual {v0}, Landroid/webkit/HTML5WebSocket;->onConnected()V

    return-void
.end method

.method private handleReadable(Ljava/nio/channels/SelectionKey;)V
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->readImpl()I

    move-result v0

    .local v0, count:I
    if-gez v0, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

    invoke-virtual {v2}, Landroid/webkit/HTML5WebSocket;->onMessage()V

    invoke-direct {p0, p1}, Landroid/webkit/HTML5WebSocket$WebSocket;->handleWritable(Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #count:I
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, ex:Ljava/io/IOException;
    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

    invoke-virtual {v2, v1}, Landroid/webkit/HTML5WebSocket;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_0
.end method

.method private handleRunnable()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->isSocketRunning()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->select()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v3

    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .local v2, key:Ljava/nio/channels/SelectionKey;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v2}, Landroid/webkit/HTML5WebSocket$WebSocket;->handleConnectable(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1

    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v2           #key:Ljava/nio/channels/SelectionKey;
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/nio/channels/ClosedSelectorException;
    goto :goto_0

    .end local v0           #e:Ljava/nio/channels/ClosedSelectorException;
    :catch_2
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v2       #key:Ljava/nio/channels/SelectionKey;
    .restart local v3       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_3
    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->isSocketConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v2}, Landroid/webkit/HTML5WebSocket$WebSocket;->handleWritable(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->isSocketConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v2}, Landroid/webkit/HTML5WebSocket$WebSocket;->handleReadable(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1
.end method

.method private handleWritable(Ljava/nio/channels/SelectionKey;)V
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, count:I
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->getWriteQueueData()Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, data:Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroid/webkit/HTML5WebSocket$WebSocket;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_0
    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    and-int/lit8 v3, v3, -0x5

    invoke-virtual {p1, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #data:Ljava/nio/ByteBuffer;
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v2

    .local v2, ex:Ljava/io/IOException;
    iget-object v3, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

    invoke-virtual {v3, v2}, Landroid/webkit/HTML5WebSocket;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_0
.end method

.method private declared-synchronized isSocketConnected()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isSocketRunning()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private readImpl()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .local v1, plainDataCount:I
    :cond_0
    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->isSocketRunning()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-gtz v1, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mReadBuffer:Ljava/nio/ByteBuffer;

    .local v0, chunk:Ljava/nio/ByteBuffer;
    const/16 v2, 0x1000

    if-ge v1, v2, :cond_3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_3
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5WebSocket$WebSocket;->putReadQueueData(Ljava/nio/ByteBuffer;)V

    if-gtz v1, :cond_0

    goto :goto_0
.end method

.method private declared-synchronized setSocketRunning(Z)V
    .locals 1
    .parameter "running"

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .local v0, plainDataCount:I
    if-nez p1, :cond_1

    move v1, v0

    .end local v0           #plainDataCount:I
    .local v1, plainDataCount:I
    :goto_0
    return v1

    .end local v1           #plainDataCount:I
    .restart local v0       #plainDataCount:I
    :cond_0
    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2, p1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->isSocketRunning()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v1, v0

    .end local v0           #plainDataCount:I
    .restart local v1       #plainDataCount:I
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->closeImpl()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public connect(Ljava/net/URI;)Ljava/lang/Thread;
    .locals 7
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mHost:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v2

    iput v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mPort:I

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v5, "https"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mIsSecure:Z

    invoke-direct {p0, v3}, Landroid/webkit/HTML5WebSocket$WebSocket;->setSocketRunning(Z)V

    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mHost:Ljava/lang/String;

    iget v6, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mPort:I

    invoke-direct {v3, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    const-string v2, "java.net.preferIPv4Stack"

    const-string v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "java.net.preferIPv6Addresses"

    const-string v3, "false"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSelector:Ljava/nio/channels/Selector;

    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSelector:Ljava/nio/channels/Selector;

    const/16 v5, 0x9

    invoke-virtual {v2, v3, v5}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    iget-boolean v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mIsSecure:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mHost:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_0
    invoke-direct {p0, v4}, Landroid/webkit/HTML5WebSocket$WebSocket;->setSocketRunning(Z)V

    const/4 v0, 0x0

    .local v0, th:Ljava/lang/Thread;
    move-object v1, v0

    .end local v0           #th:Ljava/lang/Thread;
    .local v1, th:Ljava/lang/Thread;
    :goto_1
    return-object v1

    .end local v1           #th:Ljava/lang/Thread;
    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .restart local v0       #th:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move-object v1, v0

    .end local v0           #th:Ljava/lang/Thread;
    .restart local v1       #th:Ljava/lang/Thread;
    goto :goto_1
.end method

.method public getReadData()Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .local v2, sendData:Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, readData:Ljava/nio/ByteBuffer;
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->getReadQueueData()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, chunk:Ljava/nio/ByteBuffer;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    const/16 v5, 0x2000

    if-gt v3, v5, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .end local v0           #chunk:Ljava/nio/ByteBuffer;
    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method public declared-synchronized getReadQueueData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mBufferReadQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteQueueData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mBufferWriteQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSocketSecure()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mIsSecure:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putReadQueueData(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mBufferReadQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putWriteQueueData(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mBufferWriteQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    :goto_0
    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->isSocketRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket$WebSocket;->handleRunnable()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

    invoke-virtual {v1, v0}, Landroid/webkit/HTML5WebSocket;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

    invoke-virtual {v1, v0}, Landroid/webkit/HTML5WebSocket;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public send()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mSelector:Ljava/nio/channels/Selector;

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/nio/channels/ClosedChannelException;
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket$WebSocket;->mCurrentWebSocket:Landroid/webkit/HTML5WebSocket;

    invoke-virtual {v1, v0}, Landroid/webkit/HTML5WebSocket;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
