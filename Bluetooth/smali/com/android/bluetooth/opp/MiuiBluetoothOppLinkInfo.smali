.class public Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;
.super Ljava/lang/Object;
.source "MiuiBluetoothOppLinkInfo.java"


# static fields
.field public static DEFAULT_WIFI_AP_NAME:Ljava/lang/String; = null

.field public static final NONE:Ljava/lang/String; = "NONE"

.field public static final WIFI_AP:Ljava/lang/String; = "WIFI_AP"

.field public static final WIFI_DIRECT:Ljava/lang/String; = "WIFI_DIRECT"

.field public static final WLAN:Ljava/lang/String; = "WLAN"


# instance fields
.field public mApName:Ljava/lang/String;

.field public mApPassword:Ljava/lang/String;

.field public mLocalIp:Ljava/lang/String;

.field public mLocalPort:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mWDSSID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "MiuiBluetoothAP"

    sput-object v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->DEFAULT_WIFI_AP_NAME:Ljava/lang/String;

    return-void
.end method

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

    .local v2, "len":I
    if-lez v2, :cond_0

    new-array v3, v2, [B

    .local v3, "value":[B
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mType:Ljava/lang/String;

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

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mApName:Ljava/lang/String;

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

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mApPassword:Ljava/lang/String;

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

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mWDSSID:Ljava/lang/String;

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

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mLocalIp:Ljava/lang/String;

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

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mLocalPort:Ljava/lang/String;

    .end local v2    # "len":I
    .end local v3    # "value":[B
    :goto_5
    return-void

    .restart local v2    # "len":I
    :cond_0
    if-nez v2, :cond_1

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "len":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "len":I
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "type length null!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    if-nez v2, :cond_3

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mApName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "ap name length null!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    if-nez v2, :cond_5

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mApPassword:Ljava/lang/String;

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/io/IOException;

    const-string v5, "ap pwd ip length null!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    if-nez v2, :cond_7

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mWDSSID:Ljava/lang/String;

    goto :goto_3

    :cond_7
    new-instance v4, Ljava/io/IOException;

    const-string v5, "mac length null!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    if-nez v2, :cond_9

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mLocalIp:Ljava/lang/String;

    goto :goto_4

    :cond_9
    new-instance v4, Ljava/io/IOException;

    const-string v5, "ip length null!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    if-nez v2, :cond_b

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mLocalPort:Ljava/lang/String;

    goto :goto_5

    :cond_b
    new-instance v4, Ljava/io/IOException;

    const-string v5, "port length null!"

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
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mType:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .local v2, "value":[B
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .end local v2    # "value":[B
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mApName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mApName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2    # "value":[B
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .end local v2    # "value":[B
    :goto_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mApPassword:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mApPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2    # "value":[B
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .end local v2    # "value":[B
    :goto_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mWDSSID:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mWDSSID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2    # "value":[B
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .end local v2    # "value":[B
    :goto_3
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mLocalIp:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mLocalIp:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2    # "value":[B
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .end local v2    # "value":[B
    :goto_4
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mLocalPort:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mLocalPort:Ljava/lang/String;

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

.method public genApMode()V
    .locals 4

    .prologue
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .local v1, "random":Ljava/util/Random;
    const v2, 0x55d4a80

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const v3, 0x989680

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "pwd":Ljava/lang/String;
    const-string v2, "WIFI_AP"

    iput-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mType:Ljava/lang/String;

    sget-object v2, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->DEFAULT_WIFI_AP_NAME:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mApName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mApPassword:Ljava/lang/String;

    return-void
.end method

.method public genDirectMode(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "WIFI_DIRECT"

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mWDSSID:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mApName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mApName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mApPassword:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mApPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWDSSID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mWDSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLocalIp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mLocalIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLocalPort"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mLocalPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
