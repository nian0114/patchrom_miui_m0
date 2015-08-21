.class Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;
.super Landroid/bluetooth/IBluetoothMap$Stub;
.source "BluetoothMapService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothMapBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/map/BluetoothMapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 751
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothMap$Stub;-><init>()V

    .line 753
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->mService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 754
    return-void
.end method

.method private getService()Lcom/android/bluetooth/map/BluetoothMapService;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 739
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 740
    const-string v1, "BluetoothMapService"

    const-string v2, "MAP call not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_0
    :goto_0
    return-object v0

    .line 744
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->mService:Lcom/android/bluetooth/map/BluetoothMapService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->mService:Lcom/android/bluetooth/map/BluetoothMapService;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->isAvailable()Z
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1600(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->mService:Lcom/android/bluetooth/map/BluetoothMapService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->mService:Lcom/android/bluetooth/map/BluetoothMapService;

    goto :goto_0
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->mService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 758
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 785
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 786
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_0

    .line 787
    :cond_0
    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 793
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 794
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 771
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 773
    :goto_0
    return-object v1

    .line 772
    :cond_0
    const-string v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClient() - returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 800
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 801
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 813
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 814
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 815
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 807
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 808
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 825
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 826
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 827
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 764
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 765
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v1

    goto :goto_0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 778
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 779
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_1

    .line 780
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 820
    .local v0, "service":Lcom/android/bluetooth/map/BluetoothMapService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 821
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0
.end method
