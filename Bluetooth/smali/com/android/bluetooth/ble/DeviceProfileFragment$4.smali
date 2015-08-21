.class Lcom/android/bluetooth/ble/DeviceProfileFragment$4;
.super Ljava/lang/Object;
.source "DeviceProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/DeviceProfileFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

.field final synthetic val$preference:Landroid/preference/Preference;

.field final synthetic val$settings:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/DeviceProfileFragment;Ljava/lang/String;Landroid/preference/Preference;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    iput-object p2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->val$settings:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->val$preference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;
    invoke-static {v0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$400(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Lmiui/bluetooth/ble/MiBleDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$100(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->val$settings:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmiui/bluetooth/ble/MiBleDeviceManager;->registerAppForBleEvent(Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->val$preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # invokes: Lcom/android/bluetooth/ble/DeviceProfileFragment;->updateContent()V
    invoke-static {v0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$1000(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V

    return-void
.end method
