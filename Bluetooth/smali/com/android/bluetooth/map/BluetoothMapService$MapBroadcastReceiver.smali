.class Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMapService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p2, "x1"    # Lcom/android/bluetooth/map/BluetoothMapService$1;

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 675
    const-string v5, "BluetoothMapService"

    const-string v6, "onReceive"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 678
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x80000000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 680
    .local v4, "state":I
    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    .line 681
    const-string v5, "BluetoothMapService"

    const-string v6, "STATE_TURNING_OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->closeService()V
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1400(Lcom/android/bluetooth/map/BluetoothMapService;)V

    .line 726
    .end local v4    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 684
    .restart local v4    # "state":I
    :cond_1
    const/16 v5, 0xc

    if-ne v4, v5, :cond_0

    .line 685
    const-string v5, "BluetoothMapService"

    const-string v6, "STATE_ON"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->mInterrupted:Z
    invoke-static {v5, v8}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1502(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 688
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1200(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1200(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 691
    .end local v4    # "state":I
    :cond_2
    const-string v5, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 692
    const-string v5, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 694
    .local v2, "requestType":I
    const-string v5, "BluetoothMapService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received ACTION_CONNECTION_ACCESS_REPLY:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapService;->access$700(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$700(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    .line 702
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z
    invoke-static {v5, v8}, Lcom/android/bluetooth/map/BluetoothMapService;->access$702(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 704
    const-string v5, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_5

    .line 708
    const-string v5, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 709
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$400(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    move-result v3

    .line 710
    .local v3, "result":Z
    const-string v5, "BluetoothMapService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTrust() result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local v3    # "result":Z
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$300(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 715
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->startObexServerSession()V
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$600(Lcom/android/bluetooth/map/BluetoothMapService;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 719
    :catch_0
    move-exception v1

    .line 720
    .local v1, "ex":Ljava/io/IOException;
    const-string v5, "BluetoothMapService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught the error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 717
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->stopObexServerSession()V
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1000(Lcom/android/bluetooth/map/BluetoothMapService;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 723
    :cond_5
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->stopObexServerSession()V
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1000(Lcom/android/bluetooth/map/BluetoothMapService;)V

    goto/16 :goto_0
.end method
