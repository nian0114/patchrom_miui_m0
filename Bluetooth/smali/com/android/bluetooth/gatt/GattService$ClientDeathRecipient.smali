.class Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "GattService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field mAppIf:I

.field final synthetic this$0:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/gatt/GattService;I)V
    .locals 0
    .param p2, "appIf"    # I

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p2, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    .line 227
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    # getter for: Lcom/android/bluetooth/gatt/GattService;->mAdvertisingClientIf:I
    invoke-static {v0}, Lcom/android/bluetooth/gatt/GattService;->access$000(Lcom/android/bluetooth/gatt/GattService;)I

    move-result v0

    iget v1, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    if-ne v0, v1, :cond_0

    .line 231
    .line 232
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->stopAdvertising(Z)V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    iget v1, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->unregisterClient(I)V

    .line 237
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    iget v1, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->stopScan(IZ)V

    goto :goto_0
.end method
