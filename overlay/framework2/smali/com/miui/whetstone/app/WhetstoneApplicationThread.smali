.class public Lcom/miui/whetstone/app/WhetstoneApplicationThread;
.super Landroid/os/Binder;
.source "WhetstoneApplicationThread.java"

# interfaces
.implements Lcom/miui/whetstone/app/IWhetstoneApplicationThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.miui.whetstone.app.IWhetstoneApplicationThread"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/app/WhetstoneApplicationThread;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/app/IWhetstoneApplicationThread;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 18
    if-nez p0, :cond_1

    .line 19
    const/4 v0, 0x0

    .line 26
    :cond_0
    :goto_0
    return-object v0

    .line 21
    :cond_1
    const-string v1, "com.miui.whetstone.app.IWhetstoneApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/app/IWhetstoneApplicationThread;

    .line 23
    .local v0, "in":Lcom/miui/whetstone/app/IWhetstoneApplicationThread;
    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/miui/whetstone/app/WhetstoneApplicationThreadProxy;

    .end local v0    # "in":Lcom/miui/whetstone/app/IWhetstoneApplicationThread;
    invoke-direct {v0, p0}, Lcom/miui/whetstone/app/WhetstoneApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 61
    return-object p0
.end method

.method public dumpMemInfo([Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 36
    .local v0, "memInfo":Landroid/os/Debug$MemoryInfo;
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 37
    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    packed-switch p1, :pswitch_data_0

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 46
    :pswitch_0
    const-string v2, "com.miui.whetstone.app.IWhetstoneApplicationThread"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "args":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 49
    .local v1, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/app/WhetstoneApplicationThread;->dumpMemInfo([Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Landroid/os/Debug$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 52
    const/4 v2, 0x1

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
