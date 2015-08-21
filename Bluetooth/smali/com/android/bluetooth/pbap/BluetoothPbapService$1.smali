.class Lcom/android/bluetooth/pbap/BluetoothPbapService$1;
.super Landroid/os/Handler;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x138d

    const/4 v6, 0x0

    .line 639
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 699
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 641
    :sswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$900(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 642
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->startRfcommSocketListener()V
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 644
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1100(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 648
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v3, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->isWaitingAuthorization:Z
    invoke-static {v3, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$702(Lcom/android/bluetooth/pbap/BluetoothPbapService;Z)Z

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1200(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 657
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.bluetooth.pbap.userconfirmtimeout"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const v4, -0xf4242

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->removePbapNotification(I)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1300(Lcom/android/bluetooth/pbap/BluetoothPbapService;I)V

    .line 660
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthCancelled()V
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 663
    .end local v0    # "i":Landroid/content/Intent;
    :sswitch_4
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1200(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 671
    :sswitch_5
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v4, "com.android.bluetooth.pbap.authchall"

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->createPbapNotification(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1500(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljava/lang/String;)V

    .line 672
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x7530

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 676
    :sswitch_6
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1600(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    if-nez v3, :cond_2

    .line 677
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 679
    .local v2, "pm":Landroid/os/PowerManager;
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v4, 0x1

    const-string v5, "StartingObexPbapTransaction"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    # setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1602(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 681
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1600(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 682
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1600(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 683
    const-string v3, "BluetoothPbapService"

    const-string v4, "Acquire Wake Lock"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 686
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 690
    :sswitch_7
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1600(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 691
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1600(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 692
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v4, 0x0

    # setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1602(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 693
    const-string v3, "BluetoothPbapService"

    const-string v4, "Release Wake Lock"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 639
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x1388 -> :sswitch_4
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_0
        0x138b -> :sswitch_5
        0x138c -> :sswitch_6
        0x138d -> :sswitch_7
    .end sparse-switch
.end method
