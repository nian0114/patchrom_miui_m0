.class Lcom/android/bluetooth/ble/PeripheralConnectionManager$6;
.super Ljava/lang/Object;
.source "PeripheralConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/PeripheralConnectionManager;->discoverServices(Lcom/android/bluetooth/ble/GattPeripheral;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

.field final synthetic val$peripheral:Lcom/android/bluetooth/ble/GattPeripheral;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$6;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    iput-object p2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$6;->val$peripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FG] discoverServices: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$6;->val$peripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    invoke-virtual {v2}, Lcom/android/bluetooth/ble/GattPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$6;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$000(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$6;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    invoke-static {v0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$100(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    move-result-object v0

    sget-object v2, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->CONNECTED:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$6;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    sget-object v2, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->DISCOVERING:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    # setter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    invoke-static {v0, v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$102(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$6;->val$peripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/GattPeripheral;->discoverServices()V

    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$6;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$1200(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$6;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mCancelDiscoveryRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$1100(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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
