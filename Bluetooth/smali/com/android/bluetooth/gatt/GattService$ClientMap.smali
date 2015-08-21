.class Lcom/android/bluetooth/gatt/GattService$ClientMap;
.super Lcom/android/bluetooth/gatt/ContextMap;
.source "GattService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/bluetooth/gatt/ContextMap",
        "<",
        "Landroid/bluetooth/IBluetoothGattCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService$ClientMap;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ContextMap;-><init>()V

    return-void
.end method
