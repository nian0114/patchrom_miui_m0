.class Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty$1;
.super Ljava/lang/Object;
.source "SimpleCharacteristicProperty.java"

# interfaces
.implements Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty$1;->this$0:Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify([B)V
    .locals 6
    .param p1, "value"    # [B

    .prologue
    iget-object v3, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty$1;->this$0:Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;

    iget-object v3, v3, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "cb":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty$1;->this$0:Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;

    invoke-virtual {v5}, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->getPropertyId()I

    move-result v5

    invoke-interface {v3, v4, v5, p1}, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;->notifyProperty(Landroid/os/ParcelUuid;I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "cb":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;>;"
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method
