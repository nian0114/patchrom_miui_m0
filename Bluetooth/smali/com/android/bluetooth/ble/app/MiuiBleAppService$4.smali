.class Lcom/android/bluetooth/ble/app/MiuiBleAppService$4;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/bluetooth/ble/app/MiuiBleAppService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService$4;->this$0:Lcom/android/bluetooth/ble/app/MiuiBleAppService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    # getter for: Lcom/android/bluetooth/ble/app/MiuiBleAppService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange(): selfChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService$4;->this$0:Lcom/android/bluetooth/ble/app/MiuiBleAppService;

    # invokes: Lcom/android/bluetooth/ble/app/MiuiBleAppService;->updateDevices()V
    invoke-static {v0}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->access$200(Lcom/android/bluetooth/ble/app/MiuiBleAppService;)V

    return-void
.end method
