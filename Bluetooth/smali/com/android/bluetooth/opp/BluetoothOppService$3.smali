.class Lcom/android/bluetooth/opp/BluetoothOppService$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 359
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 366
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->startSocketListener()V
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$600(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    goto :goto_0

    .line 380
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
