.class public Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;
.super Ljava/lang/Object;
.source "MiuiNanoHTTPD.java"

# interfaces
.implements Lcom/android/bluetooth/opp/MiuiNanoHTTPD$IHTTPSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/MiuiNanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HTTPSession"
.end annotation


# static fields
.field public static final BUFSIZE:I = 0x2000


# instance fields
.field private cookies:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;

.field private headers:Ljava/util/Map;
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

.field private inputStream:Ljava/io/InputStream;

.field private method:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

.field private final outputStream:Ljava/io/OutputStream;

.field private parms:Ljava/util/Map;
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

.field private queryParameterString:Ljava/lang/String;

.field private rlen:I

.field private splitbyte:I

.field private final tempFileManager:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;

.field final synthetic this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD;Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "tempFileManager"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->tempFileManager:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;

    iput-object p3, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD;Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V
    .locals 3
    .param p2, "tempFileManager"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;
    .param p5, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->tempFileManager:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;

    iput-object p3, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "127.0.0.1"

    .local v0, "remoteIp":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v2, "remote-addr"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v2, "http-client-ip"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .end local v0    # "remoteIp":Ljava/lang/String;
    :cond_1
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .param p1, "in"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
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
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;
        }
    .end annotation

    .prologue
    .local p2, "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "inLine":Ljava/lang/String;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .local v5, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;

    sget-object v8, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->BAD_REQUEST:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    const-string v9, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {v7, v8, v9}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "inLine":Ljava/lang/String;
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v1

    .local v1, "ioe":Ljava/io/IOException;
    new-instance v7, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;

    sget-object v8, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->INTERNAL_ERROR:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v0    # "inLine":Ljava/lang/String;
    .restart local v5    # "st":Ljava/util/StringTokenizer;
    :cond_1
    :try_start_1
    const-string v7, "method"

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;

    sget-object v8, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->BAD_REQUEST:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    const-string v9, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {v7, v8, v9}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v7

    :cond_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .local v6, "uri":Ljava/lang/String;
    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .local v4, "qmi":I
    if-ltz v4, :cond_4

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p3}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    const/16 v7, 0x3a

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .local v3, "p":I
    if-ltz v3, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "p":I
    :cond_4
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    invoke-virtual {v7, v6}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_5
    const-string v7, "uri"

    invoke-interface {p2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private decodeMultipartData(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;)V
    .locals 22
    .param p1, "boundary"    # Ljava/lang/String;
    .param p2, "fbuf"    # Ljava/nio/ByteBuffer;
    .param p3, "in"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;
        }
    .end annotation

    .prologue
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I

    move-result-object v4

    .local v4, "bpositions":[I
    const/4 v3, 0x1

    .local v3, "boundarycount":I
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "mpline":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v10, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    new-instance v18, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;

    sget-object v19, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->BAD_REQUEST:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    const-string v20, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html"

    invoke-direct/range {v18 .. v20}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "boundarycount":I
    .end local v4    # "bpositions":[I
    .end local v10    # "mpline":Ljava/lang/String;
    :catch_0
    move-exception v8

    .local v8, "ioe":Ljava/io/IOException;
    new-instance v18, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;

    sget-object v19, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->INTERNAL_ERROR:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v8}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v18

    .end local v8    # "ioe":Ljava/io/IOException;
    .restart local v3    # "boundarycount":I
    .restart local v4    # "bpositions":[I
    .restart local v10    # "mpline":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    :try_start_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .local v9, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    :goto_1
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_3

    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .local v12, "p":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_2

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v19, v12, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .end local v12    # "p":I
    :cond_3
    if-eqz v10, :cond_0

    const-string v18, "content-disposition"

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "contentDisposition":Ljava/lang/String;
    if-nez v5, :cond_4

    new-instance v18, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;

    sget-object v19, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->BAD_REQUEST:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    const-string v20, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html"

    invoke-direct/range {v18 .. v20}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v18

    :cond_4
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v18, "; "

    move-object/from16 v0, v18

    invoke-direct {v15, v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v15, "st":Ljava/util/StringTokenizer;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .local v7, "disposition":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :goto_2
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .local v16, "token":Ljava/lang/String;
    const/16 v18, 0x3d

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .restart local v12    # "p":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_5

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v19, v12, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v12    # "p":I
    .end local v16    # "token":Ljava/lang/String;
    :cond_6
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .local v14, "pname":Ljava/lang/String;
    const/16 v18, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string v17, ""

    .local v17, "value":Ljava/lang/String;
    const-string v18, "content-type"

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_9

    :cond_7
    :goto_3
    if-eqz v10, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_c

    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .local v6, "d":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_8

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    add-int/lit8 v20, v6, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .end local v6    # "d":I
    :cond_9
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v3, v0, :cond_a

    new-instance v18, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;

    sget-object v19, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->INTERNAL_ERROR:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    const-string v20, "Error processing request"

    invoke-direct/range {v18 .. v20}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v18

    :cond_a
    add-int/lit8 v18, v3, -0x2

    aget v18, v4, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->stripMultipartHeaders(Ljava/nio/ByteBuffer;I)I

    move-result v11

    .local v11, "offset":I
    add-int/lit8 v18, v3, -0x1

    aget v18, v4, v18

    sub-int v18, v18, v11

    add-int/lit8 v18, v18, -0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v11, v2}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v13

    .local v13, "path":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v18, "filename"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "value":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .restart local v17    # "value":Ljava/lang/String;
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    :cond_b
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b

    .end local v11    # "offset":I
    .end local v13    # "path":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .end local v5    # "contentDisposition":Ljava/lang/String;
    .end local v7    # "disposition":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "pname":Ljava/lang/String;
    .end local v15    # "st":Ljava/util/StringTokenizer;
    .end local v17    # "value":Ljava/lang/String;
    :cond_d
    return-void
