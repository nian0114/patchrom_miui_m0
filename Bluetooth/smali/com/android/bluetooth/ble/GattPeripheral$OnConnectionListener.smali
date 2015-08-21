.class public interface abstract Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;
.super Ljava/lang/Object;
.source "GattPeripheral.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/GattPeripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConnectionListener"
.end annotation


# virtual methods
.method public abstract onConnectFailed(Lcom/android/bluetooth/ble/GattPeripheral;)V
.end method

.method public abstract onConnected(Lcom/android/bluetooth/ble/GattPeripheral;)V
.end method

.method public abstract onDisconnected(Lcom/android/bluetooth/ble/GattPeripheral;)V
.end method

.method public abstract onServiceDiscovered(Lcom/android/bluetooth/ble/GattPeripheral;Z)V
.end method
