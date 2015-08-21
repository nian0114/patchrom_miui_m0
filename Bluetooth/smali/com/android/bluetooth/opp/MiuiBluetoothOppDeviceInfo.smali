.class public Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;
.super Ljava/lang/Object;
.source "MiuiBluetoothOppDeviceInfo.java"


# instance fields
.field public mBSSID:Ljava/lang/String;

.field public mGatewayIp:Ljava/lang/String;

.field public mNetmask:Ljava/lang/String;

.field public mSSID:Ljava/lang/String;


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

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mSSID:Ljava/lang/String;

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

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mBSSID:Ljava/lang/String;

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

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mGatewayIp:Ljava/lang/String;

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

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mNetmask:Ljava/lang/String;

    .end local v2    # "length":I
    .end local v3    # "value":[B
    :goto_3
    return-void

    .restart local v2    # "length":I
    :cond_0
    if-nez v2, :cond_1

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mSSID:Ljava/lang/String;
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
    new-instance v4, Ljava/io/IOException;

    const-string v5, "ssid length null!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    if-nez v2, :cond_3

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mBSSID:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "bssid length null!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    if-nez v2, :cond_5

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mGatewayIp:Ljava/lang/String;

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/io/IOException;

    const-string v5, "gateway ip length null!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    if-nez v2, :cond_7

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mNetmask:Ljava/lang/String;

    goto :goto_3

    :cond_7
    new-instance v4, Ljava/io/IOException;

    const-string v5, "netmask length null!"

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
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mSSID:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mSSID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .local v2, "value":[B
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .end local v2    # "value":[B
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mBSSID:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mBSSID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2    # "value":[B
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .end local v2    # "value":[B
    :goto_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mGatewayIp:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mGatewayIp:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2    # "value":[B
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .end local v2    # "value":[B
    :goto_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mNetmask:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mNetmask:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2    # "value":[B
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "value":[B
    :goto_3
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

    goto :goto_3

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
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public initDeviceInfo(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mBSSID:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mSSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mBSSID:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mSSID:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mSSID:Ljava/lang/String;

    const-string v4, "<unknown ssid>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v3}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mGatewayIp:Ljava/lang/String;

    iget v3, v0, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v3}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mNetmask:Ljava/lang/String;

    .end local v0    # "dhcpInfo":Landroid/net/DhcpInfo;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BSSID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mGatewayIp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mGatewayIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNetmask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mNetmask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
