.class Lcom/android/bluetooth/btservice/AdapterService$1;
.super Landroid/os/Handler;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 406
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 423
    :goto_0
    return-void

    .line 409
    :sswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->processProfileServiceStateChanged(Ljava/lang/String;I)V
    invoke-static {v1, v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->access$000(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;I)V

    goto :goto_0

    .line 414
    :sswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "prevState"

    const/high16 v6, -0x80000000

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->processProfileStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->access$100(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_0

    .line 419
    :sswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->processConnectOtherProfiles(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v1, v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->access$200(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 406
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch
.end method
