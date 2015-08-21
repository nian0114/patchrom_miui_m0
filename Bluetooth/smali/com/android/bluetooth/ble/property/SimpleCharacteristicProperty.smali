.class public Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;
.super Lcom/android/bluetooth/ble/property/BleProperty;
.source "SimpleCharacteristicProperty.java"


# static fields
.field private static final DBG:Z = true

.field public static final PERM_ALL:I = 0xffff

.field public static final PERM_NONE:I = 0x0

.field public static final PERM_NOTIFY:I = 0x4

.field public static final PERM_READ:I = 0x1

.field public static final PERM_WRITE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SimpleRreadWriteProperty"


# instance fields
.field private final mCharactUUID:Ljava/util/UUID;

.field private mGattNotifyCallback:Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;

.field private final mPermission:I

.field private final mServiceUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/ble/GattPeripheral;ILjava/util/UUID;Ljava/util/UUID;I)V
    .locals 1
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;
    .param p2, "property"    # I
    .param p3, "serviceUUID"    # Ljava/util/UUID;
    .param p4, "charactUUID"    # Ljava/util/UUID;
    .param p5, "permission"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/property/BleProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    new-instance v0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty$1;-><init>(Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->mGattNotifyCallback:Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;

    iput p2, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPropertyId:I

    iput p5, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->mPermission:I

    iput-object p3, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->mServiceUUID:Ljava/util/UUID;

    iput-object p4, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->mCharactUUID:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public addPropertyCallback(Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;)Z
    .locals 3
    .param p1, "clientId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    .prologue
    iget v0, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->mPermission:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const-string v0, "SimpleRreadWriteProperty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t add callback for property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/property/BleProperty;->getPropertyId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/bluetooth/ble/property/BleProperty;->addPropertyCallback(Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public getProperty()[B
    .locals 3

    .prologue
    iget v0, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->mPermission:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const-string v0, "SimpleRreadWriteProperty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/property/BleProperty;->getPropertyId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->mServiceUUID:Ljava/util/UUID;

    iget-object v2, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->mCharactUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/ble/GattPeripheral;->read(Ljava/util/UUID;Ljava/util/UUID;)[B

    move-result-object v0

    goto :goto_0
.end method

.method protected onAddCallback(Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;Z)V
    .locals 4
    .param p1, "clientId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
    .param p3, "isFirst"    # Z

    .prologue
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->mServiceUUID:Ljava/util/UUID;

    iget-object v2, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->mCharactUUID:Ljava/util/UUID;

    iget-object v3, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->mGattNotifyCallback:Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/ble/GattPeripheral;->registerNotification(Ljava/util/UUID;Ljava/util/UUID;Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;)Z

    :cond_0
    return-void
.end method

.method protected onRemoveCallback(Landroid/os/ParcelUuid;Z)V
    .locals 4
    .param p1, "clientId"    # Landroid/os/ParcelUuid;
    .param p2, "isLast"    # Z

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->mServiceUUID:Ljava/util/UUID;

    iget-object v2, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->mCharactUUID:Ljava/util/UUID;

    iget-object v3, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->mGattNotifyCallback:Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/ble/GattPeripheral;->unregisterNotification(Ljava/util/UUID;Ljava/util/UUID;Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;)Z

    :cond_0
    return-void
.end method

.method public setProperty([B)Z
    .locals 3
    .param p1, "data"    # [B

    .prologue
    iget v0, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->mPermission:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const-string v0, "SimpleRreadWriteProperty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/property/BleProperty;->getPropertyId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->mServiceUUID:Ljava/util/UUID;

    iget-object v2, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->mCharactUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/bluetooth/ble/GattPeripheral;->write(Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    goto :goto_0
.end method
