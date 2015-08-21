.class public Lcom/android/bluetooth/ble/property/SportActivtiesProperty;
.super Lcom/android/bluetooth/ble/property/BleProperty;
.source "SportActivtiesProperty.java"


# static fields
.field private static final COMMAND_CONFIRM_ACTIVITY_DATA_TRANSFER_COMPLETE:B = 0xat

.field private static final COMMAND_FETCH_DATA:B = 0x6t

.field private static final DATA_TYPE_UNIT_MINUTE:B = 0x1t

.field private static final DBG:Z = true

.field private static final READ_TIME_OUT:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "SportActivtiesProperty"


# instance fields
.field private mBuffer:[B

.field private mComfirmData:[B

.field private mData:Ljava/io/ByteArrayOutputStream;

.field private mDataSourceInputStream:Ljava/io/PipedInputStream;

.field private mDataSourceOutputStream:Ljava/io/PipedOutputStream;

.field private mGattNotifyCallback:Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;

.field private mReadLen:I

.field private mReadTimemout:Ljava/lang/Runnable;

.field private mTotalLen:I


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 4
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/property/BleProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mData:Ljava/io/ByteArrayOutputStream;

    iput-object v2, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceInputStream:Ljava/io/PipedInputStream;

    iput-object v2, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceOutputStream:Ljava/io/PipedOutputStream;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mTotalLen:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mReadLen:I

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mBuffer:[B

    const/16 v0, 0x9

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mComfirmData:[B

    new-instance v0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/property/SportActivtiesProperty$1;-><init>(Lcom/android/bluetooth/ble/property/SportActivtiesProperty;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mReadTimemout:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/property/SportActivtiesProperty$2;-><init>(Lcom/android/bluetooth/ble/property/SportActivtiesProperty;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mGattNotifyCallback:Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;

    const/16 v0, 0x68

    iput v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPropertyId:I

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    sget-object v1, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_ACTIVITY_DATA:Ljava/util/UUID;

    iget-object v3, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mGattNotifyCallback:Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/ble/GattPeripheral;->registerNotification(Ljava/util/UUID;Ljava/util/UUID;Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/ble/property/SportActivtiesProperty;)Ljava/io/PipedOutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/property/SportActivtiesProperty;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceOutputStream:Ljava/io/PipedOutputStream;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/ble/property/SportActivtiesProperty;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/property/SportActivtiesProperty;

    .prologue
    invoke-direct {p0}, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->cleanIOStream()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/ble/property/SportActivtiesProperty;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/property/SportActivtiesProperty;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mReadTimemout:Ljava/lang/Runnable;

    return-object v0
.end method

.method private cleanIOStream()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceInputStream:Ljava/io/PipedInputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceInputStream:Ljava/io/PipedInputStream;

    invoke-virtual {v1}, Ljava/io/PipedInputStream;->close()V

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceOutputStream:Ljava/io/PipedOutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceOutputStream:Ljava/io/PipedOutputStream;

    invoke-virtual {v1}, Ljava/io/PipedOutputStream;->close()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceInputStream:Ljava/io/PipedInputStream;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceOutputStream:Ljava/io/PipedOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceInputStream:Ljava/io/PipedInputStream;

    iput-object v2, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceOutputStream:Ljava/io/PipedOutputStream;

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private notifyProgress()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget v1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mTotalLen:I

    if-gtz v1, :cond_0

    iput v3, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mReadLen:I

    :cond_0
    iget v1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mReadLen:I

    iget v2, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mTotalLen:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mTotalLen:I

    iput v1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mReadLen:I

    :cond_1
    new-array v0, v3, [B

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mReadLen:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mTotalLen:I

    div-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ble/property/BleProperty;->notifyData([B)V

    return-void
.end method

.method private parseActivityData()I
    .locals 11

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v6, 0xa

    if-ge v2, v6, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mBuffer:[B

    iget-object v7, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceInputStream:Ljava/io/PipedInputStream;

    invoke-virtual {v7}, Ljava/io/PipedInputStream;->read()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mBuffer:[B

    const/4 v7, 0x6

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    iget-object v7, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mBuffer:[B

    const/4 v8, 0x7

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iput v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mTotalLen:I

    iget-object v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mBuffer:[B

    const/16 v7, 0x8

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    iget-object v7, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mBuffer:[B

    const/16 v8, 0x9

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int v3, v6, v7

    .local v3, "len":I
    iget-object v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mData:Ljava/io/ByteArrayOutputStream;

    iget-object v7, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mBuffer:[B

    const/4 v8, 0x0

    const/4 v9, 0x6

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mData:Ljava/io/ByteArrayOutputStream;

    iget-object v7, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mBuffer:[B

    const/16 v8, 0x8

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mBuffer:[B

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mComfirmData:[B

    const/4 v9, 0x1

    const/4 v10, 0x6

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mBuffer:[B

    const/16 v7, 0x8

    iget-object v8, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mComfirmData:[B

    const/4 v9, 0x7

    const/4 v10, 0x2

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mReadLen:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mReadLen:I

    mul-int/lit8 v0, v3, 0x3

    .local v0, "cnt":I
    :goto_1
    if-lez v0, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mData:Ljava/io/ByteArrayOutputStream;

    iget-object v7, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceInputStream:Ljava/io/PipedInputStream;

    invoke-virtual {v7}, Ljava/io/PipedInputStream;->read()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const-string v6, "SportActivtiesProperty"

    const-string v7, "read %d/%d activities"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mReadLen:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mTotalLen:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mComfirmData:[B

    const/4 v7, 0x0

    const/16 v8, 0xa

    aput-byte v8, v6, v7

    iget-object v6, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    sget-object v7, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    sget-object v8, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_CONTROL_POINT:Ljava/util/UUID;

    iget-object v9, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mComfirmData:[B

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/bluetooth/ble/GattPeripheral;->write(Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v4

    .local v4, "ret":Z
    if-nez v4, :cond_2

    const-string v6, "SportActivtiesProperty"

    const-string v7, "write confirm error"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .end local v0    # "cnt":I
    .end local v3    # "len":I
    .end local v4    # "ret":Z
    :goto_2
    return v3

    .restart local v0    # "cnt":I
    .restart local v3    # "len":I
    .restart local v4    # "ret":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->notifyProgress()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v0    # "cnt":I
    .end local v3    # "len":I
    .end local v4    # "ret":Z
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v5

    goto :goto_2
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    sget-object v1, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_ACTIVITY_DATA:Ljava/util/UUID;

    iget-object v3, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mGattNotifyCallback:Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/ble/GattPeripheral;->unregisterNotification(Ljava/util/UUID;Ljava/util/UUID;Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;)Z

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public declared-synchronized getProperty()[B
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceInputStream:Ljava/io/PipedInputStream;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceInputStream:Ljava/io/PipedInputStream;

    invoke-virtual {v6}, Ljava/io/PipedInputStream;->close()V

    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceOutputStream:Ljava/io/PipedOutputStream;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceOutputStream:Ljava/io/PipedOutputStream;

    invoke-virtual {v6}, Ljava/io/PipedOutputStream;->close()V

    :cond_1
    new-instance v6, Ljava/io/PipedInputStream;

    invoke-direct {v6}, Ljava/io/PipedInputStream;-><init>()V

    iput-object v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceInputStream:Ljava/io/PipedInputStream;

    new-instance v6, Ljava/io/PipedOutputStream;

    invoke-direct {v6}, Ljava/io/PipedOutputStream;-><init>()V

    iput-object v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceOutputStream:Ljava/io/PipedOutputStream;

    iget-object v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceInputStream:Ljava/io/PipedInputStream;

    iget-object v7, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceOutputStream:Ljava/io/PipedOutputStream;

    invoke-virtual {v6, v7}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v6, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    sget-object v7, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    sget-object v8, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_CONTROL_POINT:Ljava/util/UUID;

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x0

    const/4 v11, 0x6

    aput-byte v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/bluetooth/ble/GattPeripheral;->write(Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v3

    .local v3, "ret":Z
    if-nez v3, :cond_3

    const-string v6, "SportActivtiesProperty"

    const-string v7, "write control point to read activities error"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->cleanIOStream()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "ret":Z
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v5

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->cleanIOStream()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v3    # "ret":Z
    :cond_3
    :try_start_4
    iget-object v6, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v7, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mReadTimemout:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7530

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/bluetooth/ble/GattPeripheral;->postDelayed(Ljava/lang/Runnable;J)V

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mTotalLen:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mReadLen:I

    invoke-direct {p0}, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->notifyProgress()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v4, 0x0

    .local v4, "succeed":Z
    :cond_4
    :goto_1
    :try_start_5
    iget-object v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceInputStream:Ljava/io/PipedInputStream;

    invoke-virtual {v6}, Ljava/io/PipedInputStream;->read()I

    move-result v6

    int-to-byte v0, v6

    .local v0, "dataType":B
    if-eq v0, v12, :cond_5

    const-string v6, "SportActivtiesProperty"

    const-string v7, "DATA_TYPE_UNIT_MINUTE error"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    :try_start_6
    iget-object v6, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v7, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mReadTimemout:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/ble/GattPeripheral;->removeTask(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->cleanIOStream()V

    invoke-direct {p0}, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->notifyProgress()V

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v5

    goto :goto_0

    :cond_5
    :try_start_7
    invoke-direct {p0}, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->parseActivityData()I

    move-result v2

    .local v2, "len":I
    if-gez v2, :cond_6

    const-string v6, "SportActivtiesProperty"

    const-string v7, "parseActivityData() returns error"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .end local v0    # "dataType":B
    .end local v2    # "len":I
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "dataType":B
    .restart local v2    # "len":I
    :cond_6
    if-nez v2, :cond_4

    :try_start_9
    const-string v6, "SportActivtiesProperty"

    const-string v7, "read succeed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mTotalLen:I

    iput v6, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mReadLen:I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v4, 0x1

    goto :goto_2
.end method
