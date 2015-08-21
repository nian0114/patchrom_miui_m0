.class Lcom/android/bluetooth/ble/property/MiKeyProperty$1;
.super Ljava/lang/Object;
.source "MiKeyProperty.java"

# interfaces
.implements Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/property/MiKeyProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/property/MiKeyProperty;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/property/MiKeyProperty;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/property/MiKeyProperty$1;->this$0:Lcom/android/bluetooth/ble/property/MiKeyProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/MiKeyProperty$1;->this$0:Lcom/android/bluetooth/ble/property/MiKeyProperty;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/ble/property/BleProperty;->notifyData([B)V

    return-void
.end method
