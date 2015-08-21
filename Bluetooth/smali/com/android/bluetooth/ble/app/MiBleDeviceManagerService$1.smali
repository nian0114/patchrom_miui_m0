.class Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$1;
.super Ljava/lang/Object;
.source "MiBleDeviceManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$1;->this$0:Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    # getter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppService connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$1;->this$0:Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    check-cast p2, Lcom/android/bluetooth/ble/app/IAppService;

    .end local p2    # "binder":Landroid/os/IBinder;
    # setter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mAppService:Lcom/android/bluetooth/ble/app/IAppService;
    invoke-static {v1, p2}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$102(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Lcom/android/bluetooth/ble/app/IAppService;)Lcom/android/bluetooth/ble/app/IAppService;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    # getter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppService disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$1;->this$0:Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mAppService:Lcom/android/bluetooth/ble/app/IAppService;
    invoke-static {v0, v1}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$102(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Lcom/android/bluetooth/ble/app/IAppService;)Lcom/android/bluetooth/ble/app/IAppService;

    return-void
.end method
