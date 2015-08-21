.class final Lcom/android/bluetooth/ble/app/BleDeviceFactory$1;
.super Lcom/android/bluetooth/ble/app/BaseBleDevice;
.source "BleDeviceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/app/BleDeviceFactory;->createBleDevice(Landroid/content/Context;Ljava/lang/String;)Lcom/android/bluetooth/ble/app/BaseBleDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ble/app/BaseBleDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onDeviceReady()V
    .locals 0

    .prologue
    return-void
.end method

.method onReceiveAlarmAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method parseEvent(I[B)I
    .locals 1
    .param p1, "property"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v0, 0x0

    return v0
.end method
