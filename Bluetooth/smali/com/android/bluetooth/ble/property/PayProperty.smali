.class public Lcom/android/bluetooth/ble/property/PayProperty;
.super Lcom/android/bluetooth/ble/property/BleProperty;
.source "PayProperty.java"


# static fields
.field private static final CHECK_INTERVAL:I = 0x12c

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "PayProperty"


# instance fields
.field private mCheckRssiTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 1
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/property/BleProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    new-instance v0, Lcom/android/bluetooth/ble/property/PayProperty$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/property/PayProperty$1;-><init>(Lcom/android/bluetooth/ble/property/PayProperty;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/property/PayProperty;->mCheckRssiTask:Ljava/lang/Runnable;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPropertyId:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getProperty([B)[B
    .locals 2
    .param p1, "params"    # [B

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "PayProperty"

    const-string v1, "getProperty()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/property/BleProperty;->checkPermission()V

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/android/bluetooth/ble/property/AuthoriseHelper;->encryptData(Lcom/android/bluetooth/ble/GattPeripheral;I[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSupported()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    sget-object v1, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_AUTHORISE_SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_ENCRYPT_READ:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/ble/GattPeripheral;->getCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAddCallback(Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;Z)V
    .locals 4
    .param p1, "clientId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
    .param p3, "first"    # Z

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/bluetooth/ble/property/BleProperty;->onAddCallback(Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;Z)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/PayProperty;->mCheckRssiTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/ble/GattPeripheral;->removeTask(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/PayProperty;->mCheckRssiTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/ble/GattPeripheral;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method protected onRemoveCallback(Landroid/os/ParcelUuid;Z)V
    .locals 2
    .param p1, "clientId"    # Landroid/os/ParcelUuid;
    .param p2, "last"    # Z

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/bluetooth/ble/property/BleProperty;->onRemoveCallback(Landroid/os/ParcelUuid;Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/PayProperty;->mCheckRssiTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/ble/GattPeripheral;->removeTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setProperty([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    const-string v0, "PayProperty"

    const-string v1, "setProperty()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/property/BleProperty;->checkPermission()V

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/android/bluetooth/ble/property/AuthoriseHelper;->setKey(Lcom/android/bluetooth/ble/GattPeripheral;I[B)Z

    move-result v0

    goto :goto_0
.end method
