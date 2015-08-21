.class public Lcom/android/bluetooth/ble/property/MiKeyProperty;
.super Lcom/android/bluetooth/ble/property/BleProperty;
.source "MiKeyProperty.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mCallback:Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/bluetooth/ble/property/MiKeyProperty;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiKeyProperty;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 1
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/property/BleProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    new-instance v0, Lcom/android/bluetooth/ble/property/MiKeyProperty$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/property/MiKeyProperty$1;-><init>(Lcom/android/bluetooth/ble/property/MiKeyProperty;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/property/MiKeyProperty;->mCallback:Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;

    const/16 v0, 0x6b

    iput v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPropertyId:I

    return-void
.end method


# virtual methods
.method public isSupported()Z
    .locals 3

    .prologue
    sget-object v0, Lcom/android/bluetooth/ble/property/MiKeyProperty;->TAG:Ljava/lang/String;

    const-string v1, "isSupported()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    sget-object v1, Lcom/android/bluetooth/ble/property/MiKeyConstants;->UUID_SERVICE_REPORTER:Ljava/util/UUID;

    sget-object v2, Lcom/android/bluetooth/ble/property/MiKeyConstants;->UUID_CHARACTERISTIC_REPORTER_SET:Ljava/util/UUID;

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

    sget-object v1, Lcom/android/bluetooth/ble/property/MiKeyConstants;->UUID_SERVICE_REPORTER:Ljava/util/UUID;

    sget-object v2, Lcom/android/bluetooth/ble/property/MiKeyConstants;->UUID_CHARACTERISTIC_REPORTER_NOTIFY:Ljava/util/UUID;

    iget-object v3, p0, Lcom/android/bluetooth/ble/property/MiKeyProperty;->mCallback:Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/ble/GattPeripheral;->registerNotification(Ljava/util/UUID;Ljava/util/UUID;Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;)Z

    :cond_0
    return-void
.end method

.method protected onRemoveCallback(Landroid/os/ParcelUuid;Z)V
    .locals 4
    .param p1, "clientId"    # Landroid/os/ParcelUuid;
    .param p2, "last"    # Z

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/bluetooth/ble/property/BleProperty;->onRemoveCallback(Landroid/os/ParcelUuid;Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    sget-object v1, Lcom/android/bluetooth/ble/property/MiKeyConstants;->UUID_SERVICE_REPORTER:Ljava/util/UUID;

    sget-object v2, Lcom/android/bluetooth/ble/property/MiKeyConstants;->UUID_CHARACTERISTIC_REPORTER_NOTIFY:Ljava/util/UUID;

    iget-object v3, p0, Lcom/android/bluetooth/ble/property/MiKeyProperty;->mCallback:Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/ble/GattPeripheral;->unregisterNotification(Ljava/util/UUID;Ljava/util/UUID;Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;)Z

    :cond_0
    return-void
.end method

.method public setProperty([B)Z
    .locals 6
    .param p1, "data"    # [B

    .prologue
    const/4 v0, 0x0

    sget-object v1, Lcom/android/bluetooth/ble/property/MiKeyProperty;->TAG:Ljava/lang/String;

    const-string v2, "setProperty()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    sget-object v2, Lcom/android/bluetooth/ble/property/MiKeyConstants;->UUID_SERVICE_REPORTER:Ljava/util/UUID;

    sget-object v3, Lcom/android/bluetooth/ble/property/MiKeyConstants;->UUID_CHARACTERISTIC_REPORTER_SET:Ljava/util/UUID;

    const/4 v4, 0x1

    new-array v4, v4, [B

    aget-byte v5, p1, v0

    aput-byte v5, v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/bluetooth/ble/GattPeripheral;->write(Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method
