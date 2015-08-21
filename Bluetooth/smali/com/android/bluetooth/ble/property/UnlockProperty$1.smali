.class Lcom/android/bluetooth/ble/property/UnlockProperty$1;
.super Ljava/lang/Object;
.source "UnlockProperty.java"

# interfaces
.implements Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/property/UnlockProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/property/UnlockProperty;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$1;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I

    .prologue
    const/4 v5, 0x0

    const-string v0, "UnlockProperty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$1;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$1;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # getter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mTracker:Lmiui/analytics/Analytics;
    invoke-static {v0}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$000(Lcom/android/bluetooth/ble/property/UnlockProperty;)Lmiui/analytics/Analytics;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$1;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    iget-object v2, v2, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    invoke-virtual {v2}, Lcom/android/bluetooth/ble/GattPeripheral;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/analytics/Analytics;->startSession(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$1;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # getter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mTracker:Lmiui/analytics/Analytics;
    invoke-static {v0}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$000(Lcom/android/bluetooth/ble/property/UnlockProperty;)Lmiui/analytics/Analytics;

    move-result-object v0

    const-string v2, "device"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$1;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # getter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mTracker:Lmiui/analytics/Analytics;
    invoke-static {v0}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$000(Lcom/android/bluetooth/ble/property/UnlockProperty;)Lmiui/analytics/Analytics;

    move-result-object v0

    const-string v2, "connection_state"

    int-to-long v3, p2

    invoke-virtual {v0, v2, v3, v4}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$1;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # getter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mTracker:Lmiui/analytics/Analytics;
    invoke-static {v0}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$000(Lcom/android/bluetooth/ble/property/UnlockProperty;)Lmiui/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/analytics/Analytics;->endSession()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->READY:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$1;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # setter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthenticateTimes:I
    invoke-static {v0, v5}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$102(Lcom/android/bluetooth/ble/property/UnlockProperty;I)I

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$1;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    iget-object v0, v0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$1;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # getter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthenticateTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$200(Lcom/android/bluetooth/ble/property/UnlockProperty;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/ble/GattPeripheral;->removeTask(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$1;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    iget-object v0, v0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$1;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # getter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthenticateTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$200(Lcom/android/bluetooth/ble/property/UnlockProperty;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/ble/GattPeripheral;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$1;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # setter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthorised:Z
    invoke-static {v0, v5}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$302(Lcom/android/bluetooth/ble/property/UnlockProperty;Z)Z

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$1;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # setter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mUnLockState:B
    invoke-static {v0, v5}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$402(Lcom/android/bluetooth/ble/property/UnlockProperty;B)B

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$1;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$1;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # getter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mUnLockState:B
    invoke-static {v1}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$400(Lcom/android/bluetooth/ble/property/UnlockProperty;)B

    move-result v1

    # invokes: Lcom/android/bluetooth/ble/property/UnlockProperty;->notifyUnlockState(B)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$500(Lcom/android/bluetooth/ble/property/UnlockProperty;B)V

    goto :goto_0
.end method
