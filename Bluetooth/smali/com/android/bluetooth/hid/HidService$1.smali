.class Lcom/android/bluetooth/hid/HidService$1;
.super Landroid/os/Handler;
.source "HidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hid/HidService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hid/HidService;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x3

    const/4 v4, 0x0

    .line 148
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 272
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 151
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 152
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v12

    # invokes: Lcom/android/bluetooth/hid/HidService;->connectHidNative([B)Z
    invoke-static {v11, v12}, Lcom/android/bluetooth/hid/HidService;->access$000(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v11

    if-nez v11, :cond_1

    .line 153
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v11, v2, v13}, Lcom/android/bluetooth/hid/HidService;->access$100(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 154
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v11, v2, v4}, Lcom/android/bluetooth/hid/HidService;->access$100(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # setter for: Lcom/android/bluetooth/hid/HidService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v11, v2}, Lcom/android/bluetooth/hid/HidService;->access$202(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 162
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 163
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v12

    # invokes: Lcom/android/bluetooth/hid/HidService;->disconnectHidNative([B)Z
    invoke-static {v11, v12}, Lcom/android/bluetooth/hid/HidService;->access$300(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v11

    if-nez v11, :cond_0

    .line 164
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v11, v2, v13}, Lcom/android/bluetooth/hid/HidService;->access$100(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 165
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v11, v2, v4}, Lcom/android/bluetooth/hid/HidService;->access$100(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 172
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_3
    iget-object v12, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, [B

    check-cast v11, [B

    # invokes: Lcom/android/bluetooth/btservice/ProfileService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v12, v11}, Lcom/android/bluetooth/hid/HidService;->access$400(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 173
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 174
    .local v3, "halState":I
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # getter for: Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;
    invoke-static {v11}, Lcom/android/bluetooth/hid/HidService;->access$500(Lcom/android/bluetooth/hid/HidService;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 175
    .local v5, "prevStateInteger":Ljava/lang/Integer;
    if-nez v5, :cond_2

    .line 179
    .local v4, "prevState":I
    :goto_1
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v11, v2}, Lcom/android/bluetooth/hid/HidService;->access$600(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 183
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v12

    # invokes: Lcom/android/bluetooth/hid/HidService;->disconnectHidNative([B)Z
    invoke-static {v11, v12}, Lcom/android/bluetooth/hid/HidService;->access$300(Lcom/android/bluetooth/hid/HidService;[B)Z

    .line 187
    :goto_2
    const/4 v11, 0x1

    if-eq v3, v11, :cond_4

    .line 188
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    const/4 v12, 0x0

    # setter for: Lcom/android/bluetooth/hid/HidService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v11, v12}, Lcom/android/bluetooth/hid/HidService;->access$202(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 175
    .end local v4    # "prevState":I
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    .line 185
    .restart local v4    # "prevState":I
    :cond_3
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->convertHalState(I)I
    invoke-static {v3}, Lcom/android/bluetooth/hid/HidService;->access$700(I)I

    move-result v12

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v11, v2, v12}, Lcom/android/bluetooth/hid/HidService;->access$100(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_2

    .line 193
    :cond_4
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # setter for: Lcom/android/bluetooth/hid/HidService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v11, v2}, Lcom/android/bluetooth/hid/HidService;->access$202(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_0

    .line 199
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "halState":I
    .end local v4    # "prevState":I
    .end local v5    # "prevStateInteger":Ljava/lang/Integer;
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 200
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v12

    # invokes: Lcom/android/bluetooth/hid/HidService;->getProtocolModeNative([B)Z
    invoke-static {v11, v12}, Lcom/android/bluetooth/hid/HidService;->access$800(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v11

    if-nez v11, :cond_0

    .line 201
    const-string v11, "HidService"

    const-string v12, "Error: get protocol mode native returns false"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 208
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_5
    iget-object v12, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, [B

    check-cast v11, [B

    # invokes: Lcom/android/bluetooth/btservice/ProfileService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v12, v11}, Lcom/android/bluetooth/hid/HidService;->access$900(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 209
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 210
    .local v6, "protocolMode":I
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastProtocolMode(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v11, v2, v6}, Lcom/android/bluetooth/hid/HidService;->access$1000(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 215
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "protocolMode":I
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 216
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v12

    # invokes: Lcom/android/bluetooth/hid/HidService;->virtualUnPlugNative([B)Z
    invoke-static {v11, v12}, Lcom/android/bluetooth/hid/HidService;->access$1100(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v11

    if-nez v11, :cond_0

    .line 217
    const-string v11, "HidService"

    const-string v12, "Error: virtual unplug native returns false"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 223
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 224
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    iget v11, p1, Landroid/os/Message;->arg1:I

    int-to-byte v6, v11

    .line 225
    .local v6, "protocolMode":B
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sending set protocol mode("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/bluetooth/hid/HidService;->access$1200(Lcom/android/bluetooth/hid/HidService;Ljava/lang/String;)V

    .line 226
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v12

    # invokes: Lcom/android/bluetooth/hid/HidService;->setProtocolModeNative([BB)Z
    invoke-static {v11, v12, v6}, Lcom/android/bluetooth/hid/HidService;->access$1300(Lcom/android/bluetooth/hid/HidService;[BB)Z

    move-result v11

    if-nez v11, :cond_0

    .line 227
    const-string v11, "HidService"

    const-string v12, "Error: set protocol mode native returns false"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 233
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "protocolMode":B
    :pswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 234
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 235
    .local v1, "data":Landroid/os/Bundle;
    const-string v11, "android.bluetooth.BluetoothInputDevice.extra.REPORT_TYPE"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v9

    .line 236
    .local v9, "reportType":B
    const-string v11, "android.bluetooth.BluetoothInputDevice.extra.REPORT_ID"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v8

    .line 237
    .local v8, "reportId":B
    const-string v11, "android.bluetooth.BluetoothInputDevice.extra.REPORT_BUFFER_SIZE"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 238
    .local v0, "bufferSize":I
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v12

    # invokes: Lcom/android/bluetooth/hid/HidService;->getReportNative([BBBI)Z
    invoke-static {v11, v12, v9, v8, v0}, Lcom/android/bluetooth/hid/HidService;->access$1400(Lcom/android/bluetooth/hid/HidService;[BBBI)Z

    move-result v11

    if-nez v11, :cond_0

    .line 239
    const-string v11, "HidService"

    const-string v12, "Error: get report native returns false"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 245
    .end local v0    # "bufferSize":I
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "reportId":B
    .end local v9    # "reportType":B
    :pswitch_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 246
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 247
    .restart local v1    # "data":Landroid/os/Bundle;
    const-string v11, "android.bluetooth.BluetoothInputDevice.extra.REPORT_TYPE"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v9

    .line 248
    .restart local v9    # "reportType":B
    const-string v11, "android.bluetooth.BluetoothInputDevice.extra.REPORT"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 249
    .local v7, "report":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v12

    # invokes: Lcom/android/bluetooth/hid/HidService;->setReportNative([BBLjava/lang/String;)Z
    invoke-static {v11, v12, v9, v7}, Lcom/android/bluetooth/hid/HidService;->access$1500(Lcom/android/bluetooth/hid/HidService;[BBLjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 250
    const-string v11, "HidService"

    const-string v12, "Error: set report native returns false"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 256
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "report":Ljava/lang/String;
    .end local v9    # "reportType":B
    :pswitch_a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 257
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 258
    .restart local v1    # "data":Landroid/os/Bundle;
    const-string v11, "android.bluetooth.BluetoothInputDevice.extra.REPORT"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 259
    .restart local v7    # "report":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v12

    # invokes: Lcom/android/bluetooth/hid/HidService;->sendDataNative([BLjava/lang/String;)Z
    invoke-static {v11, v12, v7}, Lcom/android/bluetooth/hid/HidService;->access$1600(Lcom/android/bluetooth/hid/HidService;[BLjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 260
    const-string v11, "HidService"

    const-string v12, "Error: send data native returns false"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 266
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "report":Ljava/lang/String;
    :pswitch_b
    iget-object v12, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, [B

    check-cast v11, [B

    # invokes: Lcom/android/bluetooth/btservice/ProfileService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v12, v11}, Lcom/android/bluetooth/hid/HidService;->access$1700(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 267
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 268
    .local v10, "status":I
    iget-object v11, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastVirtualUnplugStatus(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v11, v2, v10}, Lcom/android/bluetooth/hid/HidService;->access$1800(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
