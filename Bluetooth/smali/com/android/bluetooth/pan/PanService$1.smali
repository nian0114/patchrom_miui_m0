.class Lcom/android/bluetooth/pan/PanService$1;
.super Landroid/os/Handler;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pan/PanService;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 148
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 149
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    # invokes: Lcom/android/bluetooth/pan/PanService;->connectPanNative([BII)Z
    invoke-static {v0, v2, v3, v4}, Lcom/android/bluetooth/pan/PanService;->access$000(Lcom/android/bluetooth/pan/PanService;[BII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    .line 153
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto :goto_0

    .line 162
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 163
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    # invokes: Lcom/android/bluetooth/pan/PanService;->disconnectPanNative([B)Z
    invoke-static {v0, v2}, Lcom/android/bluetooth/pan/PanService;->access$100(Lcom/android/bluetooth/pan/PanService;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    # getter for: Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/bluetooth/pan/PanService;->access$200(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    .line 167
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    # getter for: Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/bluetooth/pan/PanService;->access$200(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto :goto_0

    .line 176
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/bluetooth/pan/PanService$ConnectState;

    .line 177
    .local v6, "cs":Lcom/android/bluetooth/pan/PanService$ConnectState;
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->addr:[B

    # invokes: Lcom/android/bluetooth/btservice/ProfileService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v2}, Lcom/android/bluetooth/pan/PanService;->access$300(Lcom/android/bluetooth/pan/PanService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 182
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    # getter for: Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/bluetooth/pan/PanService;->access$200(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;

    move-result-object v2

    iget v3, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->state:I

    # invokes: Lcom/android/bluetooth/pan/PanService;->convertHalState(I)I
    invoke-static {v3}, Lcom/android/bluetooth/pan/PanService;->access$400(I)I

    move-result v3

    iget v4, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->local_role:I

    iget v5, v6, Lcom/android/bluetooth/pan/PanService$ConnectState;->remote_role:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto :goto_0

    .line 188
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "cs":Lcom/android/bluetooth/pan/PanService$ConnectState;
    :sswitch_3
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v0, v0, Lcom/android/bluetooth/pan/PanService;->mTetherAc:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v0, v0, Lcom/android/bluetooth/pan/PanService;->mTetherAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x11002

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, v0, Lcom/android/bluetooth/pan/PanService;->mTetherAc:Lcom/android/internal/util/AsyncChannel;

    .line 194
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v0, v0, Lcom/android/bluetooth/pan/PanService;->mTetherAc:Lcom/android/internal/util/AsyncChannel;

    const/4 v2, 0x0

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v2, p0, v3}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 195
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v0, v0, Lcom/android/bluetooth/pan/PanService;->mTetherAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x11002

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 202
    :sswitch_4
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v0, v0, Lcom/android/bluetooth/pan/PanService;->mTetherAc:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v0, v0, Lcom/android/bluetooth/pan/PanService;->mTetherAc:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 204
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/bluetooth/pan/PanService;->mTetherAc:Lcom/android/internal/util/AsyncChannel;

    goto/16 :goto_0

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xb -> :sswitch_2
        0x11001 -> :sswitch_3
        0x11003 -> :sswitch_4
    .end sparse-switch
.end method
