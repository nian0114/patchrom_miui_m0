.class Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver$1;
.super Ljava/lang/Object;
.source "MiuiTransferManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver$1;->this$1:Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver$1;->this$1:Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "create group callback onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver$1;->this$1:Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "P2P_UNSUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver$1;->this$1:Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver$1;->this$1:Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BUSY"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver$1;->this$1:Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "create group callback onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
