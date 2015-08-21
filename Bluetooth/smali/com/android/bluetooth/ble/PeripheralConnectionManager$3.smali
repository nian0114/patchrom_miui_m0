.class Lcom/android/bluetooth/ble/PeripheralConnectionManager$3;
.super Ljava/lang/Object;
.source "PeripheralConnectionManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/PeripheralConnectionManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/bluetooth/ble/GattPeripheral;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$3;->this$0:Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/bluetooth/ble/GattPeripheral;Lcom/android/bluetooth/ble/GattPeripheral;)I
    .locals 5
    .param p1, "lhs"    # Lcom/android/bluetooth/ble/GattPeripheral;
    .param p2, "rhs"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    invoke-virtual {p1}, Lcom/android/bluetooth/ble/GattPeripheral;->getRetryTimes()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/bluetooth/ble/GattPeripheral;->getRetryTimes()I

    move-result v4

    sub-int v0, v3, v4

    .local v0, "diff":I
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/bluetooth/ble/GattPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/ble/DeviceUtils;->getDeviceType(Ljava/lang/String;)I

    move-result v1

    .local v1, "tl":I
    invoke-virtual {p2}, Lcom/android/bluetooth/ble/GattPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/ble/DeviceUtils;->getDeviceType(Ljava/lang/String;)I

    move-result v2

    .local v2, "tr":I
    if-nez v1, :cond_0

    const v1, 0x7fffffff

    :cond_0
    if-nez v2, :cond_1

    const v2, 0x7fffffff

    :cond_1
    sub-int v0, v1, v2

    .end local v0    # "diff":I
    .end local v1    # "tl":I
    .end local v2    # "tr":I
    :cond_2
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/bluetooth/ble/GattPeripheral;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/bluetooth/ble/GattPeripheral;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager$3;->compare(Lcom/android/bluetooth/ble/GattPeripheral;Lcom/android/bluetooth/ble/GattPeripheral;)I

    move-result v0

    return v0
.end method
