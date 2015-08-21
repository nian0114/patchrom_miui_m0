.class public Lcom/android/bluetooth/ble/BluetoothMiBleService;
.super Landroid/app/Service;
.source "BluetoothMiBleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;,
        Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;
    }
.end annotation


# static fields
.field public static final BLE_SERVICE_VERSION:I = 0x1

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothMiBleService"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBinder:Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;

.field private mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionManager:Lcom/android/bluetooth/ble/PeripheralConnectionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mClients:Ljava/util/List;

    new-instance v0, Lcom/android/bluetooth/ble/BluetoothMiBleService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$1;-><init>(Lcom/android/bluetooth/ble/BluetoothMiBleService;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/ble/BluetoothMiBleService;)Lcom/android/bluetooth/ble/PeripheralConnectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/BluetoothMiBleService;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mConnectionManager:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/ble/BluetoothMiBleService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/BluetoothMiBleService;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mClients:Ljava/util/List;

    return-object v0
.end method

.method private findClientIndex(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    iget-object v2, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mClients:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;

    iget-object v2, v2, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;->token:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .end local v0    # "i":I
    :goto_1
    return v0

    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method connectClient(Ljava/lang/String;Landroid/os/ParcelUuid;)V
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/os/ParcelUuid;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->getGattPeripheral(Ljava/lang/String;)Lcom/android/bluetooth/ble/GattPeripheral;

    move-result-object v0

    .local v0, "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mConnectionManager:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->requireConnect(Lcom/android/bluetooth/ble/GattPeripheral;)V

    goto :goto_0
.end method

.method disconnectClient(Ljava/lang/String;Landroid/os/ParcelUuid;)V
    .locals 1
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/os/ParcelUuid;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->getGattPeripheral(Ljava/lang/String;)Lcom/android/bluetooth/ble/GattPeripheral;

    move-result-object v0

    .local v0, "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method getConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mConnectionManager:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getGattPeripheral(Ljava/lang/String;)Lcom/android/bluetooth/ble/GattPeripheral;
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mConnectionManager:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->getGattPeripheral(Ljava/lang/String;)Lcom/android/bluetooth/ble/GattPeripheral;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "BluetoothMiBleService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mBinder:Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bluetooth is not support on this device"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;

    invoke-direct {v1, p0, p0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;-><init>(Lcom/android/bluetooth/ble/BluetoothMiBleService;Lcom/android/bluetooth/ble/BluetoothMiBleService;)V

    iput-object v1, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mBinder:Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;

    new-instance v1, Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mConnectionManager:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    iget-object v1, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mConnectionManager:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->start()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mConnectionManager:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->stop()V

    iget-object v0, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const-string v0, "BluetoothMiBleService"

    const-string v1, "onStartCommand()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->RECONNECT_ACTION:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mConnectionManager:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->reconnectAllIfNecessary(Z)V

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method registerClient(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBleCallback;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "device"    # Ljava/lang/String;
    .param p3, "clientId"    # Landroid/os/ParcelUuid;
    .param p4, "callback"    # Lmiui/bluetooth/ble/IBluetoothMiBleCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->findClientIndex(Landroid/os/IBinder;)I

    move-result v2

    .local v2, "idx":I
    if-gez v2, :cond_0

    new-instance v0, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;-><init>(Lcom/android/bluetooth/ble/BluetoothMiBleService;Landroid/os/IBinder;Landroid/os/ParcelUuid;Ljava/lang/String;)V

    .local v0, "client":Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;
    iget-object v4, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mClients:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v4, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mConnectionManager:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    invoke-virtual {v4, p2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->getGattPeripheral(Ljava/lang/String;)Lcom/android/bluetooth/ble/GattPeripheral;

    move-result-object v3

    .local v3, "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    invoke-virtual {v0, v3}, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;->setPeripheral(Lcom/android/bluetooth/ble/GattPeripheral;)V

    if-nez v3, :cond_1

    :goto_1
    return-void

    .end local v0    # "client":Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;
    .end local v3    # "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mClients:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;

    .restart local v0    # "client":Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;
    goto :goto_0

    .restart local v3    # "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p1, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v3, p3, p4}, Lcom/android/bluetooth/ble/GattPeripheral;->registerClient(Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBleCallback;)Z

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method unregisterClient(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "device"    # Ljava/lang/String;
    .param p3, "clientId"    # Landroid/os/ParcelUuid;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->findClientIndex(Landroid/os/IBinder;)I

    move-result v1

    .local v1, "idx":I
    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mClients:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;

    .local v0, "client":Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;
    iget-object v3, v0, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;->getPeripheral()Lcom/android/bluetooth/ble/GattPeripheral;

    move-result-object v2

    .local v2, "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p3}, Lcom/android/bluetooth/ble/GattPeripheral;->unregisterClient(Landroid/os/ParcelUuid;)Z

    invoke-virtual {v2}, Lcom/android/bluetooth/ble/GattPeripheral;->hasClients()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService;->mConnectionManager:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->removeGattPeripheral(Ljava/lang/String;)V

    goto :goto_0
.end method
