.class Lcom/android/bluetooth/ble/GattPeripheral$5;
.super Ljava/lang/Object;
.source "GattPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/GattPeripheral;->discoverServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/GattPeripheral;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/GattPeripheral$5;->this$0:Lcom/android/bluetooth/ble/GattPeripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral$5;->this$0:Lcom/android/bluetooth/ble/GattPeripheral;

    const/4 v1, 0x1

    # invokes: Lcom/android/bluetooth/ble/GattPeripheral;->GattCB_onServiceDiscovered(Z)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/ble/GattPeripheral;->access$200(Lcom/android/bluetooth/ble/GattPeripheral;Z)V

    return-void
.end method
