.class Lcom/android/bluetooth/ble/DevicePickerFragment$1;
.super Landroid/os/Handler;
.source "DevicePickerFragment.java"


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
    iput-object p1, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$1;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$1;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # invokes: Lcom/android/bluetooth/ble/DevicePickerFragment;->updateContent()V
    invoke-static {v0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$000(Lcom/android/bluetooth/ble/DevicePickerFragment;)V

    iget-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$1;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mStartScanOnResume:Z
    invoke-static {v0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$100(Lcom/android/bluetooth/ble/DevicePickerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$1;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mCurrentState:Lcom/android/bluetooth/ble/DevicePickerFragment$State;
    invoke-static {v0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$200(Lcom/android/bluetooth/ble/DevicePickerFragment;)Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/ble/DevicePickerFragment$State;->SCANNING:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$1;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # invokes: Lcom/android/bluetooth/ble/DevicePickerFragment;->scanLeDevice()V
    invoke-static {v0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$300(Lcom/android/bluetooth/ble/DevicePickerFragment;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
    .end packed-switch
.end method
