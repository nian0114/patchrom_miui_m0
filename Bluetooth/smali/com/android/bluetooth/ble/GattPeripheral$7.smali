.class Lcom/android/bluetooth/ble/GattPeripheral$7;
.super Ljava/lang/Object;
.source "GattPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/GattPeripheral;->notifyConnectionState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/GattPeripheral;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/GattPeripheral;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/GattPeripheral$7;->this$0:Lcom/android/bluetooth/ble/GattPeripheral;

    iput p2, p0, Lcom/android/bluetooth/ble/GattPeripheral$7;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-string v5, "GattPeripheral"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyConnectionState run: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/bluetooth/ble/GattPeripheral$7;->val$state:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/bluetooth/ble/GattPeripheral$7;->val$state:I

    sget-object v6, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->READY:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    # getter for: Lcom/android/bluetooth/ble/GattPeripheral$STATE;->value:I
    invoke-static {v6}, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->access$300(Lcom/android/bluetooth/ble/GattPeripheral$STATE;)I

    move-result v6

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/ble/GattPeripheral$7;->this$0:Lcom/android/bluetooth/ble/GattPeripheral;

    invoke-virtual {v5}, Lcom/android/bluetooth/ble/GattPeripheral;->init()Z

    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/ble/GattPeripheral$7;->this$0:Lcom/android/bluetooth/ble/GattPeripheral;

    # getter for: Lcom/android/bluetooth/ble/GattPeripheral;->mClients:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/bluetooth/ble/GattPeripheral;->access$400(Lcom/android/bluetooth/ble/GattPeripheral;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/ble/GattPeripheral$7;->this$0:Lcom/android/bluetooth/ble/GattPeripheral;

    # getter for: Lcom/android/bluetooth/ble/GattPeripheral;->mClients:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/bluetooth/ble/GattPeripheral;->access$400(Lcom/android/bluetooth/ble/GattPeripheral;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "client":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBleCallback;>;"
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/bluetooth/ble/IBluetoothMiBleCallback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    iget v8, p0, Lcom/android/bluetooth/ble/GattPeripheral$7;->val$state:I

    invoke-interface {v5, v6, v8}, Lmiui/bluetooth/ble/IBluetoothMiBleCallback;->onConnectionState(Landroid/os/ParcelUuid;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "client":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBleCallback;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v5, p0, Lcom/android/bluetooth/ble/GattPeripheral$7;->this$0:Lcom/android/bluetooth/ble/GattPeripheral;

    # getter for: Lcom/android/bluetooth/ble/GattPeripheral;->m_ConnCBs:Ljava/util/List;
    invoke-static {v5}, Lcom/android/bluetooth/ble/GattPeripheral;->access$500(Lcom/android/bluetooth/ble/GattPeripheral;)Ljava/util/List;

    move-result-object v6

    monitor-enter v6

    :try_start_4
    iget-object v5, p0, Lcom/android/bluetooth/ble/GattPeripheral$7;->this$0:Lcom/android/bluetooth/ble/GattPeripheral;

    # getter for: Lcom/android/bluetooth/ble/GattPeripheral;->m_ConnCBs:Ljava/util/List;
    invoke-static {v5}, Lcom/android/bluetooth/ble/GattPeripheral;->access$500(Lcom/android/bluetooth/ble/GattPeripheral;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;

    .local v0, "cb":Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/bluetooth/ble/GattPeripheral$7;->this$0:Lcom/android/bluetooth/ble/GattPeripheral;

    # getter for: Lcom/android/bluetooth/ble/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/bluetooth/ble/GattPeripheral;->access$600(Lcom/android/bluetooth/ble/GattPeripheral;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    iget v7, p0, Lcom/android/bluetooth/ble/GattPeripheral$7;->val$state:I

    invoke-interface {v0, v5, v7}, Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;->onConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_1

    .end local v0    # "cb":Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;>;>;"
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;>;>;"
    :cond_3
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void
.end method
