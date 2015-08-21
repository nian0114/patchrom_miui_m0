.class Lcom/android/bluetooth/gatt/ScanClient;
.super Ljava/lang/Object;
.source "ScanClient.java"


# instance fields
.field appIf:I

.field isServer:Z

.field uuids:[Ljava/util/UUID;


# direct methods
.method constructor <init>(IZ)V
    .locals 1
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/bluetooth/gatt/ScanClient;->appIf:I

    .line 32
    iput-boolean p2, p0, Lcom/android/bluetooth/gatt/ScanClient;->isServer:Z

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/UUID;

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    .line 34
    return-void
.end method

.method constructor <init>(IZ[Ljava/util/UUID;)V
    .locals 0
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z
    .param p3, "uuids"    # [Ljava/util/UUID;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/bluetooth/gatt/ScanClient;->appIf:I

    .line 38
    iput-boolean p2, p0, Lcom/android/bluetooth/gatt/ScanClient;->isServer:Z

    .line 39
    iput-object p3, p0, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    .line 40
    return-void
.end method
