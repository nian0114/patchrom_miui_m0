.class Lcom/android/bluetooth/ble/app/MiuiBleAppService$1;
.super Landroid/telephony/PhoneStateListener;
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
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService$1;->this$0:Lcom/android/bluetooth/ble/app/MiuiBleAppService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    # getter for: Lcom/android/bluetooth/ble/app/MiuiBleAppService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get call sate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "args":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService$1;->this$0:Lcom/android/bluetooth/ble/app/MiuiBleAppService;

    # getter for: Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mDevices:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->access$100(Lcom/android/bluetooth/ble/app/MiuiBleAppService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/ble/app/BaseBleDevice;

    .local v1, "device":Lcom/android/bluetooth/ble/app/BaseBleDevice;
    const-string v3, "miui.bluetooth.alert.CANCEL"

    invoke-virtual {v1, v3, v0}, Lcom/android/bluetooth/ble/app/BaseBleDevice;->onReceiveAlarmAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "device":Lcom/android/bluetooth/ble/app/BaseBleDevice;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
