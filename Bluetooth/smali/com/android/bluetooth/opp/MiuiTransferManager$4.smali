.class Lcom/android/bluetooth/opp/MiuiTransferManager$4;
.super Ljava/lang/Object;
.source "MiuiTransferManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/MiuiTransferManager;->useHttpClient(Ljava/lang/String;Ljava/io/File;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/MiuiTransferManager;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$4;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    iput-object p2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$4;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private genFileOutputStream(Ljava/io/File;)Ljava/io/File;
    .locals 13
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const-string v0, "string"

    .local v0, "TAG":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    .local v5, "path":Ljava/lang/String;
    const-string v9, "string"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "path:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    const-string v9, "string"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "name:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x2e

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .local v6, "pos":I
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "suffix":Ljava/lang/String;
    const-string v9, "string"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "suffix:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .local v7, "preffix":Ljava/lang/String;
    const-string v9, "string"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "preffix:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, ".*\\-\\d+"

    invoke-static {v9, v7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x2d

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .local v4, "p":I
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v1, v9, 0x1

    .local v1, "i":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v7, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "i":I
    .end local v4    # "p":I
    .local v3, "newName":Ljava/lang/String;
    :goto_1
    const-string v9, "string"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "new name:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/File;

    .end local p1    # "file":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local p1    # "file":Ljava/io/File;
    goto/16 :goto_0

    .end local v3    # "newName":Ljava/lang/String;
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "newName":Ljava/lang/String;
    goto :goto_1

    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "newName":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "pos":I
    .end local v7    # "preffix":Ljava/lang/String;
    .end local v8    # "suffix":Ljava/lang/String;
    :cond_1
    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .local v2, "client":Lorg/apache/http/client/HttpClient;
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    iget-object v12, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$4;->val$url:Ljava/lang/String;

    invoke-direct {v6, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .local v6, "get":Lorg/apache/http/client/methods/HttpGet;
    const/4 v7, 0x0

    .local v7, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    .local v9, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-interface {v2, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .local v11, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .local v5, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v12, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$4;->val$file:Ljava/io/File;

    invoke-direct {p0, v12}, Lcom/android/bluetooth/opp/MiuiTransferManager$4;->genFileOutputStream(Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    .local v8, "newFile":Ljava/io/File;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .local v10, "out":Ljava/io/FileOutputStream;
    const v12, 0x19000

    :try_start_1
    new-array v0, v12, [B

    .local v0, "buf":[B
    const/4 v1, -0x1

    .local v1, "ch":I
    const/4 v3, 0x0

    .local v3, "count":I
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v12, -0x1

    if-eq v1, v12, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v10, v0, v12, v1}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v3, v1

    iget-object v12, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$4;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;
    invoke-static {v12}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$100(Lcom/android/bluetooth/opp/MiuiTransferManager;)Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    move-result-object v12

    int-to-long v13, v3

    invoke-interface {v12, v13, v14}, Lcom/android/bluetooth/opp/MiuiOnTransferListener;->onTransferredBytes(J)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .end local v0    # "buf":[B
    .end local v1    # "ch":I
    .end local v3    # "count":I
    :catch_0
    move-exception v4

    move-object v9, v10

    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "newFile":Ljava/io/File;
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .local v4, "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    iget-object v12, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$4;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ClientProtocolException!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v12, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$4;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;
    invoke-static {v12}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$100(Lcom/android/bluetooth/opp/MiuiTransferManager;)Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/bluetooth/opp/MiuiOnTransferListener;->onTransferFailed()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_0
    :goto_2
    if-eqz v9, :cond_1

    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v4    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_1
    :goto_3
    return-void

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "ch":I
    .restart local v3    # "count":I
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "newFile":Ljava/io/File;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v9, 0x0

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :try_start_6
    iget-object v12, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$4;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    # setter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadUri:Landroid/net/Uri;
    invoke-static {v12, v13}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$202(Lcom/android/bluetooth/opp/MiuiTransferManager;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v12, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$4;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;
    invoke-static {v12}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$100(Lcom/android/bluetooth/opp/MiuiTransferManager;)Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/bluetooth/opp/MiuiOnTransferListener;->onTransferFinished()V
    :try_end_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v0    # "buf":[B
    .end local v1    # "ch":I
    .end local v3    # "count":I
    .end local v8    # "newFile":Ljava/io/File;
    :goto_4
    if-eqz v7, :cond_3

    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    :cond_3
    :goto_5
    if-eqz v9, :cond_1

    :try_start_8
    throw v9
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v12

    goto :goto_3

    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    :try_start_9
    iget-object v12, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$4;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;
    invoke-static {v12}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$100(Lcom/android/bluetooth/opp/MiuiTransferManager;)Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/bluetooth/opp/MiuiOnTransferListener;->onTransferFailed()V
    :try_end_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    :goto_6
    :try_start_a
    iget-object v12, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$4;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "IOException!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v12, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$4;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;
    invoke-static {v12}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$100(Lcom/android/bluetooth/opp/MiuiTransferManager;)Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/bluetooth/opp/MiuiOnTransferListener;->onTransferFailed()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v7, :cond_5

    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_5
    :goto_7
    if-eqz v9, :cond_1

    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_3

    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_8
    if-eqz v7, :cond_6

    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    :cond_6
    :goto_9
    if-eqz v9, :cond_7

    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    :cond_7
    :goto_a
    throw v12

    :catch_4
    move-exception v13

    goto :goto_9

    :catch_5
    move-exception v13

    goto :goto_a

    .local v4, "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_6
    move-exception v12

    goto :goto_2

    .local v4, "e":Ljava/io/IOException;
    :catch_7
    move-exception v12

    goto :goto_7

    .end local v4    # "e":Ljava/io/IOException;
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    :catch_8
    move-exception v12

    goto :goto_5

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "newFile":Ljava/io/File;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v4

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto :goto_6
.end method
