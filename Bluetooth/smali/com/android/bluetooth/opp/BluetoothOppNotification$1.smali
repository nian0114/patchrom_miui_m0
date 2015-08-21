.class Lcom/android/bluetooth/opp/BluetoothOppNotification$1;
.super Landroid/os/Handler;
.source "BluetoothOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 183
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$000(Lcom/android/bluetooth/opp/BluetoothOppNotification;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$100(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    move-result-object v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$102(Lcom/android/bluetooth/opp/BluetoothOppNotification;Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    .line 173
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$100(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 175
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$200(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$200(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 180
    :cond_0
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 176
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$000(Lcom/android/bluetooth/opp/BluetoothOppNotification;)I

    move-result v0

    if-lez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$200(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$200(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
