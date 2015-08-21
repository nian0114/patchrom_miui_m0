.class public Lcom/android/bluetooth/ble/app/MiBandDevice;
.super Lcom/android/bluetooth/ble/app/AlertBleDevice;
.source "MiBandDevice.java"


# static fields
.field private static final ALERT_CLOCK:[B

.field private static final ALERT_INCALL:[B

.field private static final ALERT_SMS:[B

.field private static final DATA_CANCEL:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->ALERT_CLOCK:[B

    new-array v0, v3, [B

    const/4 v1, 0x2

    aput-byte v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->ALERT_INCALL:[B

    new-array v0, v3, [B

    aput-byte v3, v0, v2

    sput-object v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->ALERT_SMS:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->DATA_CANCEL:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x18t
        0x3t
        -0x18t
        0x3t
        0x5t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ble/app/AlertBleDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAlertDataForCancel()[B
    .locals 1

    .prologue
    sget-object v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->DATA_CANCEL:[B

    return-object v0
.end method

.method getAlertDataForClock()[B
    .locals 1

    .prologue
    sget-object v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->ALERT_CLOCK:[B

    return-object v0
.end method

.method getAlertDataForIncall()[B
    .locals 1

    .prologue
    sget-object v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->ALERT_INCALL:[B

    return-object v0
.end method

.method getAlertDataForSMS()[B
    .locals 1

    .prologue
    sget-object v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->ALERT_SMS:[B

    return-object v0
.end method

.method public bridge synthetic getDeviceType()I
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getDeviceType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic notifyProperty(I[B)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [B

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->notifyProperty(I[B)V

    return-void
.end method

.method onDeviceReady()V
    .locals 0

    .prologue
    return-void
.end method

.method public bridge synthetic onState(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->onState(I)V

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

.method public bridge synthetic registerBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->registerBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setSettings(Ljava/util/Map;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;

    .prologue
    invoke-super {p0, p1}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->setSettings(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->stop()V

    return-void
.end method

.method public bridge synthetic unregisterBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->unregisterBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v0

    return v0
.end method
