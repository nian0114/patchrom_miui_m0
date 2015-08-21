.class Lcom/android/bluetooth/ble/app/AlertBleDevice$1;
.super Ljava/lang/Object;
.source "AlertBleDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/app/AlertBleDevice;->onReceiveAlarmAction(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/app/AlertBleDevice;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/app/AlertBleDevice;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice$1;->this$0:Lcom/android/bluetooth/ble/app/AlertBleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice$1;->this$0:Lcom/android/bluetooth/ble/app/AlertBleDevice;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/ble/app/AlertBleDevice;->mPendingAlertTask:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->access$002(Lcom/android/bluetooth/ble/app/AlertBleDevice;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice$1;->this$0:Lcom/android/bluetooth/ble/app/AlertBleDevice;

    iget-object v0, v0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mProfile:Lmiui/bluetooth/ble/MiBleProfile;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice$1;->this$0:Lcom/android/bluetooth/ble/app/AlertBleDevice;

    invoke-virtual {v2}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getAlertDataForIncall()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/bluetooth/ble/MiBleProfile;->setProperty(I[B)Z

    return-void
.end method
