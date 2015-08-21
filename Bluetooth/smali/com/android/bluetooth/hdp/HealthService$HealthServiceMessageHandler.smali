.class final Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;
.super Landroid/os/Handler;
.source "HealthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hdp/HealthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HealthServiceMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hdp/HealthService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    .line 145
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/os/Looper;Lcom/android/bluetooth/hdp/HealthService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/hdp/HealthService;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/bluetooth/hdp/HealthService$1;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;-><init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HealthService Handler msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$200(Lcom/android/bluetooth/hdp/HealthService;Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 289
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 154
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 156
    .local v5, "appConfig":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    # getter for: Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->access$300(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    .line 157
    .local v14, "appInfo":Lcom/android/bluetooth/hdp/HealthService$AppInfo;
    if-eqz v14, :cond_0

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getRole()I

    move-result v6

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->convertRoleToHal(I)I
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$400(Lcom/android/bluetooth/hdp/HealthService;I)I

    move-result v21

    .line 159
    .local v21, "halRole":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getChannelType()I

    move-result v6

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->convertChannelTypeToHal(I)I
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$500(Lcom/android/bluetooth/hdp/HealthService;I)I

    move-result v20

    .line 163
    .local v20, "halChannelType":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getDataType()I

    move-result v6

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getName()Ljava/lang/String;

    move-result-object v7

    move/from16 v0, v21

    move/from16 v1, v20

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->registerHealthAppNative(IILjava/lang/String;I)I
    invoke-static {v3, v6, v0, v7, v1}, Lcom/android/bluetooth/hdp/HealthService;->access$600(Lcom/android/bluetooth/hdp/HealthService;IILjava/lang/String;I)I

    move-result v13

    .line 165
    .local v13, "appId":I
    const/4 v3, -0x1

    if-ne v13, v3, :cond_1

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    const/4 v6, 0x1

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->callStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    invoke-static {v3, v5, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$700(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    .line 168
    # invokes: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->cleanup()V
    invoke-static {v14}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$100(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    # getter for: Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->access$300(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 172
    :cond_1
    new-instance v3, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-direct {v3, v6, v5}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;-><init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;)V

    # setter for: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;
    invoke-static {v14, v3}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$802(Lcom/android/bluetooth/hdp/HealthService$AppInfo;Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;)Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    .line 173
    # getter for: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mCallback:Landroid/bluetooth/IBluetoothHealthCallback;
    invoke-static {v14}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$900(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)Landroid/bluetooth/IBluetoothHealthCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothHealthCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 175
    .local v15, "binder":Landroid/os/IBinder;
    :try_start_0
    # getter for: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;
    invoke-static {v14}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$800(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v15, v3, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_1
    # setter for: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mAppId:I
    invoke-static {v14, v13}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$1002(Lcom/android/bluetooth/hdp/HealthService$AppInfo;I)I

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    const/4 v6, 0x0

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->callStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    invoke-static {v3, v5, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$700(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    goto/16 :goto_0

    .line 176
    :catch_0
    move-exception v19

    .line 177
    .local v19, "e":Landroid/os/RemoteException;
    const-string v3, "HealthService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LinktoDeath Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 187
    .end local v5    # "appConfig":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v13    # "appId":I
    .end local v14    # "appInfo":Lcom/android/bluetooth/hdp/HealthService$AppInfo;
    .end local v15    # "binder":Landroid/os/IBinder;
    .end local v19    # "e":Landroid/os/RemoteException;
    .end local v20    # "halChannelType":I
    .end local v21    # "halRole":I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 189
    .restart local v5    # "appConfig":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    # getter for: Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->access$300(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    # getter for: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mAppId:I
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$1000(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)I

    move-result v13

    .line 190
    .restart local v13    # "appId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->unregisterHealthAppNative(I)Z
    invoke-static {v3, v13}, Lcom/android/bluetooth/hdp/HealthService;->access$1100(Lcom/android/bluetooth/hdp/HealthService;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    const-string v3, "HealthService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to unregister application: id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    const/4 v6, 0x3

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->callStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    invoke-static {v3, v5, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$700(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    goto/16 :goto_0

    .line 199
    .end local v5    # "appConfig":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v13    # "appId":I
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    .line 200
    .local v16, "chan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1200(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v18

    .line 201
    .local v18, "devAddr":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    # getter for: Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->access$300(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1300(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    # getter for: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mAppId:I
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$1000(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)I

    move-result v13

    .line 202
    .restart local v13    # "appId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, v18

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->connectChannelNative([BI)I
    invoke-static {v3, v0, v13}, Lcom/android/bluetooth/hdp/HealthService;->access$1500(Lcom/android/bluetooth/hdp/HealthService;[BI)I

    move-result v3

    move-object/from16 v0, v16

    # setter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1402(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;I)I

    .line 203
    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1400(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1300(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v3

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1200(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1600(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1400(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v8

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/bluetooth/hdp/HealthService;->access$1700(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1300(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v3

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1200(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1600(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1400(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v8

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/bluetooth/hdp/HealthService;->access$1700(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    goto/16 :goto_0

    .line 217
    .end local v13    # "appId":I
    .end local v16    # "chan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    .end local v18    # "devAddr":[B
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    .line 218
    .restart local v16    # "chan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1400(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v6

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->disconnectChannelNative(I)Z
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$1800(Lcom/android/bluetooth/hdp/HealthService;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1300(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v3

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1200(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1600(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1400(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v8

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/bluetooth/hdp/HealthService;->access$1700(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1300(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v3

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1200(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x3

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1600(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1400(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v8

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/bluetooth/hdp/HealthService;->access$1700(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    goto/16 :goto_0

    .line 232
    .end local v16    # "chan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->findAppConfigByAppId(I)Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$1900(Lcom/android/bluetooth/hdp/HealthService;I)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v5

    .line 233
    .restart local v5    # "appConfig":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    if-eqz v5, :cond_0

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->convertHalRegStatus(I)I
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$2000(Lcom/android/bluetooth/hdp/HealthService;I)I

    move-result v22

    .line 236
    .local v22, "regStatus":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move/from16 v0, v22

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->callStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    invoke-static {v3, v5, v0}, Lcom/android/bluetooth/hdp/HealthService;->access$700(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    .line 237
    const/4 v3, 0x1

    move/from16 v0, v22

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    move/from16 v0, v22

    if-ne v0, v3, :cond_0

    .line 240
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    # getter for: Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->access$300(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    .line 241
    .restart local v14    # "appInfo":Lcom/android/bluetooth/hdp/HealthService$AppInfo;
    # invokes: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->cleanup()V
    invoke-static {v14}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$100(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    # getter for: Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->access$300(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 248
    .end local v5    # "appConfig":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v14    # "appInfo":Lcom/android/bluetooth/hdp/HealthService$AppInfo;
    .end local v22    # "regStatus":I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;

    .line 249
    .local v17, "channelStateEvent":Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mChannelId:I

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->findChannelById(I)Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$2100(Lcom/android/bluetooth/hdp/HealthService;I)Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    move-result-object v2

    .line 250
    .local v2, "chan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mAppId:I

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->findAppConfigByAppId(I)Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$1900(Lcom/android/bluetooth/hdp/HealthService;I)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v5

    .line 253
    .restart local v5    # "appConfig":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mState:I

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->convertHalChannelState(I)I
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$2200(Lcom/android/bluetooth/hdp/HealthService;I)I

    move-result v9

    .line 254
    .local v9, "newState":I
    if-nez v9, :cond_3

    if-nez v5, :cond_3

    .line 256
    const-string v3, "HealthService"

    const-string v6, "Disconnected for non existing app"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 259
    :cond_3
    if-nez v2, :cond_4

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mAddr:[B

    # invokes: Lcom/android/bluetooth/btservice/ProfileService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$2300(Lcom/android/bluetooth/hdp/HealthService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 263
    .local v4, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    .end local v2    # "chan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getChannelType()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;-><init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;ILcom/android/bluetooth/hdp/HealthService$1;)V

    .line 264
    .restart local v2    # "chan":Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mChannelId:I

    # setter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static {v2, v3}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1402(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;I)I

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    # getter for: Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->access$2500(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mState:I

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->convertHalChannelState(I)I
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$2200(Lcom/android/bluetooth/hdp/HealthService;I)I

    move-result v9

    .line 268
    const/4 v3, 0x2

    if-ne v9, v3, :cond_5

    .line 270
    :try_start_1
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    # setter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static {v2, v3}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1602(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1300(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v7

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1200(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mState:I
    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$2600(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v10

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1600(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    # getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1400(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v12

    # invokes: Lcom/android/bluetooth/hdp/HealthService;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    invoke-static/range {v6 .. v12}, Lcom/android/bluetooth/hdp/HealthService;->access$1700(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    .line 282
    # setter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mState:I
    invoke-static {v2, v9}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$2602(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;I)I

    .line 283
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mState:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    # getter for: Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->access$2500(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 271
    :catch_1
    move-exception v19

    .line 272
    .local v19, "e":Ljava/io/IOException;
    const-string v3, "HealthService"

    const-string v6, "failed to dup ParcelFileDescriptor"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 278
    .end local v19    # "e":Ljava/io/IOException;
    :cond_5
    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static {v2, v3}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1602(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    goto :goto_2

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
