.class Lcom/android/bluetooth/ble/DevicePickerFragment$2;
.super Ljava/lang/Object;
.source "DevicePickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/DevicePickerFragment;->scanLeDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/DevicePickerFragment;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$2;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$2;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mCurrentState:Lcom/android/bluetooth/ble/DevicePickerFragment$State;
    invoke-static {v2}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$200(Lcom/android/bluetooth/ble/DevicePickerFragment;)Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/ble/DevicePickerFragment$State;->STOP_SCANNING:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$2;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$500(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$2;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    invoke-static {v3}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$400(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    iget-object v2, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$2;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mSearchIcon:Lcom/android/bluetooth/ble/MiuiSearchDrawable;
    invoke-static {v2}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$600(Lcom/android/bluetooth/ble/DevicePickerFragment;)Lcom/android/bluetooth/ble/MiuiSearchDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/ble/MiuiSearchDrawable;->stopAnimation()V

    iget-object v2, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$2;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    sget-object v3, Lcom/android/bluetooth/ble/DevicePickerFragment$State;->STOP_SCANNING:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    # invokes: Lcom/android/bluetooth/ble/DevicePickerFragment;->switchState(Lcom/android/bluetooth/ble/DevicePickerFragment$State;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$700(Lcom/android/bluetooth/ble/DevicePickerFragment;Lcom/android/bluetooth/ble/DevicePickerFragment$State;)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$2;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;
    invoke-static {v2}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$800(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/preference/PreferenceGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$2;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;
    invoke-static {v2}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$800(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/preference/PreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;

    .local v0, "btPreference":Lcom/android/bluetooth/ble/BluetoothDevicePreference;
    iget-object v2, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$2;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, v0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$2;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;
    invoke-static {v2}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$800(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/preference/PreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "btPreference":Lcom/android/bluetooth/ble/BluetoothDevicePreference;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
