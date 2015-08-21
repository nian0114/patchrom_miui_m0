.class Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
.super Ljava/lang/Object;
.source "BluetoothMapbMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapbMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BMsgReader"
.end annotation


# instance fields
.field mInStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    .line 245
    return-void
.end method

.method private getLineAsBytes()[B
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xa

    const/4 v4, -0x1

    .line 257
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 259
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, "readByte":I
    if-eq v2, v4, :cond_1

    .line 260
    if-ne v2, v6, :cond_4

    .line 261
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_2

    .line 262
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .end local v2    # "readByte":I
    :goto_1
    return-object v3

    .line 267
    .restart local v2    # "readByte":I
    :cond_2
    const/16 v3, 0xd

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 274
    :cond_3
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 276
    .end local v2    # "readByte":I
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    const/4 v3, 0x0

    goto :goto_1

    .line 269
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "readByte":I
    :cond_4
    if-ne v2, v5, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0
.end method


# virtual methods
.method public expect(Ljava/lang/String;)V
    .locals 4
    .param p1, "subString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 326
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Line or substring is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 328
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" in: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :cond_2
    return-void
.end method

.method public expect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "subString2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" in: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 343
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" in: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_1
    return-void
.end method

.method public getDataBytes(I)[B
    .locals 7
    .param p1, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 353
    new-array v1, p1, [B

    .line 356
    .local v1, "data":[B
    const/4 v3, 0x0

    .line 357
    .local v3, "offset":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    sub-int v6, p1, v3

    invoke-virtual {v5, v1, v3, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "bytesRead":I
    sub-int v5, p1, v3

    if-eq v0, v5, :cond_0

    .line 358
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    move-object v1, v4

    .line 366
    .end local v0    # "bytesRead":I
    .end local v1    # "data":[B
    :cond_0
    :goto_1
    return-object v1

    .line 360
    .restart local v0    # "bytesRead":I
    .restart local v1    # "data":[B
    :cond_1
    add-int/2addr v3, v0

    goto :goto_0

    .line 362
    .end local v0    # "bytesRead":I
    :catch_0
    move-exception v2

    .line 363
    .local v2, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 364
    goto :goto_1
.end method

.method public getLine()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 289
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineAsBytes()[B

    move-result-object v1

    .line 290
    .local v1, "line":[B
    array-length v3, v1

    if-nez v3, :cond_0

    .line 296
    .end local v1    # "line":[B
    :goto_0
    return-object v2

    .line 293
    .restart local v1    # "line":[B
    :cond_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 294
    .end local v1    # "line":[B
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getLineEnforce()Ljava/lang/String;
    .locals 3

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 308
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bmessage too short"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :cond_0
    return-object v0
.end method
