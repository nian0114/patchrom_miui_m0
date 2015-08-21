.class public Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;
.super Ljava/lang/Object;
.source "MiuiBluetoothOppAppInfo.java"


# instance fields
.field public mDiscription:Ljava/lang/String;

.field public mDownloadMode:Ljava/lang/String;

.field public mFeature:Ljava/lang/String;

.field public mHttpServer:Ljava/lang/String;

.field public mSupport:Ljava/lang/String;

.field public mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeBytes([B)V
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v1, "in":Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .local v2, "length":I
    if-lez v2, :cond_0

    new-array v3, v2, [B

    .local v3, "value":[B
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mVersion:Ljava/lang/String;

    .end local v3    # "value":[B
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    if-lez v2, :cond_2

    new-array v3, v2, [B

    .restart local v3    # "value":[B
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mFeature:Ljava/lang/String;

    .end local v3    # "value":[B
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    if-lez v2, :cond_4

    new-array v3, v2, [B

    .restart local v3    # "value":[B
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mSupport:Ljava/lang/String;

    .end local v3    # "value":[B
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    if-lez v2, :cond_6

    new-array v3, v2, [B

    .restart local v3    # "value":[B
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mDiscription:Ljava/lang/String;

    .end local v3    # "value":[B
    :goto_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    if-lez v2, :cond_8

    new-array v3, v2, [B

    .restart local v3    # "value":[B
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mHttpServer:Ljava/lang/String;

    .end local v3    # "value":[B
    :goto_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    if-lez v2, :cond_a

    new-array v3, v2, [B

    .restart local v3    # "value":[B
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mDownloadMode:Ljava/lang/String;

    .end local v2    # "length":I
    .end local v3    # "value":[B
    :goto_5
    return-void

    .restart local v2    # "length":I
    :cond_0
    if-nez v2, :cond_1

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "length":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "length":I
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "version length null!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    if-nez v2, :cond_3

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mFeature:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "feature length null!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    if-nez v2, :cond_5

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mSupport:Ljava/lang/String;

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/io/IOException;

    const-string v5, "support length null!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    if-nez v2, :cond_7

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mDiscription:Ljava/lang/String;

    goto :goto_3

    :cond_7
    new-instance v4, Ljava/io/IOException;

    const-string v5, "discription length null!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    if-nez v2, :cond_9

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mHttpServer:Ljava/lang/String;

    goto :goto_4

    :cond_9
    new-instance v4, Ljava/io/IOException;

    const-string v5, "http server length null!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    if-nez v2, :cond_b

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mDownloadMode:Ljava/lang/String;

    goto :goto_5

    :cond_b
    new-instance v4, Ljava/io/IOException;

    const-string v5, "download mode length null!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public encodeBytes()[B
    .locals 4

    .prologue
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mVersion:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .local v2, "value":[B
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .end local v2    # "value":[B
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mFeature:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mFeature:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2    # "value":[B
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .end local v2    # "value":[B
    :goto_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mSupport:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mSupport:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2    # "value":[B
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .end local v2    # "value":[B
    :goto_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mDiscription:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mDiscription:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2    # "value":[B
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .end local v2    # "value":[B
    :goto_3
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mHttpServer:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mHttpServer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2    # "value":[B
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .end local v2    # "value":[B
    :goto_4
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mDownloadMode:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mDownloadMode:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2    # "value":[B
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "value":[B
    :goto_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5
.end method

.method public initAppInfo()V
    .locals 1

    .prologue
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mVersion:Ljava/lang/String;

    const-string v0, "UseMiuiTransferChannel"

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mFeature:Ljava/lang/String;

    sget-object v0, Lcom/android/bluetooth/opp/MiuiConstants;->support:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mSupport:Ljava/lang/String;

    const-string v0, "UseMiuiTransferChannel"

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mDiscription:Ljava/lang/String;

    const-string v0, "NanoHTTPD"

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mHttpServer:Ljava/lang/String;

    const-string v0, "HttpClient"

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mDownloadMode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " support: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mSupport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " discription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mDiscription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " httpserver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mHttpServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " downloadmode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->mDownloadMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
