.class public Lcom/android/bluetooth/ble/property/BleProperty;
.super Ljava/lang/Object;
.source "BleProperty.java"


# instance fields
.field protected mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/ParcelUuid;",
            "Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPM:Landroid/content/pm/PackageManager;

.field protected mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

.field protected mPropertyId:I


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 1
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPropertyId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mCallbacks:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/bluetooth/ble/GattPeripheral;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPM:Landroid/content/pm/PackageManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public addPropertyCallback(Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;)Z
    .locals 3
    .param p1, "clientId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    .prologue
    iget-object v2, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    .local v0, "isFirst":Z
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/bluetooth/ble/property/BleProperty;->onAddCallback(Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;Z)V

    const/4 v1, 0x1

    return v1

    .end local v0    # "isFirst":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected checkPermission()V
    .locals 10

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .local v6, "uid":I
    const/4 v5, 0x0

    .local v5, "trust":Z
    const/4 v3, 0x0

    .local v3, "packages":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPM:Landroid/content/pm/PackageManager;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_2

    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .local v4, "pkgName":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v4, v7, v8

    iget v7, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPropertyId:I

    invoke-static {v7, v4}, Lcom/android/bluetooth/ble/property/PropertyPermissions;->checkPackageName(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    :cond_1
    if-eqz v5, :cond_3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_2
    if-nez v5, :cond_4

    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission denied for property: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPropertyId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public getProperty()[B
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty([B)[B
    .locals 1
    .param p1, "params"    # [B

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropertyId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPropertyId:I

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected notifyData([B)V
    .locals 7
    .param p1, "data"    # [B

    .prologue
    iget-object v5, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "cb":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;>;"
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    iget v6, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mPropertyId:I

    invoke-interface {v3, v4, v6, p1}, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;->notifyProperty(Landroid/os/ParcelUuid;I[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "cb":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;>;"
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method protected onAddCallback(Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;Z)V
    .locals 0
    .param p1, "clientId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
    .param p3, "first"    # Z

    .prologue
    return-void
.end method

.method protected onRemoveCallback(Landroid/os/ParcelUuid;Z)V
    .locals 0
    .param p1, "clientId"    # Landroid/os/ParcelUuid;
    .param p2, "last"    # Z

    .prologue
    return-void
.end method

.method public postInvalide()V
    .locals 0

    .prologue
    return-void
.end method

.method public removePropertyCallback(Landroid/os/ParcelUuid;)Z
    .locals 4
    .param p1, "clientId"    # Landroid/os/ParcelUuid;

    .prologue
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    .local v0, "isLast":Z
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/BleProperty;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/bluetooth/ble/property/BleProperty;->onRemoveCallback(Landroid/os/ParcelUuid;Z)V

    return v2

    .end local v0    # "isLast":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v0    # "isLast":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProperty([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    const/4 v0, 0x0

    return v0
.end method
