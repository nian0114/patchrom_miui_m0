.class public Lcom/miui/whetstone/WhetstoneResultBinder;
.super Landroid/os/Binder;
.source "WhetstoneResultBinder.java"

# interfaces
.implements Lcom/miui/whetstone/IWhetstoneResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstoneResult;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 15
    if-nez p0, :cond_1

    .line 16
    const/4 v0, 0x0

    .line 24
    :cond_0
    :goto_0
    return-object v0

    .line 18
    :cond_1
    const-string v1, "com.miui.whetstone.IWhetstoneResult"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/IWhetstoneResult;

    .line 20
    .local v0, "in":Lcom/miui/whetstone/IWhetstoneResult;
    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/miui/whetstone/WhetstoneResultProxy;

    .end local v0    # "in":Lcom/miui/whetstone/IWhetstoneResult;
    invoke-direct {v0, p0}, Lcom/miui/whetstone/WhetstoneResultProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 49
    return-object p0
.end method

.method public onResult(Lcom/miui/whetstone/WhetstoneResult;)V
    .locals 0
    .param p1, "result"    # Lcom/miui/whetstone/WhetstoneResult;

    .prologue
    .line 29
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
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
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 37
    :pswitch_0
    const-string v1, "com.miui.whetstone.IWhetstoneResult"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/miui/whetstone/WhetstoneResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/WhetstoneResult;

    .line 39
    .local v0, "result":Lcom/miui/whetstone/WhetstoneResult;
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/WhetstoneResultBinder;->onResult(Lcom/miui/whetstone/WhetstoneResult;)V

    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 41
    const/4 v1, 0x1

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
