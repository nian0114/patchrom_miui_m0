.class Lcom/android/bluetooth/ble/DeviceProfileFragment$1$1;
.super Ljava/lang/Object;
.source "DeviceProfileFragment.java"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/ble/DeviceProfileFragment$1;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/DeviceProfileFragment$1;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1$1;->this$1:Lcom/android/bluetooth/ble/DeviceProfileFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const-string v0, "DeviceProfileFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect ble device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1$1;->this$1:Lcom/android/bluetooth/ble/DeviceProfileFragment$1;

    iget-object v2, v2, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$100(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1$1;->this$1:Lcom/android/bluetooth/ble/DeviceProfileFragment$1;

    iget-object v0, v0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # setter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mState:I
    invoke-static {v0, p1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$202(Lcom/android/bluetooth/ble/DeviceProfileFragment;I)I

    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1$1;->this$1:Lcom/android/bluetooth/ble/DeviceProfileFragment$1;

    iget-object v0, v0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$300(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1$1;->this$1:Lcom/android/bluetooth/ble/DeviceProfileFragment$1;

    iget-object v1, v1, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    invoke-virtual {v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getConnectionStateSummary()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    return-void
.end method
