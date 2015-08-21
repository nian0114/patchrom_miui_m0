.class Lcom/android/bluetooth/ble/property/SportActivtiesProperty$1;
.super Ljava/lang/Object;
.source "SportActivtiesProperty.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty$1;->this$0:Lcom/android/bluetooth/ble/property/SportActivtiesProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-string v1, "SportActivtiesProperty"

    const-string v2, "read timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty$1;->this$0:Lcom/android/bluetooth/ble/property/SportActivtiesProperty;

    # getter for: Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceOutputStream:Ljava/io/PipedOutputStream;
    invoke-static {v1}, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->access$000(Lcom/android/bluetooth/ble/property/SportActivtiesProperty;)Ljava/io/PipedOutputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty$1;->this$0:Lcom/android/bluetooth/ble/property/SportActivtiesProperty;

    # getter for: Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->mDataSourceOutputStream:Ljava/io/PipedOutputStream;
    invoke-static {v1}, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->access$000(Lcom/android/bluetooth/ble/property/SportActivtiesProperty;)Ljava/io/PipedOutputStream;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty$1;->this$0:Lcom/android/bluetooth/ble/property/SportActivtiesProperty;

    # invokes: Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->cleanIOStream()V
    invoke-static {v1}, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;->access$100(Lcom/android/bluetooth/ble/property/SportActivtiesProperty;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
