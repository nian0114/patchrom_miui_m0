.class Lcom/android/bluetooth/ble/app/MiuiBleAppService$2;
.super Landroid/content/BroadcastReceiver;
.source "MiuiBleAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/app/MiuiBleAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/app/MiuiBleAppService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/app/MiuiBleAppService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService$2;->this$0:Lcom/android/bluetooth/ble/app/MiuiBleAppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/bluetooth/ble/app/MiuiBleAppService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService$2;->this$0:Lcom/android/bluetooth/ble/app/MiuiBleAppService;

    # getter for: Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mDevices:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->access$100(Lcom/android/bluetooth/ble/app/MiuiBleAppService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    # getter for: Lcom/android/bluetooth/ble/app/MiuiBleAppService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "No available profile is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .local v1, "args":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService$2;->this$0:Lcom/android/bluetooth/ble/app/MiuiBleAppService;

    # getter for: Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mDevices:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->access$100(Lcom/android/bluetooth/ble/app/MiuiBleAppService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/ble/app/BaseBleDevice;

    .local v2, "device":Lcom/android/bluetooth/ble/app/BaseBleDevice;
    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/ble/app/BaseBleDevice;->onReceiveAlarmAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
