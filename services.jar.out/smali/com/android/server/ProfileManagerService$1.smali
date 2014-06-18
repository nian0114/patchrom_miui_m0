.class Lcom/android/server/ProfileManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "ProfileManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ProfileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ProfileManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ProfileManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/ProfileManagerService$1;->this$0:Lcom/android/server/ProfileManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkTriggers(ILjava/lang/String;I)V
    .locals 5
    .parameter "type"
    .parameter "id"
    .parameter "newState"

    .prologue
    iget-object v3, p0, Lcom/android/server/ProfileManagerService$1;->this$0:Lcom/android/server/ProfileManagerService;

    #getter for: Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/ProfileManagerService;->access$400(Lcom/android/server/ProfileManagerService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Profile;

    .local v2, p:Landroid/app/Profile;
    invoke-virtual {v2, p1, p2}, Landroid/app/Profile;->getTrigger(ILjava/lang/String;)I

    move-result v3

    if-ne p3, v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/ProfileManagerService$1;->this$0:Lcom/android/server/ProfileManagerService;

    #getter for: Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;
    invoke-static {v3}, Lcom/android/server/ProfileManagerService;->access$500(Lcom/android/server/ProfileManagerService;)Landroid/app/Profile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/ProfileManagerService$1;->this$0:Lcom/android/server/ProfileManagerService;

    const/4 v4, 0x1

    #calls: Lcom/android/server/ProfileManagerService;->setActiveProfile(Landroid/app/Profile;Z)Z
    invoke-static {v3, v2, v4}, Lcom/android/server/ProfileManagerService;->access$600(Lcom/android/server/ProfileManagerService;Landroid/app/Profile;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ProfileService"

    const-string v4, "Could not update profile on trigger"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #p:Landroid/app/Profile;
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v4, p0, Lcom/android/server/ProfileManagerService$1;->this$0:Lcom/android/server/ProfileManagerService;

    #calls: Lcom/android/server/ProfileManagerService;->persistIfDirty()V
    invoke-static {v4}, Lcom/android/server/ProfileManagerService;->access$000(Lcom/android/server/ProfileManagerService;)V

    iget-object v4, p0, Lcom/android/server/ProfileManagerService$1;->this$0:Lcom/android/server/ProfileManagerService;

    #calls: Lcom/android/server/ProfileManagerService;->initialize()V
    invoke-static {v4}, Lcom/android/server/ProfileManagerService;->access$100(Lcom/android/server/ProfileManagerService;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v4, p0, Lcom/android/server/ProfileManagerService$1;->this$0:Lcom/android/server/ProfileManagerService;

    #calls: Lcom/android/server/ProfileManagerService;->persistIfDirty()V
    invoke-static {v4}, Lcom/android/server/ProfileManagerService;->access$000(Lcom/android/server/ProfileManagerService;)V

    goto :goto_0

    :cond_2
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v5, p0, Lcom/android/server/ProfileManagerService$1;->this$0:Lcom/android/server/ProfileManagerService;

    #calls: Lcom/android/server/ProfileManagerService;->getActiveSSID()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/ProfileManagerService;->access$200(Lcom/android/server/ProfileManagerService;)Ljava/lang/String;

    move-result-object v1

    .local v1, activeSSID:Ljava/lang/String;
    if-eqz v1, :cond_3

    const/4 v3, 0x0

    .local v3, triggerState:I
    iget-object v5, p0, Lcom/android/server/ProfileManagerService$1;->this$0:Lcom/android/server/ProfileManagerService;

    #setter for: Lcom/android/server/ProfileManagerService;->mLastConnectedSSID:Ljava/lang/String;
    invoke-static {v5, v1}, Lcom/android/server/ProfileManagerService;->access$302(Lcom/android/server/ProfileManagerService;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    iget-object v5, p0, Lcom/android/server/ProfileManagerService$1;->this$0:Lcom/android/server/ProfileManagerService;

    #getter for: Lcom/android/server/ProfileManagerService;->mLastConnectedSSID:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/ProfileManagerService;->access$300(Lcom/android/server/ProfileManagerService;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v3}, Lcom/android/server/ProfileManagerService$1;->checkTriggers(ILjava/lang/String;I)V

    goto :goto_0

    .end local v3           #triggerState:I
    :cond_3
    const/4 v3, 0x1

    .restart local v3       #triggerState:I
    goto :goto_1

    .end local v1           #activeSSID:Ljava/lang/String;
    .end local v3           #triggerState:I
    :cond_4
    const-string v6, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_5
    const-string v6, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v3, v4

    .restart local v3       #triggerState:I
    :goto_2
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4, v3}, Lcom/android/server/ProfileManagerService$1;->checkTriggers(ILjava/lang/String;I)V

    goto :goto_0

    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #triggerState:I
    :cond_6
    move v3, v5

    goto :goto_2
.end method
