.class Lcom/android/bluetooth/ble/property/PayProperty$1;
.super Ljava/lang/Object;
.source "PayProperty.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/property/PayProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/property/PayProperty;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/property/PayProperty;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/property/PayProperty$1;->this$0:Lcom/android/bluetooth/ble/property/PayProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/PayProperty$1;->this$0:Lcom/android/bluetooth/ble/property/PayProperty;

    iget-object v1, v1, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    invoke-virtual {v1}, Lcom/android/bluetooth/ble/GattPeripheral;->readRemoteRSSI()I

    move-result v0

    .local v0, "rssi":I
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/PayProperty$1;->this$0:Lcom/android/bluetooth/ble/property/PayProperty;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/ble/property/BleProperty;->notifyData([B)V

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/PayProperty$1;->this$0:Lcom/android/bluetooth/ble/property/PayProperty;

    iget-object v1, v1, Lcom/android/bluetooth/ble/property/BleProperty;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/PayProperty$1;->this$0:Lcom/android/bluetooth/ble/property/PayProperty;

    iget-object v1, v1, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/bluetooth/ble/GattPeripheral;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
