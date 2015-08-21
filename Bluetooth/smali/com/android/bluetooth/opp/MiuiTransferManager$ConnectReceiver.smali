.class Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/MiuiTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/MiuiTransferManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "connect receiver. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "networkInfo"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .local v5, "ninfo":Landroid/net/NetworkInfo;
    const-string v10, "wifiInfo"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiInfo;

    .local v9, "winfo":Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_2

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "network state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "network typename: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "network type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v9, :cond_3

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wifi ssid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wifi ip address: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wifi mac address: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectedAP:Z
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$300(Lcom/android/bluetooth/opp/MiuiTransferManager;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v5, :cond_4

    if-eqz v9, :cond_4

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v10

    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v10, v11}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$400(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$400(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$400(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mPwd:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$500(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    const/4 v10, 0x2

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$100(Lcom/android/bluetooth/opp/MiuiTransferManager;)Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    move-result-object v10

    invoke-interface {v10, v0}, Lcom/android/bluetooth/opp/MiuiOnTransferListener;->onTransferReady(Landroid/net/wifi/WifiConfiguration;)V

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "ninfo":Landroid/net/NetworkInfo;
    .end local v9    # "winfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    :goto_2
    return-void

    .restart local v5    # "ninfo":Landroid/net/NetworkInfo;
    .restart local v9    # "winfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "network info is null!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "wifi info is null!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mRecvingFile:Z
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$600(Lcom/android/bluetooth/opp/MiuiTransferManager;)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mSendingFile:Z
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$700(Lcom/android/bluetooth/opp/MiuiTransferManager;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_5
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v10

    sget-object v11, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v10, v11}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$100(Lcom/android/bluetooth/opp/MiuiTransferManager;)Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/bluetooth/opp/MiuiOnTransferListener;->onTransferFailed()V

    goto :goto_2

    .end local v5    # "ninfo":Landroid/net/NetworkInfo;
    .end local v9    # "winfo":Landroid/net/wifi/WifiInfo;
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "wifi_state"

    const/4 v11, 0x4

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .local v7, "state":I
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wifi state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiEnable:Z
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$800(Lcom/android/bluetooth/opp/MiuiTransferManager;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x3

    if-ne v7, v10, :cond_1

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mStartedWD:Z
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$900(Lcom/android/bluetooth/opp/MiuiTransferManager;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-wide/16 v10, 0x7d0

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->disconnect()Z

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1200(Lcom/android/bluetooth/opp/MiuiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v11}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1100(Lcom/android/bluetooth/opp/MiuiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v11

    new-instance v12, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver$1;

    invoke-direct {v12, p0}, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver$1;-><init>(Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;)V

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_2

    :cond_7
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectedAP:Z
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$300(Lcom/android/bluetooth/opp/MiuiTransferManager;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$400(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mPwd:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$500(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    const/4 v10, 0x2

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .local v3, "netId":I
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->disconnect()Z

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v3, v11}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v8

    .local v8, "succeed":Z
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->reconnect()Z

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "connect to wifi:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ssid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$400(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "netId":I
    .end local v7    # "state":I
    .end local v8    # "succeed":Z
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "wifi_state"

    const/4 v11, 0x4

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .restart local v7    # "state":I
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mSendingFile:Z
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$700(Lcom/android/bluetooth/opp/MiuiTransferManager;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0xb

    if-ne v7, v10, :cond_1

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$100(Lcom/android/bluetooth/opp/MiuiTransferManager;)Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/bluetooth/opp/MiuiOnTransferListener;->onTransferFailed()V

    goto/16 :goto_2

    .end local v7    # "state":I
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "wifiP2pInfo"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pInfo;

    .local v6, "p2p":Landroid/net/wifi/p2p/WifiP2pInfo;
    const-string v10, "networkInfo"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .local v4, "network":Landroid/net/NetworkInfo;
    const-string v10, "p2pGroupInfo"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v6, :cond_b

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "p2p info. groupFormed:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v6, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " groupOwnerAddress:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isGroupOwner:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v6, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-eqz v4, :cond_c

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "network info. typename: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    if-eqz v1, :cond_d

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "group info. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ssid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectedWD:Z
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1300(Lcom/android/bluetooth/opp/MiuiTransferManager;)Z

    move-result v10

    if-eqz v10, :cond_f

    const-wide/16 v10, 0x7d0

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_7
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .local v2, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$400(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$400(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_a
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "connect wd wifi info: ssid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v10, 0x2

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "connected with wd ssid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$100(Lcom/android/bluetooth/opp/MiuiTransferManager;)Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    move-result-object v10

    invoke-interface {v10, v0}, Lcom/android/bluetooth/opp/MiuiOnTransferListener;->onTransferReady(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_2

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "info":Landroid/net/wifi/WifiInfo;
    :cond_b
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "p2p info is null."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_c
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "network info is null."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_d
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "group info is null."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .restart local v2    # "info":Landroid/net/wifi/WifiInfo;
    :cond_e
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed! connected with wd ssid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$100(Lcom/android/bluetooth/opp/MiuiTransferManager;)Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/bluetooth/opp/MiuiOnTransferListener;->onTransferReady(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_2

    .end local v2    # "info":Landroid/net/wifi/WifiInfo;
    :cond_f
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mStartedWD:Z
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$900(Lcom/android/bluetooth/opp/MiuiTransferManager;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v6, :cond_1

    iget-boolean v10, v6, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v10, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$402(Lcom/android/bluetooth/opp/MiuiTransferManager;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$400(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v10, 0x2

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create group. ssid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$400(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$100(Lcom/android/bluetooth/opp/MiuiTransferManager;)Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    move-result-object v10

    invoke-interface {v10, v0}, Lcom/android/bluetooth/opp/MiuiOnTransferListener;->onTransferReady(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_2

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v4    # "network":Landroid/net/NetworkInfo;
    .end local v6    # "p2p":Landroid/net/wifi/p2p/WifiP2pInfo;
    .restart local v7    # "state":I
    :catch_0
    move-exception v10

    goto/16 :goto_3

    .end local v7    # "state":I
    .restart local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .restart local v4    # "network":Landroid/net/NetworkInfo;
    .restart local v6    # "p2p":Landroid/net/wifi/p2p/WifiP2pInfo;
    :catch_1
    move-exception v10

    goto/16 :goto_7
.end method
