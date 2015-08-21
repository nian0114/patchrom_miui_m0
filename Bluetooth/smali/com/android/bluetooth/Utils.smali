.class public final Lcom/android/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final BD_ADDR_LEN:I = 0x6

.field static final BD_UUID_LEN:I = 0x10

.field private static final TAG:Ljava/lang/String; = "BluetoothUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 1
    .param p0, "valueBuf"    # [B

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v0

    return v0
.end method

.method public static byteArrayToInt([BI)I
    .locals 2
    .param p0, "valueBuf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 83
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method public static byteArrayToShort([B)S
    .locals 2
    .param p0, "valueBuf"    # [B

    .prologue
    .line 77
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 78
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    return v1
.end method

.method public static byteArrayToUuid([B)[Landroid/os/ParcelUuid;
    .locals 11
    .param p0, "val"    # [B

    .prologue
    .line 125
    array-length v5, p0

    div-int/lit8 v2, v5, 0x10

    .line 126
    .local v2, "numUuids":I
    new-array v4, v2, [Landroid/os/ParcelUuid;

    .line 128
    .local v4, "puuids":[Landroid/os/ParcelUuid;
    const/4 v3, 0x0

    .line 130
    .local v3, "offset":I
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 131
    .local v0, "converter":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 133
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 134
    new-instance v5, Landroid/os/ParcelUuid;

    new-instance v6, Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v7

    add-int/lit8 v9, v3, 0x8

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    aput-object v5, v4, v1

    .line 136
    add-int/lit8 v3, v3, 0x10

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-object v4
.end method

.method public static checkCaller()Z
    .locals 9

    .prologue
    .line 185
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 186
    .local v0, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 190
    .local v3, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 191
    .local v2, "foregroundUser":I
    if-ne v2, v0, :cond_0

    const/4 v5, 0x1

    .line 196
    .end local v2    # "foregroundUser":I
    .local v5, "ok":Z
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 198
    return v5

    .line 191
    .end local v5    # "ok":Z
    .restart local v2    # "foregroundUser":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 192
    .end local v2    # "foregroundUser":I
    :catch_0
    move-exception v1

    .line 193
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "BluetoothUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIfCallerIsSelfOrForegroundUser: Exception ex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    const/4 v5, 0x0

    .restart local v5    # "ok":Z
    goto :goto_0

    .line 196
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v5    # "ok":Z
    :catchall_0
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 153
    new-array v0, p2, [B

    .line 154
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 155
    .local v1, "bytesRead":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_0

    .line 156
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 159
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :cond_0
    return-void
.end method

.method public static debugGetAdapterStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 142
    packed-switch p0, :pswitch_data_0

    .line 147
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 143
    :pswitch_0
    const-string v0, "STATE_OFF"

    goto :goto_0

    .line 144
    :pswitch_1
    const-string v0, "STATE_ON"

    goto :goto_0

    .line 145
    :pswitch_2
    const-string v0, "STATE_TURNING_ON"

    goto :goto_0

    .line 146
    :pswitch_3
    const-string v0, "STATE_TURNING_OFF"

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static getAddressStringFromByte([B)Ljava/lang/String;
    .locals 8
    .param p0, "address"    # [B

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    aget-byte v2, p0, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v3

    aget-byte v2, p0, v4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    aget-byte v2, p0, v5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v5

    aget-byte v2, p0, v6

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v6

    aget-byte v2, p0, v7

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget-byte v3, p0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesFromAddress(Ljava/lang/String;)[B
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "j":I
    const/4 v3, 0x6

    new-array v2, v3, [B

    .line 61
    .local v2, "output":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    .line 63
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    return-object v2
.end method

.method public static intToByteArray(I)[B
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 89
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 90
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static safeCloseStream(Ljava/io/InputStream;)V
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 162
    if-eqz p0, :cond_0

    .line 164
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "BluetoothUtils"

    const-string v2, "Error closing stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static safeCloseStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 172
    if-eqz p0, :cond_0

    .line 174
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "BluetoothUtils"

    const-string v2, "Error closing stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static uuidToByteArray(Landroid/os/ParcelUuid;)[B
    .locals 8
    .param p0, "pUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 96
    const/16 v1, 0x10

    .line 97
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    .local v0, "converter":Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 100
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    .line 101
    .local v6, "uuid":Ljava/util/UUID;
    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    .line 102
    .local v4, "msb":J
    invoke-virtual {v6}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 103
    .local v2, "lsb":J
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 104
    const/16 v7, 0x8

    invoke-virtual {v0, v7, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    return-object v7
.end method

.method public static uuidsToByteArray([Landroid/os/ParcelUuid;)[B
    .locals 9
    .param p0, "uuids"    # [Landroid/os/ParcelUuid;

    .prologue
    .line 109
    array-length v8, p0

    mul-int/lit8 v2, v8, 0x10

    .line 110
    .local v2, "length":I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 111
    .local v0, "converter":Ljava/nio/ByteBuffer;
    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, p0

    if-ge v1, v8, :cond_0

    .line 115
    aget-object v8, p0, v1

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    .line 116
    .local v7, "uuid":Ljava/util/UUID;
    invoke-virtual {v7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    .line 117
    .local v5, "msb":J
    invoke-virtual {v7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    .line 118
    .local v3, "lsb":J
    mul-int/lit8 v8, v1, 0x10

    invoke-virtual {v0, v8, v5, v6}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 119
    mul-int/lit8 v8, v1, 0x10

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v0, v8, v3, v4}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v3    # "lsb":J
    .end local v5    # "msb":J
    .end local v7    # "uuid":Ljava/util/UUID;
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    return-object v8
.end method
