.class Lcom/android/bluetooth/ble/PeripheralConnectionManager$1;
.super Ljava/lang/Object;
.source "PeripheralConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/PeripheralConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$1;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$1;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$000(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$1;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    invoke-static {v0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$100(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    move-result-object v0

    sget-object v2, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->CONNECTING:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$1;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;
    invoke-static {v0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$200(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Lcom/android/bluetooth/ble/GattPeripheral;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FG] cancel connect device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$1;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;
    invoke-static {v3}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$200(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Lcom/android/bluetooth/ble/GattPeripheral;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/ble/GattPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$1;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;
    invoke-static {v0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$200(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Lcom/android/bluetooth/ble/GattPeripheral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/GattPeripheral;->cancelConnect()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
