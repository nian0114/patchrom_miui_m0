.class Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;
.super Landroid/bluetooth/IBluetoothGatt$Stub;
.source "GattService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothGattBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/gatt/GattService;

    .prologue
    .line 259
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGatt$Stub;-><init>()V

    .line 260
    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    .line 261
    return-void
.end method

.method private getService()Lcom/android/bluetooth/gatt/GattService;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    # invokes: Lcom/android/bluetooth/btservice/ProfileService;->isAvailable()Z
    invoke-static {v0}, Lcom/android/bluetooth/gatt/GattService;->access$100(Lcom/android/bluetooth/gatt/GattService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    .line 271
    :goto_0
    return-object v0

    .line 270
    :cond_0
    const-string v0, "BtGatt.GattService"

    const-string v1, "getService() - Service requested, but not available!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addCharacteristic(ILandroid/os/ParcelUuid;II)V
    .locals 2
    .param p1, "serverIf"    # I
    .param p2, "charId"    # Landroid/os/ParcelUuid;
    .param p3, "properties"    # I
    .param p4, "permissions"    # I

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 462
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->addCharacteristic(ILjava/util/UUID;II)V

    goto :goto_0
.end method

.method public addDescriptor(ILandroid/os/ParcelUuid;I)V
    .locals 2
    .param p1, "serverIf"    # I
    .param p2, "descId"    # Landroid/os/ParcelUuid;
    .param p3, "permissions"    # I

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 470
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 471
    :cond_0
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/bluetooth/gatt/GattService;->addDescriptor(ILjava/util/UUID;I)V

    goto :goto_0
.end method

.method public addIncludedService(IIILandroid/os/ParcelUuid;)V
    .locals 2
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "srvcId"    # Landroid/os/ParcelUuid;

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 454
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/bluetooth/gatt/GattService;->addIncludedService(IIILjava/util/UUID;)V

    goto :goto_0
.end method

.method public beginReliableWrite(ILjava/lang/String;)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 391
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->beginReliableWrite(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public beginServiceDeclaration(IIIILandroid/os/ParcelUuid;Z)V
    .locals 7
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "minHandles"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "advertisePreferred"    # Z

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 446
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->beginServiceDeclaration(IIIILjava/util/UUID;Z)V

    goto :goto_0
.end method

.method public cleanup()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public clearServices(I)V
    .locals 1
    .param p1, "serverIf"    # I

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 490
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 492
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->clearServices(I)V

    goto :goto_0
.end method

.method public clientConnect(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 316
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->clientConnect(ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public clientDisconnect(ILjava/lang/String;)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 322
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->clientDisconnect(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public discoverServices(ILjava/lang/String;)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 334
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->discoverServices(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public endReliableWrite(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "execute"    # Z

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 397
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->endReliableWrite(ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public endServiceDeclaration(I)V
    .locals 1
    .param p1, "serverIf"    # I

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 476
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 478
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->endServiceDeclaration(I)V

    goto :goto_0
.end method

.method public getAdvManufacturerData()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 557
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 558
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->getAdvManufacturerData()[B

    move-result-object v1

    goto :goto_0
.end method

.method public getAdvServiceData()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 542
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 543
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->getAdvServiceData()[B

    move-result-object v1

    goto :goto_0
.end method

.method public getAdvServiceUuids()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 564
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 565
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->getAdvServiceUuids()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 276
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public isAdvertising()Z
    .locals 2

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 521
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 522
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->isAdvertising()Z

    move-result v1

    goto :goto_0
.end method

.method public readCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 9
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "authReq"    # I

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 343
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->readCharacteristic(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;I)V

    goto :goto_0
.end method

.method public readDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 11
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "descrInstanceId"    # I
    .param p9, "descrId"    # Landroid/os/ParcelUuid;
    .param p10, "authReq"    # I

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 367
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v9

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/bluetooth/gatt/GattService;->readDescriptor(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;ILjava/util/UUID;I)V

    goto :goto_0
.end method

.method public readRemoteRssi(ILjava/lang/String;)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 414
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->readRemoteRssi(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public refreshDevice(ILjava/lang/String;)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 328
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 329
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->refreshDevice(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V
    .locals 2
    .param p1, "uuid"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattCallback;

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 282
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/bluetooth/gatt/GattService;->registerClient(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattCallback;)V

    goto :goto_0
.end method

.method public registerForNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z)V
    .locals 9
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "enable"    # Z

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 406
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->registerForNotification(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Z)V

    goto :goto_0
.end method

.method public registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V
    .locals 2
    .param p1, "uuid"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattServerCallback;

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 420
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/bluetooth/gatt/GattService;->registerServer(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattServerCallback;)V

    goto :goto_0
.end method

.method public removeAdvManufacturerCodeAndData(I)V
    .locals 1
    .param p1, "manufacturerCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 571
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 573
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->removeAdvManufacturerCodeAndData(I)V

    goto :goto_0
.end method

.method public removeService(IIILandroid/os/ParcelUuid;)V
    .locals 2
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "srvcId"    # Landroid/os/ParcelUuid;

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 483
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/bluetooth/gatt/GattService;->removeService(IIILjava/util/UUID;)V

    goto :goto_0
.end method

.method public sendNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z[B)V
    .locals 10
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "confirm"    # Z
    .param p9, "value"    # [B

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 506
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/bluetooth/gatt/GattService;->sendNotification(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Z[B)V

    goto :goto_0
.end method

.method public sendResponse(ILjava/lang/String;III[B)V
    .locals 7
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "requestId"    # I
    .param p4, "status"    # I
    .param p5, "offset"    # I
    .param p6, "value"    # [B

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 497
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 499
    :goto_0
    return-void

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 498
    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->sendResponse(ILjava/lang/String;III[B)V

    goto :goto_0
.end method

.method public serverConnect(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 432
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->serverConnect(ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public serverDisconnect(ILjava/lang/String;)V
    .locals 1
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 438
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 439
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->serverDisconnect(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setAdvManufacturerCodeAndData(I[B)Z
    .locals 2
    .param p1, "manufactureCode"    # I
    .param p2, "manufacturerData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 550
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 551
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->setAdvManufacturerCodeAndData(I[B)Z

    move-result v1

    goto :goto_0
.end method

.method public setAdvServiceData([B)Z
    .locals 2
    .param p1, "serviceData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 535
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 536
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->setAdvServiceData([B)Z

    move-result v1

    goto :goto_0
.end method

.method public startAdvertising(I)V
    .locals 1
    .param p1, "appIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 514
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 516
    :goto_0
    return-void

    .line 515
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->startAdvertising(I)V

    goto :goto_0
.end method

.method public startScan(IZ)V
    .locals 1
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 294
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->startScan(IZ)V

    goto :goto_0
.end method

.method public startScanWithUuids(IZ[Landroid/os/ParcelUuid;)V
    .locals 4
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z
    .param p3, "ids"    # [Landroid/os/ParcelUuid;

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v1

    .line 300
    .local v1, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v1, :cond_0

    .line 306
    :goto_0
    return-void

    .line 301
    :cond_0
    array-length v3, p3

    new-array v2, v3, [Ljava/util/UUID;

    .line 302
    .local v2, "uuids":[Ljava/util/UUID;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p3

    if-eq v0, v3, :cond_1

    .line 303
    aget-object v3, p3, v0

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v2, v0

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 305
    :cond_1
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/bluetooth/gatt/GattService;->startScanWithUuids(IZ[Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public stopAdvertising()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 528
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 530
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->stopAdvertising()V

    goto :goto_0
.end method

.method public stopScan(IZ)V
    .locals 1
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 310
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->stopScan(IZ)V

    goto :goto_0
.end method

.method public unregisterClient(I)V
    .locals 1
    .param p1, "clientIf"    # I

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 288
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->unregisterClient(I)V

    goto :goto_0
.end method

.method public unregisterServer(I)V
    .locals 1
    .param p1, "serverIf"    # I

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 426
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 428
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->unregisterServer(I)V

    goto :goto_0
.end method

.method public writeCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    .locals 11
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "writeType"    # I
    .param p9, "authReq"    # I
    .param p10, "value"    # [B

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 354
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/bluetooth/gatt/GattService;->writeCharacteristic(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;II[B)V

    goto :goto_0
.end method

.method public writeDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    .locals 13
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "descrInstanceId"    # I
    .param p9, "descrId"    # Landroid/os/ParcelUuid;
    .param p10, "writeType"    # I
    .param p11, "authReq"    # I
    .param p12, "value"    # [B

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 381
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v9

    move v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/bluetooth/gatt/GattService;->writeDescriptor(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;ILjava/util/UUID;II[B)V

    goto :goto_0
.end method
