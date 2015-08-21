.class Lcom/android/bluetooth/ble/app/MiKeyDevice$1;
.super Lmiui/bluetooth/ble/IBleEventCallback$Stub;
.source "MiKeyDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/app/MiKeyDevice;
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
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice$1;->this$0:Lcom/android/bluetooth/ble/app/MiKeyDevice;

    invoke-direct {p0}, Lmiui/bluetooth/ble/IBleEventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;I[B)Z
    .locals 7
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice$1;->this$0:Lcom/android/bluetooth/ble/app/MiKeyDevice;

    invoke-static {p2}, Lcom/android/bluetooth/ble/app/BleSettings;->getBleEventSettingKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/ble/app/MiKeyDevice;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "pkg":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice$1;->this$0:Lcom/android/bluetooth/ble/app/MiKeyDevice;

    # getter for: Lcom/android/bluetooth/ble/app/MiKeyDevice;->mHostApp:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/bluetooth/ble/app/MiKeyDevice;->access$000(Lcom/android/bluetooth/ble/app/MiKeyDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v3, 0x1b

    invoke-static {v3}, Lcom/android/bluetooth/ble/Utils;->simulateKey(I)V

    move v3, v4

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice$1;->this$0:Lcom/android/bluetooth/ble/app/MiKeyDevice;

    iget-object v3, v3, Lcom/android/bluetooth/ble/app/MiKeyDevice;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/android/bluetooth/ble/Utils;->openCameraApp(Landroid/content/Context;I)V

    move v3, v4

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice$1;->this$0:Lcom/android/bluetooth/ble/app/MiKeyDevice;

    iget-object v3, v3, Lcom/android/bluetooth/ble/app/MiKeyDevice;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;

    invoke-direct {v0, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v0, "alertIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice$1;->this$0:Lcom/android/bluetooth/ble/app/MiKeyDevice;

    iget-object v3, v3, Lcom/android/bluetooth/ble/app/MiKeyDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v3, v4

    goto :goto_0

    .end local v0    # "alertIntent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "miui.bluetooth.BLE_EVENT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "miui.bluetooth.extras.DEVICE"

    iget-object v5, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice$1;->this$0:Lcom/android/bluetooth/ble/app/MiKeyDevice;

    iget-object v5, v5, Lcom/android/bluetooth/ble/app/MiKeyDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "miui.bluetooth.extras.EVENT"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice$1;->this$0:Lcom/android/bluetooth/ble/app/MiKeyDevice;

    iget-object v4, v4, Lcom/android/bluetooth/ble/app/MiKeyDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
