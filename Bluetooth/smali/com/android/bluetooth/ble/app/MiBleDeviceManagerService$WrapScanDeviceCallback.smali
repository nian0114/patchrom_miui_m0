.class abstract Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;
.super Ljava/lang/Object;
.source "MiBleDeviceManagerService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "WrapScanDeviceCallback"
.end annotation


# instance fields
.field callback:Lmiui/bluetooth/ble/IScanDeviceCallback;

.field deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lmiui/bluetooth/ble/IScanDeviceCallback;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0
    .param p1, "cb"    # Lmiui/bluetooth/ble/IScanDeviceCallback;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "dr"    # Landroid/os/IBinder$DeathRecipient;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;->callback:Lmiui/bluetooth/ble/IScanDeviceCallback;

    iput-object p2, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method


# virtual methods
.method public linkToDeath()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;->token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setCallback(Lmiui/bluetooth/ble/IScanDeviceCallback;)V
    .locals 0
    .param p1, "cb"    # Lmiui/bluetooth/ble/IScanDeviceCallback;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;->callback:Lmiui/bluetooth/ble/IScanDeviceCallback;

    return-void
.end method

.method public unlinkToDeath()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;->token:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
