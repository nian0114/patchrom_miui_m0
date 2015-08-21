.class Lcom/android/bluetooth/opp/MiuiTransferManager$1;
.super Ljava/lang/Object;
.source "MiuiTransferManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/MiuiTransferManager;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/MiuiTransferManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$1;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelDisconnected()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$1;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChannelDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
