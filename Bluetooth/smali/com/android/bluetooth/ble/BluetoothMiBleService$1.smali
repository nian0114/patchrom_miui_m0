.class Lcom/android/bluetooth/ble/BluetoothMiBleService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMiBleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/BluetoothMiBleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/BluetoothMiBleService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/BluetoothMiBleService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$1;->this$0:Lcom/android/bluetooth/ble/BluetoothMiBleService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v1, "BluetoothMiBleService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bluetooth receiver action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/16 v2, 0xa

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$1;->this$0:Lcom/android/bluetooth/ble/BluetoothMiBleService;

    # getter for: Lcom/android/bluetooth/ble/BluetoothMiBleService;->mConnectionManager:Lcom/android/bluetooth/ble/PeripheralConnectionManager;
    invoke-static {v1}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->access$000(Lcom/android/bluetooth/ble/BluetoothMiBleService;)Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$1;->this$0:Lcom/android/bluetooth/ble/BluetoothMiBleService;

    # getter for: Lcom/android/bluetooth/ble/BluetoothMiBleService;->mConnectionManager:Lcom/android/bluetooth/ble/PeripheralConnectionManager;
    invoke-static {v1}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->access$000(Lcom/android/bluetooth/ble/BluetoothMiBleService;)Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->stop()V

    iget-object v1, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$1;->this$0:Lcom/android/bluetooth/ble/BluetoothMiBleService;

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    goto :goto_0
.end method
