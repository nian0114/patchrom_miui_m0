.class Lcom/android/bluetooth/ble/PeripheralConnectionManager$7;
.super Ljava/lang/Object;
.source "PeripheralConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/PeripheralConnectionManager;->connectDevice(Lcom/android/bluetooth/ble/GattPeripheral;)V
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
    iput-object p1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$7;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    iput-object p2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$7;->val$peripheral:Lcom/android/bluetooth/ble/GattPeripheral;

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

    const-string v2, "[FG] Connect device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$7;->val$peripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    invoke-virtual {v2}, Lcom/android/bluetooth/ble/GattPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$7;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$000(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$7;->val$peripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/GattPeripheral;->connect()Z

    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$7;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    sget-object v2, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->CONNECTING:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    # setter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    invoke-static {v0, v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$102(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$7;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$7;->val$peripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    # setter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;
    invoke-static {v0, v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$202(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Lcom/android/bluetooth/ble/GattPeripheral;)Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$7;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$1200(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$7;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mCancelConnectRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$1300(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$7;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$1200(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$7;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mCancelConnectRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$1300(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/32 v3, 0x9c40

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
