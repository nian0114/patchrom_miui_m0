.class Lcom/android/bluetooth/ble/app/MiKeyDevice$2;
.super Ljava/lang/Object;
.source "MiKeyDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/app/MiKeyDevice;->onDeviceReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/app/MiKeyDevice;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/app/MiKeyDevice;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice$2;->this$0:Lcom/android/bluetooth/ble/app/MiKeyDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice$2;->this$0:Lcom/android/bluetooth/ble/app/MiKeyDevice;

    iget-object v0, v0, Lcom/android/bluetooth/ble/app/MiKeyDevice;->mProfile:Lmiui/bluetooth/ble/MiBleProfile;

    const/16 v1, 0x6b

    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice$2;->this$0:Lcom/android/bluetooth/ble/app/MiKeyDevice;

    invoke-virtual {v0, v1, v2}, Lmiui/bluetooth/ble/MiBleProfile;->registerPropertyNotifyCallback(ILmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;)Z

    return-void
.end method
