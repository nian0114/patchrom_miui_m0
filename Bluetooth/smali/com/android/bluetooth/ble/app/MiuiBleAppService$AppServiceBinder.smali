.class public Lcom/android/bluetooth/ble/app/MiuiBleAppService$AppServiceBinder;
.super Landroid/os/Binder;
.source "MiuiBleAppService.java"

# interfaces
.implements Lcom/android/bluetooth/ble/app/IAppService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/app/MiuiBleAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/app/MiuiBleAppService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/ble/app/MiuiBleAppService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService$AppServiceBinder;->this$0:Lcom/android/bluetooth/ble/app/MiuiBleAppService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public registerBleEventCallback(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 4
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "callback"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .prologue
    # getter for: Lcom/android/bluetooth/ble/app/MiuiBleAppService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerBleEventCallback() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService$AppServiceBinder;->this$0:Lcom/android/bluetooth/ble/app/MiuiBleAppService;

    # getter for: Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mDevices:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->access$100(Lcom/android/bluetooth/ble/app/MiuiBleAppService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/app/BaseBleDevice;

    .local v0, "bleDevice":Lcom/android/bluetooth/ble/app/BaseBleDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/ble/app/BaseBleDevice;->registerBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterBleEventCallback(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 4
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "callback"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .prologue
    # getter for: Lcom/android/bluetooth/ble/app/MiuiBleAppService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterBleEventCallback() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService$AppServiceBinder;->this$0:Lcom/android/bluetooth/ble/app/MiuiBleAppService;

    # getter for: Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mDevices:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->access$100(Lcom/android/bluetooth/ble/app/MiuiBleAppService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/app/BaseBleDevice;

    .local v0, "bleDevice":Lcom/android/bluetooth/ble/app/BaseBleDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/ble/app/BaseBleDevice;->unregisterBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
