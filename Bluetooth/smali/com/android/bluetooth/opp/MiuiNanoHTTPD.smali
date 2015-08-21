.class public abstract Lcom/android/bluetooth/opp/MiuiNanoHTTPD;
.super Ljava/lang/Object;
.source "MiuiNanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;,
        Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Cookie;,
        Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;,
        Lcom/android/bluetooth/opp/MiuiNanoHTTPD$IHTTPSession;,
        Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFileManagerFactory;,
        Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;,
        Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;,
        Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFile;,
        Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFileManager;,
        Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultAsyncRunner;,
        Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFile;,
        Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;,
        Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManagerFactory;,
        Lcom/android/bluetooth/opp/MiuiNanoHTTPD$AsyncRunner;,
        Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;
    }
.end annotation


# static fields
.field public static final MIME_HTML:Ljava/lang/String; = "text/html"

.field public static final MIME_PLAINTEXT:Ljava/lang/String; = "text/plain"

.field private static final QUERY_STRING_PARAMETER:Ljava/lang/String; = "NanoHttpd.QUERY_STRING"

.field public static final SOCKET_READ_TIMEOUT:I = 0x1388


# instance fields
.field private asyncRunner:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$AsyncRunner;

.field private final hostname:Ljava/lang/String;

.field private final myPort:I

.field private myServerSocket:Ljava/net/ServerSocket;

.field private myThread:Ljava/lang/Thread;

.field private openConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private tempFileManagerFactory:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManagerFactory;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->openConnections:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->hostname:Ljava/lang/String;

    iput p2, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myPort:I

    new-instance v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFileManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFileManagerFactory;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD;Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;)V

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->setTempFileManagerFactory(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManagerFactory;)V

    new-instance v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultAsyncRunner;

    invoke-direct {v0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultAsyncRunner;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->setAsyncRunner(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$AsyncRunner;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/MiuiNanoHTTPD;)Ljava/net/ServerSocket;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$200(Ljava/net/Socket;)V
    .locals 0
    .param p0, "x0"    # Ljava/net/Socket;

    .prologue
    invoke-static {p0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/MiuiNanoHTTPD;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManagerFactory;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->tempFileManagerFactory:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManagerFactory;

    return-object v0
.end method

.method static synthetic access$400(Ljava/io/Closeable;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/Closeable;

    .prologue
    invoke-static {p0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/opp/MiuiNanoHTTPD;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$AsyncRunner;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->asyncRunner:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$AsyncRunner;

    return-object v0
.end method

.method private static final safeClose(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static final safeClose(Ljava/net/ServerSocket;)V
    .locals 1
    .param p0, "serverSocket"    # Ljava/net/ServerSocket;

    .prologue
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static final safeClose(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized closeAllConnections()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->openConnections:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Socket;

    .local v1, "socket":Ljava/net/Socket;
    invoke-static {v1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method protected decodeParameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .local v1, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_4

    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, "&"

    invoke-direct {v5, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v5, "st":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .local v0, "e":Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .local v4, "sep":I
    if-ltz v4, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .local v2, "propertyName":Ljava/lang/String;
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-ltz v4, :cond_3

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "propertyValue":Ljava/lang/String;
    :goto_2
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v3    # "propertyValue":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .restart local v2    # "propertyName":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .end local v0    # "e":Ljava/lang/String;
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v4    # "sep":I
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :cond_4
    return-object v1
.end method

.method protected decodeParameters(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p1, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "NanoHttpd.QUERY_STRING"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->decodeParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "decoded":Ljava/lang/String;
    :try_start_0
    const-string v1, "UTF8"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getListeningPort()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method public final isAlive()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->wasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized registerConnection(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->openConnections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public serve(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$IHTTPSession;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    .locals 10
    .param p1, "session"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$IHTTPSession;

    .prologue
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .local v5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$IHTTPSession;->getMethod()Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    move-result-object v2

    .local v2, "method":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;
    sget-object v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->PUT:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->POST:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    invoke-interface {p1, v5}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    invoke-interface {p1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object v4

    .local v4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "NanoHttpd.QUERY_STRING"

    invoke-interface {p1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$IHTTPSession;->getQueryParameterString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->serve(Ljava/lang/String;Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    move-result-object v0

    .end local v4    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    :catch_0
    move-exception v6

    .local v6, "ioe":Ljava/io/IOException;
    new-instance v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    sget-object v1, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->INTERNAL_ERROR:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    const-string v3, "text/plain"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v1, v3, v8}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .local v7, "re":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;
    new-instance v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    invoke-virtual {v7}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;->getStatus()Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    move-result-object v1

    const-string v3, "text/plain"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v1, v3, v8}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public serve(Ljava/lang/String;Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    sget-object v1, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->NOT_FOUND:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    const-string v2, "text/plain"

    const-string v3, "Not Found"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAsyncRunner(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$AsyncRunner;)V
    .locals 0
    .param p1, "asyncRunner"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$AsyncRunner;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->asyncRunner:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$AsyncRunner;

    return-void
.end method

.method public setTempFileManagerFactory(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManagerFactory;)V
    .locals 0
    .param p1, "tempFileManagerFactory"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManagerFactory;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->tempFileManagerFactory:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManagerFactory;

    return-void
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->hostname:Ljava/lang/String;

    iget v3, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myPort:I

    invoke-direct {v0, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myThread:Ljava/lang/Thread;

    const-string v1, "NanoHttpd Main Listener"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget v2, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myPort:I

    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-static {v1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/net/ServerSocket;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->closeAllConnections()V

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized unRegisterConnection(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->openConnections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final wasStarted()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->myThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
