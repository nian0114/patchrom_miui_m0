.class Lcom/android/bluetooth/ble/DeviceProfileFragment$1;
.super Landroid/os/Handler;
.source "DeviceProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/DeviceProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    new-instance v4, Lmiui/bluetooth/ble/MiBleProfile;

    iget-object v5, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    invoke-virtual {v5}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$100(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/bluetooth/ble/DeviceProfileFragment$1$1;

    invoke-direct {v7, p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment$1$1;-><init>(Lcom/android/bluetooth/ble/DeviceProfileFragment$1;)V

    invoke-direct {v4, v5, v6, v7}, Lmiui/bluetooth/ble/MiBleProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    # setter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;
    invoke-static {v3, v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$002(Lcom/android/bluetooth/ble/DeviceProfileFragment;Lmiui/bluetooth/ble/MiBleProfile;)Lmiui/bluetooth/ble/MiBleProfile;

    iget-object v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;
    invoke-static {v3}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$000(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Lmiui/bluetooth/ble/MiBleProfile;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/bluetooth/ble/MiBleProfile;->connect()V

    iget-object v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;
    invoke-static {v3}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$400(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Lmiui/bluetooth/ble/MiBleDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$100(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/bluetooth/ble/MiBleDeviceManager;->bindDevice(Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfiles:Ljava/util/List;
    invoke-static {v3}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$500(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .local v0, "cbp":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/ble/DeviceProfileFragment;->getSettingsByKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$600(Lcom/android/bluetooth/ble/DeviceProfileFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "settings":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;
    invoke-static {v3}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$400(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Lmiui/bluetooth/ble/MiBleDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$100(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lmiui/bluetooth/ble/MiBleDeviceManager;->registerAppForBleEvent(Ljava/lang/String;I)Z

    goto :goto_1

    .end local v0    # "cbp":Landroid/preference/CheckBoxPreference;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "settings":Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;
    invoke-static {v3}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$400(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Lmiui/bluetooth/ble/MiBleDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$100(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/bluetooth/ble/MiBleDeviceManager;->unbindDevice(Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;
    invoke-static {v3}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$000(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Lmiui/bluetooth/ble/MiBleProfile;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/bluetooth/ble/MiBleProfile;->disconnect()V

    iget-object v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    const/4 v4, 0x0

    # setter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mState:I
    invoke-static {v3, v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$202(Lcom/android/bluetooth/ble/DeviceProfileFragment;I)I

    iget-object v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$300(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    invoke-virtual {v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getConnectionStateSummary()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
