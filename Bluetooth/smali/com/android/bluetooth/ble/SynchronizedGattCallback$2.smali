.class Lcom/android/bluetooth/ble/SynchronizedGattCallback$2;
.super Ljava/lang/Object;
.source "SynchronizedGattCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/SynchronizedGattCallback;->synchronizedReadCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/SynchronizedGattCallback;

.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/SynchronizedGattCallback;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$2;->this$0:Lcom/android/bluetooth/ble/SynchronizedGattCallback;

    iput-object p2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iput-object p3, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$2;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$2;->this$0:Lcom/android/bluetooth/ble/SynchronizedGattCallback;

    const v2, 0xff01

    # invokes: Lcom/android/bluetooth/ble/SynchronizedGattCallback;->notifyGattOperation(I)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->access$000(Lcom/android/bluetooth/ble/SynchronizedGattCallback;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$2;->this$0:Lcom/android/bluetooth/ble/SynchronizedGattCallback;

    invoke-virtual {v1}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$2;->this$0:Lcom/android/bluetooth/ble/SynchronizedGattCallback;

    const v2, 0xff04

    # invokes: Lcom/android/bluetooth/ble/SynchronizedGattCallback;->notifyGattOperation(I)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->access$000(Lcom/android/bluetooth/ble/SynchronizedGattCallback;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$2;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    .local v0, "ret":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$2;->this$0:Lcom/android/bluetooth/ble/SynchronizedGattCallback;

    const v2, 0xff02

    # invokes: Lcom/android/bluetooth/ble/SynchronizedGattCallback;->notifyGattOperation(I)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->access$000(Lcom/android/bluetooth/ble/SynchronizedGattCallback;I)V

    goto :goto_0
.end method
