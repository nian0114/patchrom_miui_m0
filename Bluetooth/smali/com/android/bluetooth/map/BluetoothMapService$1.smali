.class Lcom/android/bluetooth/map/BluetoothMapService$1;
.super Landroid/os/Handler;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x138d

    const/4 v5, 0x0

    .line 450
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 500
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 452
    :sswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->startRfcommSocketListener()V
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$900(Lcom/android/bluetooth/map/BluetoothMapService;)V

    goto :goto_0

    .line 457
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z
    invoke-static {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$702(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->stopObexServerSession()V
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1000(Lcom/android/bluetooth/map/BluetoothMapService;)V

    goto :goto_0

    .line 466
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_3
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->stopObexServerSession()V
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1000(Lcom/android/bluetooth/map/BluetoothMapService;)V

    goto :goto_0

    .line 474
    :sswitch_4
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->disconnectMap(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 477
    :sswitch_5
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    if-nez v2, :cond_1

    .line 478
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 480
    .local v1, "pm":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v3, 0x1

    const-string v4, "StartingObexMapTransaction"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1102(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 482
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 483
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 484
    const-string v2, "BluetoothMapService"

    const-string v3, "Acquire Wake Lock"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1200(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1200(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1200(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 491
    :sswitch_6
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 493
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1102(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 494
    const-string v2, "BluetoothMapService"

    const-string v3, "Release Wake Lock"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 450
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x1388 -> :sswitch_3
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_0
        0x138c -> :sswitch_5
        0x138d -> :sswitch_6
    .end sparse-switch
.end method
