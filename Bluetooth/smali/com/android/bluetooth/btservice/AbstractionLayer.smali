.class public final Lcom/android/bluetooth/btservice/AbstractionLayer;
.super Ljava/lang/Object;
.source "AbstractionLayer.java"


# static fields
.field static final BT_ACL_STATE_CONNECTED:I = 0x0

.field static final BT_ACL_STATE_DISCONNECTED:I = 0x1

.field static final BT_BOND_STATE_BONDED:I = 0x1

.field static final BT_BOND_STATE_NONE:I = 0x0

.field static final BT_DEVICE_TYPE_BLE:I = 0x2

.field static final BT_DEVICE_TYPE_BREDR:I = 0x1

.field static final BT_DEVICE_TYPE_DUAL:I = 0x3

.field static final BT_DISCOVERY_STARTED:I = 0x1

.field static final BT_DISCOVERY_STOPPED:I = 0x0

.field static final BT_PROPERTY_ADAPTER_BONDED_DEVICES:I = 0x8

.field static final BT_PROPERTY_ADAPTER_DISCOVERABLE_TIMEOUT:I = 0x9

.field static final BT_PROPERTY_ADAPTER_SCAN_MODE:I = 0x7

.field static final BT_PROPERTY_BDADDR:I = 0x2

.field static final BT_PROPERTY_BDNAME:I = 0x1

.field static final BT_PROPERTY_CLASS_OF_DEVICE:I = 0x4

.field static final BT_PROPERTY_REMOTE_FRIENDLY_NAME:I = 0xa

.field static final BT_PROPERTY_REMOTE_RSSI:I = 0xb

.field static final BT_PROPERTY_SERVICE_RECORD:I = 0x6

.field static final BT_PROPERTY_TYPE_OF_DEVICE:I = 0x5

.field static final BT_PROPERTY_UUIDS:I = 0x3

.field static final BT_SCAN_MODE_CONNECTABLE:I = 0x1

.field static final BT_SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x2

.field static final BT_SCAN_MODE_NONE:I = 0x0

.field static final BT_SSP_VARIANT_CONSENT:I = 0x2

.field static final BT_SSP_VARIANT_PASSKEY_CONFIRMATION:I = 0x0

.field static final BT_SSP_VARIANT_PASSKEY_ENTRY:I = 0x1

.field static final BT_SSP_VARIANT_PASSKEY_NOTIFICATION:I = 0x3

.field static final BT_STATE_OFF:I = 0x0

.field static final BT_STATE_ON:I = 0x1

.field public static final BT_STATUS_AUTH_FAILURE:I = 0x9

.field public static final BT_STATUS_AUTH_REJECTED:I = 0xb

.field public static final BT_STATUS_AUTH_TIMEOUT:I = 0xc

.field public static final BT_STATUS_BUSY:I = 0x4

.field public static final BT_STATUS_DONE:I = 0x5

.field public static final BT_STATUS_FAIL:I = 0x1

.field public static final BT_STATUS_NOMEM:I = 0x3

.field public static final BT_STATUS_NOT_READY:I = 0x2

.field public static final BT_STATUS_PARM_INVALID:I = 0x7

.field public static final BT_STATUS_RMT_DEV_DOWN:I = 0xa

.field public static final BT_STATUS_SUCCESS:I = 0x0

.field public static final BT_STATUS_UNHANDLED:I = 0x8

.field public static final BT_STATUS_UNSUPPORTED:I = 0x6

.field static final BT_UUID_SIZE:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
