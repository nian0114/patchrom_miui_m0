.class final Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$ScanDeathRecipient;
.super Ljava/lang/Object;
.source "MiBleDeviceManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScanDeathRecipient"
.end annotation


# instance fields
.field final clientId:Landroid/os/ParcelUuid;

.field final synthetic this$0:Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Landroid/os/ParcelUuid;)V
    .locals 0
    .param p2, "clientId"    # Landroid/os/ParcelUuid;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$ScanDeathRecipient;->this$0:Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$ScanDeathRecipient;->clientId:Landroid/os/ParcelUuid;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    # getter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binderDied() client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$ScanDeathRecipient;->clientId:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$ScanDeathRecipient;->this$0:Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    # getter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mScanCallbacks:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$200(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$ScanDeathRecipient;->clientId:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .local v0, "leScanCallback":Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$ScanDeathRecipient;->this$0:Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    # getter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBluetoothAdatper:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$300(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$ScanDeathRecipient;->this$0:Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    # getter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mScanCallbacks:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$200(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$ScanDeathRecipient;->clientId:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
