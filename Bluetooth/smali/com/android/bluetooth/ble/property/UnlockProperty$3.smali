.class Lcom/android/bluetooth/ble/property/UnlockProperty$3;
.super Ljava/lang/Object;
.source "UnlockProperty.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$3;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$3;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    iget-object v2, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$3;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # getter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthorised:Z
    invoke-static {v2}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$300(Lcom/android/bluetooth/ble/property/UnlockProperty;)Z

    move-result v2

    # invokes: Lcom/android/bluetooth/ble/property/UnlockProperty;->requestUnlockState(Z)B
    invoke-static {v1, v2}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$700(Lcom/android/bluetooth/ble/property/UnlockProperty;Z)B

    move-result v0

    .local v0, "state":B
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$3;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # getter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mUnLockState:B
    invoke-static {v1}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$400(Lcom/android/bluetooth/ble/property/UnlockProperty;)B

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$3;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # setter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mUnLockState:B
    invoke-static {v1, v0}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$402(Lcom/android/bluetooth/ble/property/UnlockProperty;B)B

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$3;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    iget-object v2, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$3;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # getter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mUnLockState:B
    invoke-static {v2}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$400(Lcom/android/bluetooth/ble/property/UnlockProperty;)B

    move-result v2

    # invokes: Lcom/android/bluetooth/ble/property/UnlockProperty;->notifyUnlockState(B)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$500(Lcom/android/bluetooth/ble/property/UnlockProperty;B)V

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$3;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    iget-object v1, v1, Lcom/android/bluetooth/ble/property/BleProperty;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$3;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    iget-object v1, v1, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/bluetooth/ble/GattPeripheral;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
