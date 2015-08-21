.class final Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;
.super Landroid/os/Handler;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AvrcpMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/Avrcp;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/Avrcp;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    .line 267
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 268
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/Avrcp;Landroid/os/Looper;Lcom/android/bluetooth/a2dp/Avrcp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/bluetooth/a2dp/Avrcp$1;

    .prologue
    .line 265
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;-><init>(Lcom/android/bluetooth/a2dp/Avrcp;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 272
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 274
    :sswitch_0
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mClientGeneration:I
    invoke-static {v9}, Lcom/android/bluetooth/a2dp/Avrcp;->access$100(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v10, :cond_0

    .line 275
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget v11, p1, Landroid/os/Message;->arg2:I

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->updatePlayPauseState(IJ)V
    invoke-static {v10, v11, v12, v13}, Lcom/android/bluetooth/a2dp/Avrcp;->access$200(Lcom/android/bluetooth/a2dp/Avrcp;IJ)V

    goto :goto_0

    .line 280
    :sswitch_1
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mClientGeneration:I
    invoke-static {v9}, Lcom/android/bluetooth/a2dp/Avrcp;->access$100(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v10, :cond_0

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/Bundle;

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->updateMetadata(Landroid/os/Bundle;)V
    invoke-static {v10, v9}, Lcom/android/bluetooth/a2dp/Avrcp;->access$300(Lcom/android/bluetooth/a2dp/Avrcp;Landroid/os/Bundle;)V

    goto :goto_0

    .line 284
    :sswitch_2
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mClientGeneration:I
    invoke-static {v9}, Lcom/android/bluetooth/a2dp/Avrcp;->access$100(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget v10, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->updateTransportControls(I)V
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$400(Lcom/android/bluetooth/a2dp/Avrcp;I)V

    goto :goto_0

    .line 288
    :sswitch_3
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mClientGeneration:I
    invoke-static {v9}, Lcom/android/bluetooth/a2dp/Avrcp;->access$100(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v10, :cond_0

    goto :goto_0

    .line 293
    :sswitch_4
    const-string v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "New genId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", clearing = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mClientGeneration:I
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$102(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    goto :goto_0

    .line 298
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 299
    .local v0, "address":Ljava/lang/String;
    const-string v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_GET_RC_FEATURES: address="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", features="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mFeatures:I
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$502(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    .line 302
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v9}, Lcom/android/bluetooth/a2dp/Avrcp;->access$600(Lcom/android/bluetooth/a2dp/Avrcp;)Landroid/media/AudioManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    invoke-virtual {v10}, Lcom/android/bluetooth/a2dp/Avrcp;->isAbsoluteVolumeSupported()Z

    move-result v10

    invoke-virtual {v9, v0, v10}, Landroid/media/AudioManager;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 306
    .end local v0    # "address":Ljava/lang/String;
    :sswitch_6
    const-string v9, "Avrcp"

    const-string v10, "MESSAGE_GET_PLAY_STATUS"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget-object v11, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I
    invoke-static {v11}, Lcom/android/bluetooth/a2dp/Avrcp;->access$700(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v11

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->convertPlayStateToPlayStatus(I)I
    invoke-static {v10, v11}, Lcom/android/bluetooth/a2dp/Avrcp;->access$800(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    move-result v10

    iget-object v11, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mSongLengthMs:J
    invoke-static {v11}, Lcom/android/bluetooth/a2dp/Avrcp;->access$900(Lcom/android/bluetooth/a2dp/Avrcp;)J

    move-result-wide v11

    long-to-int v11, v11

    iget-object v12, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getPlayPosition()J
    invoke-static {v12}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1000(Lcom/android/bluetooth/a2dp/Avrcp;)J

    move-result-wide v12

    long-to-int v12, v12

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getPlayStatusRspNative(III)Z
    invoke-static {v9, v10, v11, v12}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1100(Lcom/android/bluetooth/a2dp/Avrcp;III)Z

    goto/16 :goto_0

    .line 315
    :sswitch_7
    iget v9, p1, Landroid/os/Message;->arg1:I

    int-to-byte v4, v9

    .line 316
    .local v4, "numAttr":B
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 317
    .local v2, "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_GET_ELEM_ATTRS:numAttr="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-array v1, v4, [I

    .line 319
    .local v1, "attrIds":[I
    new-array v8, v4, [Ljava/lang/String;

    .line 320
    .local v8, "textArray":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 321
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v1, v3

    .line 322
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    aget v10, v1, v3

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getAttributeString(I)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1200(Lcom/android/bluetooth/a2dp/Avrcp;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 320
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 324
    :cond_1
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getElementAttrRspNative(B[I[Ljava/lang/String;)Z
    invoke-static {v9, v4, v1, v8}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1300(Lcom/android/bluetooth/a2dp/Avrcp;B[I[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 328
    .end local v1    # "attrIds":[I
    .end local v2    # "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "i":I
    .end local v4    # "numAttr":B
    .end local v8    # "textArray":[Ljava/lang/String;
    :sswitch_8
    const-string v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_REGISTER_NOTIFICATION:event="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " param="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->processRegisterNotification(II)V
    invoke-static {v9, v10, v11}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1400(Lcom/android/bluetooth/a2dp/Avrcp;II)V

    goto/16 :goto_0

    .line 334
    :sswitch_9
    const-string v9, "Avrcp"

    const-string v10, "MESSAGE_PLAY_INTERVAL_TIMEOUT"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    const/4 v10, 0x1

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1502(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    .line 336
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I
    invoke-static {v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1500(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v10

    iget-object v11, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getPlayPosition()J
    invoke-static {v11}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1000(Lcom/android/bluetooth/a2dp/Avrcp;)J

    move-result-wide v11

    long-to-int v11, v11

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspPlayPosNative(II)Z
    invoke-static {v9, v10, v11}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1600(Lcom/android/bluetooth/a2dp/Avrcp;II)Z

    goto/16 :goto_0

    .line 340
    :sswitch_a
    const-string v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_VOLUME_CHANGED: volume="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ctype="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget v9, p1, Landroid/os/Message;->arg2:I

    const/16 v10, 0x9

    if-eq v9, v10, :cond_2

    iget v9, p1, Landroid/os/Message;->arg2:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_4

    .line 344
    :cond_2
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z
    invoke-static {v9}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1700(Lcom/android/bluetooth/a2dp/Avrcp;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 345
    const-string v9, "Avrcp"

    const-string v10, "Unsolicited response, ignored"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const/16 v9, 0x9

    invoke-virtual {p0, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    const/4 v10, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1702(Lcom/android/bluetooth/a2dp/Avrcp;Z)Z

    .line 350
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    const/4 v10, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mAbsVolRetryTimes:I
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1802(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    .line 352
    :cond_4
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mAbsoluteVolume:I
    invoke-static {v9}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1900(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eq v9, v10, :cond_6

    iget v9, p1, Landroid/os/Message;->arg2:I

    const/16 v10, 0x9

    if-eq v9, v10, :cond_5

    iget v9, p1, Landroid/os/Message;->arg2:I

    const/16 v10, 0xd

    if-eq v9, v10, :cond_5

    iget v9, p1, Landroid/os/Message;->arg2:I

    const/16 v10, 0xf

    if-ne v9, v10, :cond_6

    .line 355
    :cond_5
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->notifyVolumeChanged(I)V
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2000(Lcom/android/bluetooth/a2dp/Avrcp;I)V

    .line 356
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mAbsoluteVolume:I
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1902(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    goto/16 :goto_0

    .line 357
    :cond_6
    iget v9, p1, Landroid/os/Message;->arg2:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_0

    .line 358
    const-string v9, "Avrcp"

    const-string v10, "setAbsoluteVolume call rejected"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 363
    :sswitch_b
    const-string v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_ADJUST_VOLUME: direction="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z
    invoke-static {v9}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1700(Lcom/android/bluetooth/a2dp/Avrcp;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 365
    const-string v9, "Avrcp"

    const-string v10, "There is already a volume command in progress."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 369
    :cond_7
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mAbsoluteVolume:I
    invoke-static {v9}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1900(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_9

    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 370
    :cond_8
    const/16 v9, 0x7f

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mAbsoluteVolume:I
    invoke-static {v11}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1900(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v11

    iget v12, p1, Landroid/os/Message;->arg1:I

    iget-object v13, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mVolumeStep:I
    invoke-static {v13}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2100(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v13

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 372
    .local v6, "setVol":I
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->setVolumeNative(I)Z
    invoke-static {v9, v6}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2200(Lcom/android/bluetooth/a2dp/Avrcp;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 373
    const/16 v9, 0x9

    invoke-virtual {p0, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x7d0

    invoke-virtual {p0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 375
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    const/4 v10, 0x1

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1702(Lcom/android/bluetooth/a2dp/Avrcp;Z)Z

    .line 376
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mLastDirection:I
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2302(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    .line 377
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mLastSetVolume:I
    invoke-static {v9, v6}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2402(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    goto/16 :goto_0

    .line 380
    .end local v6    # "setVol":I
    :cond_9
    const-string v9, "Avrcp"

    const-string v10, "Unknown direction in MESSAGE_ADJUST_VOLUME"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 385
    :sswitch_c
    const-string v9, "Avrcp"

    const-string v10, "MESSAGE_SET_ABSOLUTE_VOLUME"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z
    invoke-static {v9}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1700(Lcom/android/bluetooth/a2dp/Avrcp;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 387
    const-string v9, "Avrcp"

    const-string v10, "There is already a volume command in progress."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 390
    :cond_a
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->setVolumeNative(I)Z
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2200(Lcom/android/bluetooth/a2dp/Avrcp;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 391
    const/16 v9, 0x9

    invoke-virtual {p0, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x7d0

    invoke-virtual {p0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 392
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    const/4 v10, 0x1

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1702(Lcom/android/bluetooth/a2dp/Avrcp;Z)Z

    .line 393
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mLastSetVolume:I
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2402(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    goto/16 :goto_0

    .line 398
    :sswitch_d
    const-string v9, "Avrcp"

    const-string v10, "MESSAGE_ABS_VOL_TIMEOUT: Volume change cmd timed out."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    const/4 v10, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1702(Lcom/android/bluetooth/a2dp/Avrcp;Z)Z

    .line 400
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mAbsVolRetryTimes:I
    invoke-static {v9}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1800(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_b

    .line 401
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    const/4 v10, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mAbsVolRetryTimes:I
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1802(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    goto/16 :goto_0

    .line 403
    :cond_b
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    const/4 v10, 0x1

    # += operator for: Lcom/android/bluetooth/a2dp/Avrcp;->mAbsVolRetryTimes:I
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1812(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    .line 404
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mLastSetVolume:I
    invoke-static {v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2400(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v10

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->setVolumeNative(I)Z
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2200(Lcom/android/bluetooth/a2dp/Avrcp;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 405
    const/16 v9, 0x9

    invoke-virtual {p0, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x7d0

    invoke-virtual {p0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 407
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    const/4 v10, 0x1

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1702(Lcom/android/bluetooth/a2dp/Avrcp;Z)Z

    goto/16 :goto_0

    .line 415
    :sswitch_e
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_f

    .line 416
    const-string v9, "Avrcp"

    const-string v10, "MESSAGE_FAST_FORWARD"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/16 v7, 0x7d0

    .line 423
    .local v7, "skipAmount":I
    :goto_2
    const/16 v9, 0xc

    invoke-virtual {p0, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mSkipAmount:I
    invoke-static {v9}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2500(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v9

    if-eq v7, v9, :cond_c

    .line 425
    const-string v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "missing release button event:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mSkipAmount:I
    invoke-static {v11}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2500(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_c
    const/16 v9, 0xc

    invoke-virtual {p0, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mSkipAmount:I
    invoke-static {v9}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2500(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v9

    if-eq v7, v9, :cond_e

    .line 430
    :cond_d
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mSkipStartTime:J
    invoke-static {v9, v10, v11}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2602(Lcom/android/bluetooth/a2dp/Avrcp;J)J

    :cond_e
    const/16 v9, 0xc

    invoke-virtual {p0, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mSkipAmount:I
    invoke-static {v9, v7}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2502(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mSkipAmount:I
    invoke-static {v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2500(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v10

    iget-object v11, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getSkipMultiplier()I
    invoke-static {v11}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2700(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v11

    mul-int/2addr v10, v11

    int-to-long v10, v10

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->changePositionBy(J)V
    invoke-static {v9, v10, v11}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2800(Lcom/android/bluetooth/a2dp/Avrcp;J)V

    const/16 v9, 0xc

    invoke-virtual {p0, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .local v5, "posMsg":Landroid/os/Message;
    const/4 v9, 0x1

    iput v9, v5, Landroid/os/Message;->arg1:I

    const-wide/16 v9, 0x190

    invoke-virtual {p0, v5, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v5    # "posMsg":Landroid/os/Message;
    .end local v7    # "skipAmount":I
    :cond_f
    const-string v9, "Avrcp"

    const-string v10, "MESSAGE_REWIND"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/16 v7, -0x7d0

    .restart local v7    # "skipAmount":I
    goto/16 :goto_2

    .line 444
    .end local v7    # "skipAmount":I
    :sswitch_f
    const-string v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_CHANGE_PLAY_POS:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mSkipAmount:I
    invoke-static {v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2500(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v10

    iget-object v11, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getSkipMultiplier()I
    invoke-static {v11}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2700(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v11

    mul-int/2addr v10, v11

    int-to-long v10, v10

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->changePositionBy(J)V
    invoke-static {v9, v10, v11}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2800(Lcom/android/bluetooth/a2dp/Avrcp;J)V

    .line 446
    iget v9, p1, Landroid/os/Message;->arg1:I

    mul-int/lit16 v9, v9, 0x190

    const/16 v10, 0x7d0

    if-ge v9, v10, :cond_0

    const/16 v9, 0xc

    invoke-virtual {p0, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .restart local v5    # "posMsg":Landroid/os/Message;
    iget v9, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v5, Landroid/os/Message;->arg1:I

    const-wide/16 v9, 0x190

    invoke-virtual {p0, v5, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v5    # "posMsg":Landroid/os/Message;
    :sswitch_10
    const-string v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_SET_A2DP_AUDIO_STATE:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v9, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->updateA2dpAudioState(I)V
    invoke-static {v9, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2900(Lcom/android/bluetooth/a2dp/Avrcp;I)V

    goto/16 :goto_0

    .line 272
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_6
        0x3 -> :sswitch_7
        0x4 -> :sswitch_8
        0x5 -> :sswitch_9
        0x6 -> :sswitch_a
        0x7 -> :sswitch_b
        0x8 -> :sswitch_c
        0x9 -> :sswitch_d
        0xa -> :sswitch_e
        0xb -> :sswitch_e
        0xc -> :sswitch_f
        0xd -> :sswitch_10
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
    .end sparse-switch
.end method
