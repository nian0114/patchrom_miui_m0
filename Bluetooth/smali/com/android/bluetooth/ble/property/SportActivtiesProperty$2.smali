.class Lcom/android/bluetooth/ble/property/SportActivtiesProperty$2;
.super Ljava/lang/Object;
.source "SportActivtiesProperty.java"

# interfaces
.implements Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/property/SportActivtiesProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/property/SportActivtiesProperty;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/property/SportActivtiesProperty;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty$2;->this$0:Lcom/android/bluetooth/ble/property/SportActivtiesProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify([B)V
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const-string v1, "SportActivtiesProperty"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty$2;->this$0:Lcom/android/bluetooth/ble/property/SportActivtiesProperty;

    iget-object v1, v1, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v2, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty$2;->this$0:Lcom/android/bluetooth/ble/property/SportActivtiesProperty;

    # getter for: Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mReadTimemout:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->access$200(Lcom/android/bluetooth/ble/property/SportActivtiesProperty;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/ble/GattPeripheral;->removeTask(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty$2;->this$0:Lcom/android/bluetooth/ble/property/SportActivtiesProperty;

    # getter for: Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceOutputStream:Ljava/io/PipedOutputStream;
    invoke-static {v1}, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->access$000(Lcom/android/bluetooth/ble/property/SportActivtiesProperty;)Ljava/io/PipedOutputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty$2;->this$0:Lcom/android/bluetooth/ble/property/SportActivtiesProperty;

    # getter for: Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceOutputStream:Ljava/io/PipedOutputStream;
    invoke-static {v1}, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->access$000(Lcom/android/bluetooth/ble/property/SportActivtiesProperty;)Ljava/io/PipedOutputStream;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty$2;->this$0:Lcom/android/bluetooth/ble/property/SportActivtiesProperty;

    iget-object v1, v1, Lcom/android/bluetooth/ble/property/BleProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v2, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty$2;->this$0:Lcom/android/bluetooth/ble/property/SportActivtiesProperty;

    # getter for: Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mReadTimemout:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->access$200(Lcom/android/bluetooth/ble/property/SportActivtiesProperty;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/bluetooth/ble/GattPeripheral;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