.end method

.method private decodeParms(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "parms"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    const-string v3, ""

    iput-object v3, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "&"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .local v0, "e":Ljava/lang/String;
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "sep":I
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private findHeaderEnd([BI)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "rlen"    # I

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xa

    const/4 v0, 0x0

    .local v0, "splitbyte":I
    :goto_0
    add-int/lit8 v1, v0, 0x3

    if-ge v1, p2, :cond_1

    aget-byte v1, p1, v0

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x4

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I
    .locals 7
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "boundary"    # [B

    .prologue
    const/4 v3, 0x0

    .local v3, "matchcount":I
    const/4 v1, -0x1

    .local v1, "matchbyte":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "matchbytes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    aget-byte v6, p2, v3

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    array-length v5, p2

    if-ne v3, v5, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v1, -0x1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v3

    const/4 v3, 0x0

    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [I

    .local v4, "ret":[I
    const/4 v0, 0x0

    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-object v4
.end method

.method private getTmpBucket()Ljava/io/RandomAccessFile;
    .locals 5

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->tempFileManager:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;

    invoke-interface {v2}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;->createTempFile()Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFile;

    move-result-object v1

    .local v1, "tempFile":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFile;
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-interface {v1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "tempFile":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFile;
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private saveTmpFile(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 10
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    const-string v4, ""

    .local v4, "path":Ljava/lang/String;
    if-lez p3, :cond_0

    const/4 v2, 0x0

    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->tempFileManager:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;

    invoke-interface {v7}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;->createTempFile()Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFile;

    move-result-object v6

    .local v6, "tempFile":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFile;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    .local v5, "src":Ljava/nio/ByteBuffer;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-interface {v6}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .local v0, "dest":Ljava/nio/channels/FileChannel;
    invoke-virtual {v5, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    add-int v8, p2, p3

    invoke-virtual {v7, v8}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-interface {v6}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFile;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v3}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    .end local v0    # "dest":Ljava/nio/channels/FileChannel;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "src":Ljava/nio/ByteBuffer;
    .end local v6    # "tempFile":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFile;
    :cond_0
    :goto_0
    return-object v4

    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v2}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v2}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    throw v7

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "src":Ljava/nio/ByteBuffer;
    .restart local v6    # "tempFile":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFile;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private stripMultipartHeaders(Ljava/nio/ByteBuffer;I)I
    .locals 4
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xa

    move v0, p2

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x2000

    :try_start_0
    new-array v0, v11, [B

    .local v0, "buf":[B
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->splitbyte:I

    const/4 v11, 0x0

    iput v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->rlen:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, -0x1

    .local v7, "read":I
    :try_start_1
    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    const/4 v12, 0x0

    const/16 v13, 0x2000

    invoke-virtual {v11, v0, v12, v13}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    const/4 v11, -0x1

    if-ne v7, v11, :cond_1

    :try_start_2
    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v11}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v11}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    new-instance v11, Ljava/net/SocketException;

    const-string v12, "NanoHttpd Shutdown"

    invoke-direct {v11, v12}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "buf":[B
    .end local v7    # "read":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/net/SocketException;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "e":Ljava/net/SocketException;
    :catchall_0
    move-exception v11

    iget-object v12, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->tempFileManager:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;

    invoke-interface {v12}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;->clear()V

    throw v11

    .restart local v0    # "buf":[B
    .restart local v7    # "read":I
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v11}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v11}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    new-instance v11, Ljava/net/SocketException;

    const-string v12, "NanoHttpd Shutdown"

    invoke-direct {v11, v12}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "buf":[B
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "read":I
    :catch_2
    move-exception v10

    .local v10, "ste":Ljava/net/SocketTimeoutException;
    :try_start_5
    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v10    # "ste":Ljava/net/SocketTimeoutException;
    .restart local v0    # "buf":[B
    .restart local v7    # "read":I
    :cond_0
    :try_start_6
    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    iget v12, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->rlen:I

    iget v13, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->rlen:I

    rsub-int v13, v13, 0x2000

    invoke-virtual {v11, v0, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    :cond_1
    if-lez v7, :cond_2

    iget v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->rlen:I

    add-int/2addr v11, v7

    iput v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->rlen:I

    iget v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->rlen:I

    invoke-direct {p0, v0, v11}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->findHeaderEnd([BI)I

    move-result v11

    iput v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->splitbyte:I

    iget v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->splitbyte:I

    if-lez v11, :cond_0

    :cond_2
    iget v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->splitbyte:I

    iget v12, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->rlen:I

    if-ge v11, v12, :cond_3

    new-instance v9, Ljava/io/ByteArrayInputStream;

    iget v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->splitbyte:I

    iget v12, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->rlen:I

    iget v13, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->splitbyte:I

    sub-int/2addr v12, v13

    invoke-direct {v9, v0, v11, v12}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .local v9, "splitInputStream":Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/io/SequenceInputStream;

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    invoke-direct {v8, v9, v11}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .local v8, "sequenceInputStream":Ljava/io/SequenceInputStream;
    iput-object v8, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    .end local v8    # "sequenceInputStream":Ljava/io/SequenceInputStream;
    .end local v9    # "splitInputStream":Ljava/io/ByteArrayInputStream;
    :cond_3
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    if-nez v11, :cond_4

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    :cond_4
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    const/4 v13, 0x0

    iget v14, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->rlen:I

    invoke-direct {v12, v0, v13, v14}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v2, "hin":Ljava/io/BufferedReader;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .local v4, "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    iget-object v12, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    invoke-direct {p0, v2, v4, v11, v12}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    const-string v11, "method"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->lookup(Ljava/lang/String;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    move-result-object v11

    iput-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->method:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->method:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    if-nez v11, :cond_5

    new-instance v11, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;

    sget-object v12, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->BAD_REQUEST:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    const-string v13, "BAD REQUEST: Syntax error."

    invoke-direct {v11, v12, v13}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v11
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v0    # "buf":[B
    .end local v2    # "hin":Ljava/io/BufferedReader;
    .end local v4    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "read":I
    :catch_3
    move-exception v3

    .local v3, "ioe":Ljava/io/IOException;
    :try_start_7
    new-instance v5, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    sget-object v11, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->INTERNAL_ERROR:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    const-string v12, "text/plain"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v11, v12, v13}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .local v5, "r":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->send(Ljava/io/OutputStream;)V
    invoke-static {v5, v11}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->access$600(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;Ljava/io/OutputStream;)V

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v11}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->tempFileManager:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;

    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_0
    invoke-interface {v11}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;->clear()V

    return-void

    .end local v5    # "r":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    .restart local v0    # "buf":[B
    .restart local v2    # "hin":Ljava/io/BufferedReader;
    .restart local v4    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "read":I
    :cond_5
    :try_start_8
    const-string v11, "uri"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->uri:Ljava/lang/String;

    new-instance v11, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;

    iget-object v12, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    iget-object v13, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    invoke-direct {v11, v12, v13}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD;Ljava/util/Map;)V

    iput-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->cookies:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    invoke-virtual {v11, p0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->serve(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$IHTTPSession;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    move-result-object v5

    .restart local v5    # "r":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    if-nez v5, :cond_6

    new-instance v11, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;

    sget-object v12, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->INTERNAL_ERROR:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    const-string v13, "SERVER INTERNAL ERROR: Serve() returned a null response."

    invoke-direct {v11, v12, v13}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v11
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v0    # "buf":[B
    .end local v2    # "hin":Ljava/io/BufferedReader;
    .end local v4    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "r":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    .end local v7    # "read":I
    :catch_4
    move-exception v6

    .local v6, "re":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;
    :try_start_9
    new-instance v5, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    invoke-virtual {v6}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;->getStatus()Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    move-result-object v11

    const-string v12, "text/plain"

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v11, v12, v13}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "r":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->send(Ljava/io/OutputStream;)V
    invoke-static {v5, v11}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->access$600(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;Ljava/io/OutputStream;)V

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v11}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->tempFileManager:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;

    goto :goto_0

    .end local v6    # "re":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;
    .restart local v0    # "buf":[B
    .restart local v2    # "hin":Ljava/io/BufferedReader;
    .restart local v4    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "read":I
    :cond_6
    :try_start_a
    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->cookies:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;

    invoke-virtual {v11, v5}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;->unloadQueue(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;)V

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->method:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    invoke-virtual {v5, v11}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->setRequestMethod(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;)V

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->send(Ljava/io/OutputStream;)V
    invoke-static {v5, v11}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->access$600(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->tempFileManager:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;

    goto :goto_0
.end method

.method public getCookies()Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->cookies:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getMethod()Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->method:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    return-object v0
.end method

.method public final getParms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    return-object v0
.end method

.method public getQueryParameterString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public parseBody(Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;
        }
    .end annotation

    .prologue
    .local p1, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v17, 0x0

    .local v17, "randomAccessFile":Ljava/io/RandomAccessFile;
    const/4 v14, 0x0

    .local v14, "in":Ljava/io/BufferedReader;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->getTmpBucket()Ljava/io/RandomAccessFile;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v6, "content-length"

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v6, "content-length"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v19, v0

    .local v19, "size":J
    :goto_0
    const/16 v2, 0x200

    new-array v11, v2, [B

    .local v11, "buf":[B
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->rlen:I

    if-ltz v2, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v2, v19, v6

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    const/4 v6, 0x0

    const/16 v7, 0x200

    invoke-virtual {v2, v11, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->rlen:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->rlen:I

    int-to-long v6, v2

    sub-long v19, v19, v6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->rlen:I

    if-lez v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->rlen:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v2, v6}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v11    # "buf":[B
    .end local v19    # "size":J
    :catchall_0
    move-exception v2

    move-object v5, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :goto_2
    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v17 .. v17}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v5}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    throw v2

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->splitbyte:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->rlen:I

    if-ge v2, v6, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->rlen:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->splitbyte:I

    sub-int/2addr v2, v6

    int-to-long v0, v2

    move-wide/from16 v19, v0

    .restart local v19    # "size":J
    goto :goto_0

    .end local v19    # "size":J
    :cond_2
    const-wide/16 v19, 0x0

    .restart local v19    # "size":J
    goto :goto_0

    .restart local v11    # "buf":[B
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v4

    .local v4, "fbuf":Ljava/nio/ByteBuffer;
    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .local v8, "bin":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :try_start_2
    sget-object v2, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->POST:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->method:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    invoke-virtual {v2, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v12, ""

    .local v12, "contentType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v6, "content-type"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "contentTypeHeader":Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, "st":Ljava/util/StringTokenizer;
    if-eqz v13, :cond_4

    new-instance v21, Ljava/util/StringTokenizer;

    .end local v21    # "st":Ljava/util/StringTokenizer;
    const-string v2, ",; "

    move-object/from16 v0, v21

    invoke-direct {v0, v13, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v21    # "st":Ljava/util/StringTokenizer;
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    :cond_4
    const-string v2, "multipart/form-data"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;

    sget-object v6, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->BAD_REQUEST:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    const-string v7, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    invoke-direct {v2, v6, v7}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$ResponseException;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v2

    .end local v12    # "contentType":Ljava/lang/String;
    .end local v13    # "contentTypeHeader":Ljava/lang/String;
    .end local v21    # "st":Ljava/util/StringTokenizer;
    :catchall_1
    move-exception v2

    goto/16 :goto_2

    .restart local v12    # "contentType":Ljava/lang/String;
    .restart local v13    # "contentTypeHeader":Ljava/lang/String;
    .restart local v21    # "st":Ljava/util/StringTokenizer;
    :cond_5
    const-string v10, "boundary="

    .local v10, "boundaryStartString":Ljava/lang/String;
    invoke-virtual {v13, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    add-int v9, v2, v6

    .local v9, "boundaryContentStart":I
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v13, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, "boundary":Ljava/lang/String;
    const-string v2, "\""

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "\""

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->decodeMultipartData(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v3    # "boundary":Ljava/lang/String;
    .end local v9    # "boundaryContentStart":I
    .end local v10    # "boundaryStartString":Ljava/lang/String;
    .end local v12    # "contentType":Ljava/lang/String;
    .end local v13    # "contentTypeHeader":Ljava/lang/String;
    .end local v21    # "st":Ljava/util/StringTokenizer;
    :cond_7
    :goto_3
    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v17 .. v17}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v5}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    return-void

    .restart local v12    # "contentType":Ljava/lang/String;
    .restart local v13    # "contentTypeHeader":Ljava/lang/String;
    .restart local v21    # "st":Ljava/util/StringTokenizer;
    :cond_8
    :try_start_3
    const-string v16, ""

    .local v16, "postLine":Ljava/lang/String;
    const/16 v2, 0x200

    new-array v15, v2, [C

    .local v15, "pbuf":[C
    invoke-virtual {v5, v15}, Ljava/io/Reader;->read([C)I

    move-result v18

    .local v18, "read":I
    :goto_4
    if-ltz v18, :cond_9

    const-string v2, "\r\n"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v6, 0x0

    move/from16 v0, v18

    invoke-static {v15, v6, v0}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v5, v15}, Ljava/io/Reader;->read([C)I

    move-result v18

    goto :goto_4

    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .end local v12    # "contentType":Ljava/lang/String;
    .end local v13    # "contentTypeHeader":Ljava/lang/String;
    .end local v15    # "pbuf":[C
    .end local v16    # "postLine":Ljava/lang/String;
    .end local v18    # "read":I
    .end local v21    # "st":Ljava/util/StringTokenizer;
    :cond_a
    sget-object v2, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->PUT:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->method:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    invoke-virtual {v2, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "content"

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3
.end method
