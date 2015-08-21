.class public Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
.super Ljava/lang/Object;
.source "MiuiBluetoothOppFileInfo.java"


# instance fields
.field public mFileName:Ljava/lang/String;

.field public mMimetype:Ljava/lang/String;

.field public mTotalBytes:J

.field public mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeBytes([B)V
    .locals 7
    .param p1, "bytes"    # [B

    .prologue
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v1, "in":Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x2

    new-array v3, v5, [B

    .local v3, "lengthArray":[B
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    invoke-static {v3}, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->convertToLong([B)J

    move-result-wide v5

    long-to-int v2, v5

    .local v2, "length":I
    if-lez v2, :cond_0

    new-array v4, v2, [B

    .local v4, "value":[B
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mURL:Ljava/lang/String;

    .end local v4    # "value":[B
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    invoke-static {v3}, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->convertToLong([B)J

    move-result-wide v5

    long-to-int v2, v5

    if-lez v2, :cond_2

    new-array v4, v2, [B

    .restart local v4    # "value":[B
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mFileName:Ljava/lang/String;

    .end local v4    # "value":[B
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    invoke-static {v3}, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->convertToLong([B)J

    move-result-wide v5

    long-to-int v2, v5

    if-lez v2, :cond_4

    new-array v4, v2, [B

    .restart local v4    # "value":[B
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mMimetype:Ljava/lang/String;

    .end local v4    # "value":[B
    :goto_2
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    invoke-static {v3}, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->convertToLong([B)J

    move-result-wide v5

    long-to-int v2, v5

    new-array v4, v2, [B

    .restart local v4    # "value":[B
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    invoke-static {v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->convertToLong([B)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mTotalBytes:J

    .end local v2    # "length":I
    .end local v4    # "value":[B
    :goto_3
    return-void

    .restart local v2    # "length":I
    :cond_0
    if-nez v2, :cond_1

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "length":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "length":I
    :cond_1
    :try_start_1
    new-instance v5, Ljava/io/IOException;

    const-string v6, "url length null!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    if-nez v2, :cond_3

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mFileName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "file name length null!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    if-nez v2, :cond_5

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mMimetype:Ljava/lang/String;

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/io/IOException;

    const-string v6, "mime type length null!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public encodeBytes()[B
    .locals 7

    .prologue
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x2

    new-array v2, v5, [B

    .local v2, "lengthArray":[B
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mURL:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mURL:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .local v4, "value":[B
    array-length v1, v4

    .local v1, "length":I
    const/4 v5, 0x0

    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    const/4 v5, 0x1

    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .end local v1    # "length":I
    .end local v4    # "value":[B
    :goto_0
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .restart local v4    # "value":[B
    array-length v1, v4

    .restart local v1    # "length":I
    const/4 v5, 0x0

    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    const/4 v5, 0x1

    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .end local v1    # "length":I
    .end local v4    # "value":[B
    :goto_1
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mMimetype:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .restart local v4    # "value":[B
    array-length v1, v4

    .restart local v1    # "length":I
    const/4 v5, 0x0

    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    const/4 v5, 0x1

    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .end local v1    # "length":I
    .end local v4    # "value":[B
    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-byte v6, v2, v5

    const/4 v5, 0x1

    const/16 v6, 0x8

    aput-byte v6, v2, v5

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    iget-wide v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mTotalBytes:J

    invoke-static {v5, v6}, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->convertToByteArray(J)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    aput-byte v6, v2, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-byte v6, v2, v5

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2
    aput-byte v6, v2, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-byte v6, v2, v5

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-byte v6, v2, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-byte v6, v2, v5

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mURL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFileName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMimetype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTotalBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mTotalBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
