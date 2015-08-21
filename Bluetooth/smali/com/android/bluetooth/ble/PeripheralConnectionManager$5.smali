.class Lcom/android/bluetooth/ble/PeripheralConnectionManager$5;
.super Landroid/content/BroadcastReceiver;
.source "PeripheralConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/PeripheralConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$5;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$5;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$902(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Z)Z

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Screen Off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$5;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # setter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mScreenOn:Z
    invoke-static {v0, v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$902(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Z)Z

    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$5;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    # invokes: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->cancelNextWakeUpToRetryConnect()V
    invoke-static {v0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$1000(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)V

    # getter for: Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Screen On"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$5;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->reconnectAllIfNecessary(Z)V

    goto :goto_0
.end method
