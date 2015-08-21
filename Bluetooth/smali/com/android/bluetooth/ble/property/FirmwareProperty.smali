.class public Lcom/android/bluetooth/ble/property/FirmwareProperty;
.super Lcom/android/bluetooth/ble/property/BleProperty;
.source "FirmwareProperty.java"


# static fields
.field private static final COMMAND_SEND_FIRMWARE_INFO:B = 0x7t

.field private static final COMMAND_SYNC:B = 0xbt

.field private static final TAG:Ljava/lang/String; = "FirmwareProperty"

.field private static final UUID_CHARACTERISTIC_CONTROL_POINT:Ljava/util/UUID;

.field private static final UUID_CHARACTERISTIC_DEVICE_INFO:Ljava/util/UUID;

.field private static final UUID_CHARACTERISTIC_FIRMWARE_DATA:Ljava/util/UUID;

.field private static final UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "0000fee0-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/FirmwareProperty;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    const-string v0, "0000ff05-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/FirmwareProperty;->UUID_CHARACTERISTIC_CONTROL_POINT:Ljava/util/UUID;

    const-string v0, "0000ff01-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/FirmwareProperty;->UUID_CHARACTERISTIC_DEVICE_INFO:Ljava/util/UUID;

    const-string v0, "0000ff08-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/FirmwareProperty;->UUID_CHARACTERISTIC_FIRMWARE_DATA:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 0
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/property/BleProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    return-void
.end method

.method private notifyProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ble/property/BleProperty;->notifyData([B)V

    return-void
.end method

.method private sendFirmwareData([BI)Z
    .locals 17
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    const/16 v1, 0x1000

    .local v1, "BLOCK_SIZE":I
    const/16 v2, 0x14

    .local v2, "MTU":I
    const/16 v11, 0x14

    new-array v6, v11, [B

    .local v6, "packet":[B
    move-object/from16 v0, p1

    array-length v11, v0

    sub-int v4, v11, p2

    .local v4, "len":I
    const/4 v9, 0x0

    .local v9, "transferedPackets":I
    const/4 v10, 0x0

    .local v10, "writenLen":I
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/ble/property/FirmwareProperty;->notifyProgress(I)V

    :goto_0
    if-ge v10, v4, :cond_3

    add-int/lit8 v11, v10, 0x14

    if-ge v11, v4, :cond_0

    add-int v11, p2, v10

    const/4 v12, 0x0

    const/16 v13, 0x14

    move-object/from16 v0, p1

    invoke-static {v0, v11, v6, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v6

    .local v7, "pkg":[B
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    sget-object v12, Lcom/android/bluetooth/ble/property/FirmwareProperty;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    sget-object v13, Lcom/android/bluetooth/ble/property/FirmwareProperty;->UUID_CHARACTERISTIC_FIRMWARE_DATA:Ljava/util/UUID;

    invoke-virtual {v11, v12, v13, v7}, Lcom/android/bluetooth/ble/GattPeripheral;->write(Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v8

    .local v8, "ret":Z
    if-nez v8, :cond_1

    const/4 v11, 0x0

    .end local v7    # "pkg":[B
    .end local v8    # "ret":Z
    :goto_2
    return v11

    :cond_0
    sub-int v5, v4, v10

    .local v5, "llen":I
    new-array v3, v5, [B

    .local v3, "last":[B
    add-int v11, p2, v10

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v3, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v3

    .restart local v7    # "pkg":[B
    goto :goto_1

    .end local v3    # "last":[B
    .end local v5    # "llen":I
    .restart local v8    # "ret":Z
    :cond_1
    array-length v11, v7

    add-int/2addr v10, v11

    array-length v11, v7

    add-int/2addr v9, v11

    const/16 v11, 0x1000

    if-lt v9, v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    sget-object v12, Lcom/android/bluetooth/ble/property/FirmwareProperty;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    sget-object v13, Lcom/android/bluetooth/ble/property/FirmwareProperty;->UUID_CHARACTERISTIC_CONTROL_POINT:Ljava/util/UUID;

    const/4 v14, 0x1

    new-array v14, v14, [B

    const/4 v15, 0x0

    const/16 v16, 0xb

    aput-byte v16, v14, v15

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/bluetooth/ble/GattPeripheral;->write(Ljava/util/UUID;Ljava/util/UUID;[B)Z

    const/4 v9, 0x0

    :cond_2
    mul-int/lit8 v11, v10, 0x64

    div-int/2addr v11, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/ble/property/FirmwareProperty;->notifyProgress(I)V

    goto :goto_0

    .end local v7    # "pkg":[B
    .end local v8    # "ret":Z
    :cond_3
    const/4 v11, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getProperty()[B
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    sget-object v2, Lcom/android/bluetooth/ble/property/FirmwareProperty;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/android/bluetooth/ble/property/FirmwareProperty;->UUID_CHARACTERISTIC_DEVICE_INFO:Ljava/util/UUID;

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/ble/GattPeripheral;->read(Ljava/util/UUID;Ljava/util/UUID;)[B

    move-result-object v0

    .local v0, "info":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized setProperty([B)Z
    .locals 7
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v1, "writeData":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-virtual {v1, p1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v3, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    sget-object v4, Lcom/android/bluetooth/ble/property/FirmwareProperty;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    sget-object v5, Lcom/android/bluetooth/ble/property/FirmwareProperty;->UUID_CHARACTERISTIC_CONTROL_POINT:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/bluetooth/ble/GattPeripheral;->write(Ljava/util/UUID;Ljava/util/UUID;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "ret":Z
    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/16 v2, 0xc

    :try_start_1
    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/ble/property/FirmwareProperty;->sendFirmwareData([BI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .end local v0    # "ret":Z
    .end local v1    # "writeData":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
