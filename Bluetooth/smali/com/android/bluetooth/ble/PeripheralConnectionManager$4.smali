.class Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;
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
    iput-object p1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mRunning:Z
    invoke-static {v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$400(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mPeddingPeripherals:Ljava/util/concurrent/PriorityBlockingQueue;
    invoke-static {v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$500(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/ble/GattPeripheral;

    .local v1, "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    invoke-virtual {v1}, Lcom/android/bluetooth/ble/GattPeripheral;->getState()Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->READY:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$000(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    invoke-static {v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$100(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    move-result-object v2

    sget-object v4, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->IDLE:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    if-eq v2, v4, :cond_1

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection manager state error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    invoke-static {v5}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$100(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection manager state 1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    invoke-static {v5}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$100(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/bluetooth/ble/GattPeripheral;->isConnected()Z

    move-result v2

    if-nez v2, :cond_5

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Connection manager try to connect"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # invokes: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->connectDevice(Lcom/android/bluetooth/ble/GattPeripheral;)V
    invoke-static {v2, v1}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$600(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Lcom/android/bluetooth/ble/GattPeripheral;)V

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$000(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    :goto_1
    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection manager state 2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    invoke-static {v5}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$100(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    invoke-static {v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$100(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    move-result-object v2

    sget-object v4, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->CONNECTED:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # invokes: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->discoverServices(Lcom/android/bluetooth/ble/GattPeripheral;)V
    invoke-static {v2, v1}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$700(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Lcom/android/bluetooth/ble/GattPeripheral;)V

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$000(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    :cond_2
    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection manager state 3: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    invoke-static {v5}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$100(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    invoke-static {v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$100(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    move-result-object v2

    sget-object v4, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->READY:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    if-eq v2, v4, :cond_3

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection manager state 3.1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    invoke-static {v5}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$100(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # invokes: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->disconnectDevice(Lcom/android/bluetooth/ble/GattPeripheral;)V
    invoke-static {v2, v1}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$800(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Lcom/android/bluetooth/ble/GattPeripheral;)V

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$000(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection manager state 3.2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    invoke-static {v5}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$100(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/bluetooth/ble/GattPeripheral;->isAutoReconnect()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->requireConnect(Lcom/android/bluetooth/ble/GattPeripheral;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    const-wide/16 v4, 0x1f4

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection manager state 4: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    invoke-static {v5}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$100(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    const/4 v4, 0x0

    # setter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;
    invoke-static {v2, v4}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$202(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Lcom/android/bluetooth/ble/GattPeripheral;)Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    sget-object v4, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->IDLE:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    # setter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    invoke-static {v2, v4}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$102(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v1    # "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    return-void

    .restart local v1    # "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    :cond_5
    :try_start_5
    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Connection manager already connected"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    sget-object v4, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->CONNECTED:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    # setter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    invoke-static {v2, v4}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$102(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method
