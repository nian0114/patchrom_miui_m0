.class Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$2;
.super Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;
.source "MiBleDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->startScanDevice(Landroid/os/IBinder;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IScanDeviceCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

.field final synthetic val$property:I


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Lmiui/bluetooth/ble/IScanDeviceCallback;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0
    .param p2, "x0"    # Lmiui/bluetooth/ble/IScanDeviceCallback;
    .param p3, "x1"    # Landroid/os/IBinder;
    .param p4, "x2"    # Landroid/os/IBinder$DeathRecipient;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$2;->this$0:Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    iput p5, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$2;->val$property:I

    invoke-direct {p0, p2, p3, p4}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;-><init>(Lmiui/bluetooth/ble/IScanDeviceCallback;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanData"    # [B

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$2;->callback:Lmiui/bluetooth/ble/IScanDeviceCallback;

    iget v2, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$2;->val$property:I

    invoke-interface {v1, v2, p1, p2, p3}, Lmiui/bluetooth/ble/IScanDeviceCallback;->onScanDevice(ILandroid/bluetooth/BluetoothDevice;I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
