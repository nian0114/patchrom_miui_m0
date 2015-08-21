.class abstract Lcom/android/bluetooth/ble/app/BaseBleDevice;
.super Ljava/lang/Object;
.source "BaseBleDevice.java"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;
.implements Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAddress:Ljava/lang/String;

.field private mBleEventCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lmiui/bluetooth/ble/IBleEventCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected final mDeviceType:I

.field protected mProfile:Lmiui/bluetooth/ble/MiBleProfile;

.field private mSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/bluetooth/ble/app/BaseBleDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mBleEventCallbacks:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mAddress:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/bluetooth/ble/DeviceUtils;->getDeviceType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mDeviceType:I

    new-instance v0, Lmiui/bluetooth/ble/MiBleProfile;

    invoke-direct {v0, p1, p2, p0}, Lmiui/bluetooth/ble/MiBleProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mProfile:Lmiui/bluetooth/ble/MiBleProfile;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mDeviceType:I

    return v0
.end method

.method protected getSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mSettings:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method protected getSettingBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mSettings:Ljava/util/Map;

    if-nez v1, :cond_1

    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mSettings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    move p2, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected getSettingsInteter(Ljava/lang/String;)I
    .locals 4
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mSettings:Ljava/util/Map;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mSettings:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyProperty(I[B)V
    .locals 3
    .param p1, "property"    # I
    .param p2, "data"    # [B

    .prologue
    sget-object v0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/ble/app/BaseBleDevice;->onReceivePropertyNotify(I[B)V

    return-void
.end method

.method abstract onDeviceReady()V
.end method

.method abstract onReceiveAlarmAction(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method onReceivePropertyNotify(I[B)V
    .locals 7
    .param p1, "property"    # I
    .param p2, "data"    # [B

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/ble/app/BaseBleDevice;->parseEvent(I[B)I

    move-result v2

    .local v2, "event":I
    iget-object v5, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mBleEventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .local v0, "cbs":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lmiui/bluetooth/ble/IBleEventCallback;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lmiui/bluetooth/ble/IBleEventCallback;

    iget-object v6, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v5, v6, v2, p2}, Lmiui/bluetooth/ble/IBleEventCallback;->onEvent(Ljava/lang/String;I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .end local v3    # "i":I
    .end local v4    # "len":I
    :cond_1
    return-void
.end method

.method protected onSettingsUpdated()V
    .locals 0

    .prologue
    return-void
.end method

.method public onState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    sget-object v0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseBleDevice.onState()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/BaseBleDevice;->onDeviceReady()V

    :cond_0
    return-void
.end method

.method abstract parseEvent(I[B)I
.end method

.method public registerBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 2
    .param p1, "event"    # I
    .param p2, "callback"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .prologue
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mBleEventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .local v0, "cbs":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lmiui/bluetooth/ble/IBleEventCallback;>;"
    if-nez v0, :cond_0

    new-instance v0, Landroid/os/RemoteCallbackList;

    .end local v0    # "cbs":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lmiui/bluetooth/ble/IBleEventCallback;>;"
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .restart local v0    # "cbs":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lmiui/bluetooth/ble/IBleEventCallback;>;"
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mBleEventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v1

    return v1
.end method

.method public setSettings(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mSettings:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/BaseBleDevice;->onSettingsUpdated()V

    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mProfile:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleProfile;->connect()V

    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mProfile:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-virtual {v3}, Lmiui/bluetooth/ble/MiBleProfile;->disconnect()V

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mBleEventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mBleEventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .local v0, "cbs":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lmiui/bluetooth/ble/IBleEventCallback;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "cbs":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lmiui/bluetooth/ble/IBleEventCallback;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mBleEventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public unregisterBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 3
    .param p1, "event"    # I
    .param p2, "callback"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .prologue
    sget-object v1, Lcom/android/bluetooth/ble/app/BaseBleDevice;->TAG:Ljava/lang/String;

    const-string v2, "registerBleEventCallback: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/ble/app/BaseBleDevice;->mBleEventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .local v0, "cbs":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lmiui/bluetooth/ble/IBleEventCallback;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
