.class Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;
.super Landroid/bluetooth/IBluetooth$Stub;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterServiceBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/btservice/AdapterService;

    .prologue
    .line 485
    invoke-direct {p0}, Landroid/bluetooth/IBluetooth$Stub;-><init>()V

    .line 486
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 487
    return-void
.end method


# virtual methods
.method public cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 708
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 709
    const-string v2, "BluetoothAdapterService"

    const-string v3, "cancelBondProcess(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_0
    :goto_0
    return v1

    .line 713
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 714
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public cancelDiscovery()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 651
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 652
    const-string v2, "BluetoothAdapterService"

    const-string v3, "cancelDiscovery(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    :goto_0
    return v1

    .line 656
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 657
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelDiscovery()Z

    move-result v1

    goto :goto_0
.end method

.method public cleanup()Z
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 490
    const/4 v0, 0x1

    return v0
.end method

.method public configHciSnoopLog(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 878
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 880
    const-string v2, "BluetoothAdapterService"

    const-string v3, "configHciSnoopLog(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_0
    :goto_0
    return v1

    .line 884
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 885
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->configHciSnoopLog(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # I
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "port"    # I
    .param p5, "flag"    # I

    .prologue
    const/4 v1, 0x0

    .line 855
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 856
    const-string v2, "BluetoothAdapterService"

    const-string v3, "connectSocket(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_0
    :goto_0
    return-object v1

    .line 860
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 861
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 862
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method public createBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 697
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 698
    const-string v2, "BluetoothAdapterService"

    const-string v3, "createBond(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_0
    :goto_0
    return v1

    .line 702
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 703
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->createBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "type"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "port"    # I
    .param p5, "flag"    # I

    .prologue
    const/4 v1, 0x0

    .line 867
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 868
    const-string v2, "BluetoothAdapterService"

    const-string v3, "createSocketChannel(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_0
    :goto_0
    return-object v1

    .line 872
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 873
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 874
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method public disable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 538
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 540
    const-string v2, "BluetoothAdapterService"

    const-string v3, "disable(): not allowed for non-active user and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    :goto_0
    return v1

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 545
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->disable()Z

    move-result v1

    goto :goto_0
.end method

.method public enable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 514
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 516
    const-string v2, "BluetoothAdapterService"

    const-string v3, "enable(): not allowed for non-active user and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    :goto_0
    return v1

    .line 520
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 521
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->enable()Z

    move-result v1

    goto :goto_0
.end method

.method public enableNoAutoConnect()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 526
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 528
    const-string v2, "BluetoothAdapterService"

    const-string v3, "enableNoAuto(): not allowed for non-active user and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    :goto_0
    return v1

    .line 532
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 533
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->enableNoAutoConnect()Z

    move-result v1

    goto :goto_0
.end method

.method public fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 803
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 804
    const-string v2, "BluetoothAdapterService"

    const-string v3, "fetchRemoteUuids(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_0
    :goto_0
    return v1

    .line 808
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 809
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAdapterConnectionState()I
    .locals 2

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 681
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 682
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterConnectionState()I

    move-result v1

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 550
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 552
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getAddress(): not allowed for non-active user and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    :goto_0
    return-object v1

    .line 556
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 557
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBondState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 732
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/16 v1, 0xa

    .line 733
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getBondedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 674
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/bluetooth/BluetoothDevice;

    .line 675
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    goto :goto_0
.end method

.method public getDiscoverableTimeout()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 618
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 619
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getDiscoverableTimeout(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    :goto_0
    return v1

    .line 623
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 624
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDiscoverableTimeout()I

    move-result v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 573
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 575
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getName(): not allowed for non-active user and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_0
    :goto_0
    return-object v1

    .line 579
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 580
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getProfileConnectionState(I)I
    .locals 4
    .param p1, "profile"    # I

    .prologue
    const/4 v1, 0x0

    .line 686
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 687
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getProfileConnectionState: not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_0
    :goto_0
    return v1

    .line 691
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 692
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getProfileConnectionState(I)I

    move-result v1

    goto :goto_0
.end method

.method public getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 759
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 760
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getRemoteAlias(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_0
    :goto_0
    return-object v1

    .line 764
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 765
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 781
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 782
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getRemoteClass(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_0
    :goto_0
    return v1

    .line 786
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 787
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 737
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 738
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getRemoteName(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_0
    :goto_0
    return-object v1

    .line 742
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 743
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRemoteType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 748
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 749
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getRemoteType(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_0
    :goto_0
    return v1

    .line 753
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 754
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 792
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 793
    const-string v1, "BluetoothAdapterService"

    const-string v2, "getRemoteUuids(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-array v1, v3, [Landroid/os/ParcelUuid;

    .line 799
    :goto_0
    return-object v1

    .line 797
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 798
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    new-array v1, v3, [Landroid/os/ParcelUuid;

    goto :goto_0

    .line 799
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v1

    goto :goto_0
.end method

.method public getScanMode()I
    .locals 4

    .prologue
    const/16 v1, 0x14

    .line 596
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 597
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getScanMode(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_0
    :goto_0
    return v1

    .line 601
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 602
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getScanMode()I

    move-result v1

    goto :goto_0
.end method

.method public getService()Lcom/android/bluetooth/btservice/AdapterService;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->isAvailable()Z
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 497
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 509
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/16 v1, 0xa

    .line 510
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v1

    goto :goto_0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 562
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    const-string v1, "BluetoothAdapterService"

    const-string v2, "getUuids(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-array v1, v3, [Landroid/os/ParcelUuid;

    .line 569
    :goto_0
    return-object v1

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 568
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    new-array v1, v3, [Landroid/os/ParcelUuid;

    goto :goto_0

    .line 569
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    goto :goto_0
.end method

.method public isDiscovering()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 661
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 662
    const-string v2, "BluetoothAdapterService"

    const-string v3, "isDiscovering(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    :goto_0
    return v1

    .line 666
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 667
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isDiscovering()Z

    move-result v1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 502
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 503
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method public registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothCallback;

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 891
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    .line 893
    :goto_0
    return-void

    .line 892
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V

    goto :goto_0
.end method

.method public removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 719
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 720
    const-string v2, "BluetoothAdapterService"

    const-string v3, "removeBond(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    :goto_0
    return v1

    .line 724
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 725
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "state"    # I
    .param p4, "prevState"    # I

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 849
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    .line 851
    :goto_0
    return-void

    .line 850
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_0
.end method

.method public setDiscoverableTimeout(I)Z
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    const/4 v1, 0x0

    .line 629
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 630
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setDiscoverableTimeout(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_0
    :goto_0
    return v1

    .line 634
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 635
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setDiscoverableTimeout(I)Z

    move-result v1

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 585
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 586
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setName(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_0
    :goto_0
    return v1

    .line 590
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 591
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setName(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "accept"    # Z

    .prologue
    const/4 v1, 0x0

    .line 836
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 837
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setPairingConfirmation(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_0
    :goto_0
    return v1

    .line 841
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 842
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "accept"    # Z
    .param p3, "len"    # I
    .param p4, "passkey"    # [B

    .prologue
    const/4 v1, 0x0

    .line 825
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 826
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setPasskey(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_0
    :goto_0
    return v1

    .line 830
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 831
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v1

    goto :goto_0
.end method

.method public setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "accept"    # Z
    .param p3, "len"    # I
    .param p4, "pinCode"    # [B

    .prologue
    const/4 v1, 0x0

    .line 814
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 815
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setPin(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_0
    :goto_0
    return v1

    .line 819
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 820
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v1

    goto :goto_0
.end method

.method public setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 770
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 771
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setRemoteAlias(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_0
    :goto_0
    return v1

    .line 775
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 776
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setScanMode(II)Z
    .locals 4
    .param p1, "mode"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 607
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 608
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setScanMode(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    :goto_0
    return v1

    .line 612
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 613
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setScanMode(II)Z

    move-result v1

    goto :goto_0
.end method

.method public startDiscovery()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 640
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 641
    const-string v2, "BluetoothAdapterService"

    const-string v3, "startDiscovery(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_0
    :goto_0
    return v1

    .line 645
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 646
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->startDiscovery()Z

    move-result v1

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothCallback;

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 897
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    .line 899
    :goto_0
    return-void

    .line 898
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V

    goto :goto_0
.end method
