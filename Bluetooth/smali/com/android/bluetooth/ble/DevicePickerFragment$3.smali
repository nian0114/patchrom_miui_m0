.class Lcom/android/bluetooth/ble/DevicePickerFragment$3;
.super Ljava/lang/Object;
.source "DevicePickerFragment.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/DevicePickerFragment;
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
    iput-object p1, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .local v1, "index":I
    if-ltz v1, :cond_0

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    neg-int v2, p2

    .local v2, "key":I
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    .local v5, "nindex":I
    if-gez v5, :cond_2

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6, p1}, Lcom/android/bluetooth/ble/BluetoothDevicePreference;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .local v0, "btPreference":Lcom/android/bluetooth/ble/BluetoothDevicePreference;
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    invoke-virtual {v0, v6}, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOrder(I)V

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$800(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/preference/PreferenceGroup;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void

    .end local v0    # "btPreference":Lcom/android/bluetooth/ble/BluetoothDevicePreference;
    :cond_2
    add-int/lit8 v3, v5, 0x1

    .local v3, "nextindex":I
    :goto_1
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .local v4, "nextkey":I
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v4, :cond_4

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v4    # "nextkey":I
    :cond_3
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lt v3, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .restart local v4    # "nextkey":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_1
.end method
