.class public Lcom/android/bluetooth/opp/MiuiHttpFileServer;
.super Lcom/android/bluetooth/opp/MiuiNanoHTTPD;
.source "MiuiHttpFileServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseListener;,
        Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseTransferBytes;
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentFileLength:J

.field private mPosition:I

.field private mResListener:Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseListener;

.field private mTransferBytesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTransferListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;

.field private mWebFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "port"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;-><init>(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mWebFiles:Ljava/util/Map;

    iput-object v1, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mTransferListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    iput-object v1, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mResListener:Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseListener;

    iput v2, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mPosition:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mCurrentFileLength:J

    new-instance v0, Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseTransferBytes;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseTransferBytes;-><init>(Lcom/android/bluetooth/opp/MiuiHttpFileServer;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mResListener:Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mTransferBytesList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/MiuiHttpFileServer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mTransferBytesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/MiuiHttpFileServer;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    .prologue
    iget-wide v0, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mCurrentFileLength:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/MiuiHttpFileServer;)Lcom/android/bluetooth/opp/MiuiOnTransferListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mTransferListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    return-object v0
.end method

.method private createResponse(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/io/InputStream;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    .locals 4
    .param p1, "status"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/io/InputStream;

    .prologue
    new-instance v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/io/InputStream;)V

    .local v0, "res":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    const-string v1, "Accept-Ranges"

    const-string v2, "bytes"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mResListener:Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseListener;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->setResponseBytesListener(Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseListener;)V

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->setResponsePos(I)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mTransferBytesList:Ljava/util/ArrayList;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createResponse(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    .locals 4
    .param p1, "status"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "res":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    const-string v1, "Accept-Ranges"

    const-string v2, "bytes"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mResListener:Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseListener;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->setResponseBytesListener(Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseListener;)V

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->setResponsePos(I)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mTransferBytesList:Ljava/util/ArrayList;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private respond(Ljava/util/Map;Ljava/lang/String;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    .locals 6
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;"
        }
    .end annotation

    .prologue
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v5, 0x3f

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mWebFiles:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "localFile":Ljava/lang/String;
    if-nez v0, :cond_2

    sget-object v2, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->NOT_FOUND:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    const-string v3, "text/plain"

    const-string v4, "Error 404, file not found."

    invoke-direct {p0, v2, v3, v4}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->createResponse(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, p2, p1, v0, v2}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    move-result-object v1

    .local v1, "response":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    if-nez v1, :cond_1

    sget-object v2, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->NOT_FOUND:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    const-string v3, "text/plain"

    const-string v4, "Error 404, file not found."

    invoke-direct {p0, v2, v3, v4}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->createResponse(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public addWebFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "webFile"    # Ljava/lang/String;
    .param p2, "localFile"    # Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mWebFiles:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->getListeningPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "url":Ljava/lang/String;
    sget-object v1, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add web file url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mCurrentFileLength:J

    return-object v0
.end method

.method public removeWebFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "webFile"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mWebFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public serve(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$IHTTPSession;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    .locals 3
    .param p1, "session"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$IHTTPSession;

    .prologue
    invoke-interface {p1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v1

    .local v1, "uri":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->respond(Ljava/util/Map;Ljava/lang/String;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    move-result-object v2

    return-object v2
.end method

.method serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    .locals 25
    .param p1, "uri"    # Ljava/lang/String;
    .param p3, "localFile"    # Ljava/lang/String;
    .param p4, "mime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;"
        }
    .end annotation

    .prologue
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v9, "file":Ljava/io/File;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->hashCode()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "etag":Ljava/lang/String;
    const-wide/16 v19, 0x0

    .local v19, "startFrom":J
    const-wide/16 v6, -0x1

    .local v6, "endAt":J
    const-string v21, "range"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .local v17, "range":Ljava/lang/String;
    if-eqz v17, :cond_0

    const-string v21, "bytes="

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    const-string v21, "bytes="

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    const/16 v21, 0x2d

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .local v14, "minus":I
    if-lez v14, :cond_0

    const/16 v21, 0x0

    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    add-int/lit8 v21, v14, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    .end local v14    # "minus":I
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    .local v10, "fileLen":J
    if-eqz v17, :cond_4

    const-wide/16 v21, 0x0

    cmp-long v21, v19, v21

    if-ltz v21, :cond_4

    cmp-long v21, v19, v10

    if-ltz v21, :cond_1

    sget-object v21, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    const-string v22, "text/plain"

    const-string v23, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->createResponse(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    move-result-object v18

    .local v18, "res":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    const-string v21, "Content-Range"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "bytes 0-0/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "ETag"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v21, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "content-Range: bytes 0-0/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "endAt":J
    .end local v8    # "etag":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fileLen":J
    .end local v17    # "range":Ljava/lang/String;
    .end local v19    # "startFrom":J
    :goto_1
    return-object v18

    .end local v18    # "res":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    .restart local v6    # "endAt":J
    .restart local v8    # "etag":Ljava/lang/String;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "fileLen":J
    .restart local v17    # "range":Ljava/lang/String;
    .restart local v19    # "startFrom":J
    :cond_1
    const-wide/16 v21, 0x0

    cmp-long v21, v6, v21

    if-gez v21, :cond_2

    const-wide/16 v21, 0x1

    sub-long v6, v10, v21

    :cond_2
    sub-long v21, v6, v19

    const-wide/16 v23, 0x1

    add-long v15, v21, v23

    .local v15, "newLen":J
    const-wide/16 v21, 0x0

    cmp-long v21, v15, v21

    if-gez v21, :cond_3

    const-wide/16 v15, 0x0

    :cond_3
    move-wide v4, v15

    .local v4, "dataLen":J
    new-instance v12, Lcom/android/bluetooth/opp/MiuiHttpFileServer$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v9, v4, v5}, Lcom/android/bluetooth/opp/MiuiHttpFileServer$1;-><init>(Lcom/android/bluetooth/opp/MiuiHttpFileServer;Ljava/io/File;J)V

    .local v12, "fis":Ljava/io/FileInputStream;
    move-wide/from16 v0, v19

    invoke-virtual {v12, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    sget-object v21, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v12}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->createResponse(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/io/InputStream;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    move-result-object v18

    .restart local v18    # "res":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    const-string v21, "Content-Length"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "Content-Range"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "bytes "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "ETag"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .end local v4    # "dataLen":J
    .end local v6    # "endAt":J
    .end local v8    # "etag":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fileLen":J
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "newLen":J
    .end local v17    # "range":Ljava/lang/String;
    .end local v18    # "res":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    .end local v19    # "startFrom":J
    :catch_0
    move-exception v13

    .local v13, "ioe":Ljava/io/IOException;
    sget-object v21, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->FORBIDDEN:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    const-string v22, "text/plain"

    const-string v23, "FORBIDDEN: Reading file failed."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->createResponse(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    move-result-object v18

    .restart local v18    # "res":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    sget-object v21, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->TAG:Ljava/lang/String;

    const-string v22, "Reading file failed."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mTransferListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/bluetooth/opp/MiuiOnTransferListener;->onTransferFailed()V

    goto/16 :goto_1

    .end local v13    # "ioe":Ljava/io/IOException;
    .end local v18    # "res":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    .restart local v6    # "endAt":J
    .restart local v8    # "etag":Ljava/lang/String;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "fileLen":J
    .restart local v17    # "range":Ljava/lang/String;
    .restart local v19    # "startFrom":J
    :cond_4
    :try_start_3
    const-string v21, "if-none-match"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    sget-object v21, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->NOT_MODIFIED:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    const-string v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p4

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->createResponse(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    move-result-object v18

    .restart local v18    # "res":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    goto/16 :goto_1

    .end local v18    # "res":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    :cond_5
    sget-object v21, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->OK:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p4

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->createResponse(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/io/InputStream;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    move-result-object v18

    .restart local v18    # "res":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    const-string v21, "Content-Length"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "ETag"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .end local v10    # "fileLen":J
    .end local v18    # "res":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    .restart local v14    # "minus":I
    :catch_1
    move-exception v21

    goto/16 :goto_0
.end method

.method public setTransferredBytesListener(Lcom/android/bluetooth/opp/MiuiOnTransferListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mTransferListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    return-void
.end method
