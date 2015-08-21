.class Lcom/android/bluetooth/ble/property/UnlockProperty$2;
.super Ljava/lang/Object;
.source "UnlockProperty.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/property/UnlockProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/property/UnlockProperty;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$2;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-string v0, "UnlockProperty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAuthenticateTask times = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$2;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # getter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthenticateTimes:I
    invoke-static {v2}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$100(Lcom/android/bluetooth/ble/property/UnlockProperty;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$2;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    iget-object v0, v0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$2;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    iget-object v0, v0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/GattPeripheral;->getState()Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->READY:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$2;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$2;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    iget-object v1, v1, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    # invokes: Lcom/android/bluetooth/ble/property/UnlockProperty;->authenticate(Lcom/android/bluetooth/ble/GattPeripheral;)Z
    invoke-static {v1}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$600(Lcom/android/bluetooth/ble/GattPeripheral;)Z

    move-result v1

    # setter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthorised:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$302(Lcom/android/bluetooth/ble/property/UnlockProperty;Z)Z

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$2;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # getter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthorised:Z
    invoke-static {v0}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$300(Lcom/android/bluetooth/ble/property/UnlockProperty;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$2;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # getter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthenticateTimes:I
    invoke-static {v0}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$100(Lcom/android/bluetooth/ble/property/UnlockProperty;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$2;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    iget-object v0, v0, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/bluetooth/ble/GattPeripheral;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$2;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # operator++ for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthenticateTimes:I
    invoke-static {v0}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$108(Lcom/android/bluetooth/ble/property/UnlockProperty;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$2;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthorised:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$302(Lcom/android/bluetooth/ble/property/UnlockProperty;Z)Z

    goto :goto_0
.end method
