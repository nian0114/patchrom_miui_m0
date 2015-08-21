.class public Lcom/android/bluetooth/ble/property/ImmediateAlertProperty;
.super Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;
.source "ImmediateAlertProperty.java"


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 6
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    const/4 v2, 0x5

    sget-object v3, Lcom/android/bluetooth/ble/BleConstants;->UUID_SERVICE_IMMEDIATE_ALERT:Ljava/util/UUID;

    sget-object v4, Lcom/android/bluetooth/ble/BleConstants;->UUID_CHARACTERISTIC_ALERT_LEVEL:Ljava/util/UUID;

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;ILjava/util/UUID;Ljava/util/UUID;I)V

    return-void
.end method


# virtual methods
.method public setProperty([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->setProperty([B)Z

    move-result v0

    goto :goto_0
.end method
