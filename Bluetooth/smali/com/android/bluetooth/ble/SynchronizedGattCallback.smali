.class abstract Lcom/android/bluetooth/ble/SynchronizedGattCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SynchronizedGattCallback.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field private static final ERROR_GATT_INVALID:I = 0xff01

.field private static final ERROR_GATT_NOT_CONNECTED:I = 0xff04

.field private static final ERROR_GATT_OPERATION_FAILED:I = 0xff02

.field private static final ERROR_GATT_OPERATION_TIMEOUT:I = 0xff03

.field protected static final ERROR_GATT_SUCCESS:I = 0x0

.field private static final ERROR_POST:I = 0xff05

.field private static final ERROR_UNKNOWN:I = 0xff00

.field private static final GATT_OPERATION_TIMEOUT:J = 0x7530L

.field private static final GATT_QUEUE_THREAD_NAME:Ljava/lang/String;

.field private static final INVALID_RSSI:I = 0x7fffffff


# instance fields
.field private final m_GattOperationLock:Ljava/lang/Object;

.field private m_GattOperationStatus:I

.field private m_GattQueue:Landroid/os/Handler;

.field private m_GattQueueThread:Landroid/os/HandlerThread;

.field private m_RSSI:I

.field private final m_RSSILock:Ljava/lang/Object;

.field private m_ReadRSSIStatus:I

.field private m_isGattOperationLocking:Z

.field private m_isRSSILocking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->CLASS_NAME:Ljava/lang/String;

    sget-object v0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->CLASS_NAME:Ljava/lang/String;

    sput-object v0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->GATT_QUEUE_THREAD_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const v2, 0xff00

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isGattOperationLocking:Z

    iput v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationStatus:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isRSSILocking:Z

    iput v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_ReadRSSIStatus:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSI:I

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->prepare()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/ble/SynchronizedGattCallback;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/SynchronizedGattCallback;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->notifyGattOperation(I)V

    return-void
.end method

.method private notifyGattOperation(I)V
    .locals 2
    .param p1, "ret"    # I

    .prologue
    iget-object v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationStatus:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isGattOperationLocking:Z

    iget-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private waitGattOperation(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)I
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    iget-object v3, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isGattOperationLocking:Z

    iget-object v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattQueue:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .local v1, "ret":Z
    if-nez v1, :cond_0

    const v2, 0xff05

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    iget-boolean v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isGattOperationLocking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-boolean v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isGattOperationLocking:Z

    if-eqz v2, :cond_0

    const v2, 0xff03

    iput v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationStatus:I

    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationStatus:I

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "ret":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method protected cleanup()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isGattOperationLocking:Z

    const v0, 0xff00

    iput v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationStatus:I

    iget-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isRSSILocking:Z

    const v0, 0xff00

    iput v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_ReadRSSIStatus:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSI:I

    iget-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method protected close()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method protected isConnected()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public final onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    invoke-direct {p0, p3}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->notifyGattOperation(I)V

    return-void
.end method

.method public final onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    invoke-direct {p0, p3}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->notifyGattOperation(I)V

    return-void
.end method

.method public final onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    invoke-direct {p0, p3}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->notifyGattOperation(I)V

    return-void
.end method

.method public final onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    invoke-direct {p0, p3}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->notifyGattOperation(I)V

    return-void
.end method

.method public final onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    iget-object v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSI:I

    iput p3, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_ReadRSSIStatus:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isRSSILocking:Z

    iget-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected prepare()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->GATT_QUEUE_THREAD_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    new-instance v1, Lcom/android/bluetooth/ble/SynchronizedGattCallback$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/ble/SynchronizedGattCallback$1;-><init>(Lcom/android/bluetooth/ble/SynchronizedGattCallback;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattQueue:Landroid/os/Handler;

    return-void
.end method

.method final declared-synchronized synchronizedReadCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)I
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/bluetooth/ble/SynchronizedGattCallback$2;-><init>(Lcom/android/bluetooth/ble/SynchronizedGattCallback;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->waitGattOperation(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .end local v0    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method final declared-synchronized synchronizedReadDescriptor(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)I
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/bluetooth/ble/SynchronizedGattCallback$4;-><init>(Lcom/android/bluetooth/ble/SynchronizedGattCallback;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)V

    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->waitGattOperation(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .end local v0    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method final synchronizedReadRemoteRSSI(Landroid/bluetooth/BluetoothGatt;)I
    .locals 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    const v2, 0x7fffffff

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isRSSILocking:Z

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    move-result v1

    .local v1, "ret":Z
    if-nez v1, :cond_2

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isRSSILocking:Z

    monitor-exit v3

    goto :goto_0

    .end local v1    # "ret":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "ret":Z
    :cond_2
    :try_start_1
    iget-boolean v4, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isRSSILocking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    :try_start_2
    iget-object v4, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    const-wide/16 v5, 0x7530

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-boolean v4, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isRSSILocking:Z

    if-eqz v4, :cond_2

    :cond_3
    iget v4, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_ReadRSSIStatus:I

    if-eqz v4, :cond_4

    monitor-exit v3

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    iget v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSI:I

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method final declared-synchronized synchronizedWriteCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)I
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "value"    # [B

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/bluetooth/ble/SynchronizedGattCallback$3;-><init>(Lcom/android/bluetooth/ble/SynchronizedGattCallback;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->waitGattOperation(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .end local v0    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method final declared-synchronized synchronizedWriteDescriptor(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;[B)I
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "value"    # [B

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/bluetooth/ble/SynchronizedGattCallback$5;-><init>(Lcom/android/bluetooth/ble/SynchronizedGattCallback;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;[B)V

    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->waitGattOperation(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .end local v0    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
