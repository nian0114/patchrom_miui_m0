.class public abstract Lcom/android/bluetooth/btservice/ProfileService;
.super Landroid/app/Service;
.source "ProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field public static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final BLUETOOTH_PRIVILEGED:Ljava/lang/String; = "android.permission.BLUETOOTH_PRIVILEGED"

.field private static final DBG:Z = false

.field private static final PROFILE_SERVICE_MODE:I = 0x2

.field private static sReferenceCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

.field private mCleaningUp:Z

.field protected mName:Ljava/lang/String;

.field protected mStartError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/btservice/ProfileService;->sReferenceCount:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    .line 72
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private doStart(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v1, "Error starting profile. BluetoothAdapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->start()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    .line 177
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    if-nez v0, :cond_2

    .line 178
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->notifyProfileServiceStateChanged(I)V

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v1, "Error starting profile. BluetoothAdapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doStop(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->stop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->notifyProfileServiceStateChanged(I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v1, "Unable to stop profile"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected cleanup()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method protected getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 2
    .param p1, "address"    # [B

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
.end method

.method protected isAvailable()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method public notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profileId"    # I
    .param p3, "newState"    # I
    .param p4, "prevState"    # I

    .prologue
    .line 205
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 206
    .local v0, "svc":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 209
    :cond_0
    return-void
.end method

.method protected notifyProfileServiceStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 197
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 198
    .local v0, "sAdapter":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileServiceStateChanged(Ljava/lang/String;I)V

    .line 201
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 106
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 107
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    .line 108
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 167
    iput-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 168
    return-void

    .line 159
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    .line 160
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->cleanup()Z

    .line 161
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    invoke-interface {v0}, Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;->cleanup()Z

    .line 163
    iput-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x2

    .line 112
    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_2

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v3, "Stopping profile service: device does not have BT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->doStop(Landroid/content/Intent;)V

    .line 139
    :cond_1
    :goto_0
    return v4

    .line 118
    :cond_2
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v3, "Permission denied!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_3
    if-nez p1, :cond_4

    .line 124
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v3, "Restarting profile service..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_4
    const-string v2, "action"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.android.bluetooth.btservice.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 130
    .local v1, "state":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 131
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v3, "Received stop request...Stopping profile..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->doStop(Landroid/content/Intent;)V

    goto :goto_0

    .line 133
    :cond_5
    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v3, "Received start request. Starting profile..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->doStart(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected abstract start()Z
.end method

.method protected abstract stop()Z
.end method
