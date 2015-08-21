.class Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;
.super Ljava/lang/Object;
.source "GattPeripheral.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/GattPeripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CombinedUUID"
.end annotation


# instance fields
.field characteristic:Ljava/util/UUID;

.field descriptor:Ljava/util/UUID;

.field service:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 1
    .param p1, "srv"    # Ljava/util/UUID;
    .param p2, "charact"    # Ljava/util/UUID;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;-><init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 0
    .param p1, "srv"    # Ljava/util/UUID;
    .param p2, "charact"    # Ljava/util/UUID;
    .param p3, "desc"    # Ljava/util/UUID;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;->service:Ljava/util/UUID;

    iput-object p2, p0, Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;->characteristic:Ljava/util/UUID;

    iput-object p3, p0, Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;->descriptor:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p1, Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;->service:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;->characteristic:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .local v0, "hash":I
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;->descriptor:Ljava/util/UUID;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;->descriptor:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;->service:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;->characteristic:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;->descriptor:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
