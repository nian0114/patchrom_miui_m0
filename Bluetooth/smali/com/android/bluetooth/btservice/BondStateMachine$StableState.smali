.class Lcom/android/bluetooth/btservice/BondStateMachine$StableState;
.super Lcom/android/internal/util/State;
.source "BondStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BondStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StableState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/BondStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/BondStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/btservice/BondStateMachine$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;-><init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    const-string v1, "StableState(): Entering Off State"

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$200(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 106
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 108
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 132
    :pswitch_0
    const-string v3, "BluetoothBondStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received unhandled state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    return v2

    .line 111
    :pswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->createBond(Landroid/bluetooth/BluetoothDevice;Z)Z
    invoke-static {v2, v0, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$300(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;Z)Z

    :goto_1
    move v2, v3

    .line 135
    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->removeBond(Landroid/bluetooth/BluetoothDevice;Z)Z
    invoke-static {v2, v0, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$400(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_1

    .line 117
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 119
    .local v1, "newState":I
    const/16 v4, 0xb

    if-ne v1, v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->sendIntent(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v1, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$500(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 122
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # getter for: Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$600(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    move-result-object v4

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$700(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 126
    :cond_0
    const-string v2, "BluetoothBondStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In stable state, received invalid newState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
