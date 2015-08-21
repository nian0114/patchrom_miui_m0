.class public Lcom/android/bluetooth/gatt/GattService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "GattService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;,
        Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;,
        Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;,
        Lcom/android/bluetooth/gatt/GattService$ServerMap;,
        Lcom/android/bluetooth/gatt/GattService$ClientMap;
    }
.end annotation


# static fields
.field private static final ADVERTISING_FLAGS_BYTES:I = 0x3

.field private static final ADVERTISING_PACKET_MAX_BYTES:I = 0x1f

.field private static final DBG:Z = false

.field private static final DEFAULT_SCAN_INTERVAL_MILLIS:I = 0xc8

.field private static final FIELD_OVERHEAD_BYTES:I = 0x2

.field private static final FULL_UUID_BYTES:I = 0x10

.field private static final SHORT_UUID_BYTES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BtGatt.GattService"


# instance fields
.field private mAdvertisingClientIf:I

.field private mAdvertisingServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mAdvertisingState:Ljava/lang/Integer;

.field mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

.field mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

.field private final mLock:Ljava/lang/Object;

.field private mManufacturerCode:I

.field private mManufacturerData:[B

.field private mReliableQueue:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScanQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;"
        }
    .end annotation
.end field

.field mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

.field mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

.field private mServiceData:[B

.field private mServiceDeclarations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/ServiceDeclaration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 174
    invoke-static {}, Lcom/android/bluetooth/gatt/GattService;->classInitNative()V

    .line 175
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 81
    new-instance v0, Lcom/android/bluetooth/gatt/SearchQueue;

    invoke-direct {v0}, Lcom/android/bluetooth/gatt/SearchQueue;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    .line 88
    new-instance v0, Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    .line 94
    new-instance v0, Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    .line 99
    new-instance v0, Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {v0}, Lcom/android/bluetooth/gatt/HandleMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    .line 102
    iput v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingClientIf:I

    .line 104
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceData:[B

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerCode:I

    .line 106
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerData:[B

    .line 107
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mLock:Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    .line 171
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/gatt/GattService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/GattService;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingClientIf:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/gatt/GattService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/GattService;

    .prologue
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private addDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    new-instance v2, Lcom/android/bluetooth/gatt/ServiceDeclaration;

    invoke-direct {v2}, Lcom/android/bluetooth/gatt/ServiceDeclaration;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private continueSearch(II)V
    .locals 21
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1788
    if-nez p2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    invoke-virtual {v1}, Lcom/android/bluetooth/gatt/SearchQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1789
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    invoke-virtual {v1}, Lcom/android/bluetooth/gatt/SearchQueue;->pop()Lcom/android/bluetooth/gatt/SearchQueue$Entry;

    move-result-object v20

    .line 1791
    .local v20, "svc":Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    move-object/from16 v0, v20

    iget-wide v1, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charUuidLsb:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1793
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->connId:I

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcType:I

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcInstId:I

    move-object/from16 v0, v20

    iget-wide v5, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidLsb:J

    move-object/from16 v0, v20

    iget-wide v7, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidMsb:J

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetCharacteristicNative(IIIJJIJJ)V

    .line 1807
    .end local v20    # "svc":Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    :cond_0
    :goto_0
    return-void

    .line 1797
    .restart local v20    # "svc":Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    :cond_1
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->connId:I

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcType:I

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcInstId:I

    move-object/from16 v0, v20

    iget-wide v5, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidLsb:J

    move-object/from16 v0, v20

    iget-wide v7, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidMsb:J

    move-object/from16 v0, v20

    iget v9, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charInstId:I

    move-object/from16 v0, v20

    iget-wide v10, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charUuidLsb:J

    move-object/from16 v0, v20

    iget-wide v12, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charUuidMsb:J

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v18}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetDescriptorNative(IIIJJIJJIJJ)V

    goto :goto_0

    .line 1802
    .end local v20    # "svc":Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/ContextMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v19

    .line 1803
    .local v19, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v19, :cond_0

    .line 1804
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/gatt/ContextMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p2

    invoke-interface {v1, v2, v0}, Landroid/bluetooth/IBluetoothGattCallback;->onSearchComplete(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private continueServiceDeclaration(III)V
    .locals 17
    .param p1, "serverIf"    # I
    .param p2, "status"    # I
    .param p3, "srvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1810
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1885
    :cond_0
    :goto_0
    return-void

    .line 1811
    :cond_1
    const/4 v14, 0x0

    .local v14, "finished":Z
    const/4 v13, 0x0

    .local v13, "entry":Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;
    if-nez p2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->getNext()Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;

    move-result-object v13

    :cond_2
    if-eqz v13, :cond_6

    iget-byte v3, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    packed-switch v3, :pswitch_data_0

    :goto_1
    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v12

    .line 1869
    .local v12, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v12, :cond_3

    .line 1870
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v16

    .line 1872
    .local v16, "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    if-eqz v16, :cond_7

    .line 1873
    iget-object v3, v12, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v6, Landroid/os/ParcelUuid;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v0, p2

    invoke-interface {v3, v0, v4, v5, v6}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServiceAdded(IIILandroid/os/ParcelUuid;)V

    .line 1879
    .end local v16    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :cond_3
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->removePendingDeclaration()V

    .line 1881
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1882
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    goto :goto_0

    .line 1824
    .end local v12    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    :pswitch_0
    iget-boolean v3, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->advertisePreferred:Z

    if-eqz v3, :cond_4

    .line 1825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    iget-object v4, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1827
    :cond_4
    iget v5, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    iget v6, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    iget-object v3, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v7

    iget-object v3, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v9

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->getNumHandles()I

    move-result v11

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct/range {v3 .. v11}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddServiceNative(IIIJJI)V

    goto :goto_1

    .line 1835
    :pswitch_1
    iget-object v3, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    iget-object v3, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    iget v10, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    iget v11, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v3 .. v11}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddCharacteristicNative(IIJJII)V

    goto/16 :goto_1

    .line 1842
    :pswitch_2
    iget-object v3, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    iget-object v3, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    iget v10, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddDescriptorNative(IIJJI)V

    goto/16 :goto_1

    .line 1850
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget-object v4, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    iget v5, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    iget v6, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/bluetooth/gatt/HandleMap;->getServiceHandle(Ljava/util/UUID;II)I

    move-result v15

    .line 1852
    .local v15, "inclSrvc":I
    if-eqz v15, :cond_5

    .line 1853
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v15}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddIncludedServiceNative(III)V

    goto/16 :goto_1

    .line 1856
    :cond_5
    const/4 v14, 0x1

    .line 1858
    goto/16 :goto_1

    .line 1862
    .end local v15    # "inclSrvc":I
    :cond_6
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->gattServerStartServiceNative(III)V

    .line 1863
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 1876
    .restart local v12    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    .restart local v16    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :cond_7
    iget-object v3, v12, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/IBluetoothGattServerCallback;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p2

    invoke-interface {v3, v0, v4, v5, v6}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServiceAdded(IIILandroid/os/ParcelUuid;)V

    goto/16 :goto_2

    .line 1822
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private deleteServices(I)V
    .locals 7
    .param p1, "serverIf"    # I

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "handleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v5}, Lcom/android/bluetooth/gatt/HandleMap;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 1914
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/HandleMap$Entry;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 1915
    .local v1, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget v5, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget v5, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    if-ne v5, p1, :cond_0

    .line 1918
    iget v5, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1922
    .end local v1    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1923
    .local v2, "handle":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/bluetooth/gatt/GattService;->gattServerDeleteServiceNative(II)V

    goto :goto_1

    .line 1925
    .end local v2    # "handle":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method private enforcePrivilegedPermission()V
    .locals 2

    .prologue
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native gattAdvertiseNative(IZ)V
.end method

.method private native gattClientConnectNative(ILjava/lang/String;Z)V
.end method

.method private native gattClientDisconnectNative(ILjava/lang/String;I)V
.end method

.method private native gattClientExecuteWriteNative(IZ)V
.end method

.method private native gattClientGetCharacteristicNative(IIIJJIJJ)V
.end method

.method private native gattClientGetDescriptorNative(IIIJJIJJIJJ)V
.end method

.method private native gattClientGetDeviceTypeNative(Ljava/lang/String;)I
.end method

.method private native gattClientGetIncludedServiceNative(IIIJJIIJJ)V
.end method

.method private native gattClientReadCharacteristicNative(IIIJJIJJI)V
.end method

.method private native gattClientReadDescriptorNative(IIIJJIJJIJJI)V
.end method

.method private native gattClientReadRemoteRssiNative(ILjava/lang/String;)V
.end method

.method private native gattClientRefreshNative(ILjava/lang/String;)V
.end method

.method private native gattClientRegisterAppNative(JJ)V
.end method

.method private native gattClientRegisterForNotificationsNative(ILjava/lang/String;IIJJIJJZ)V
.end method

.method private native gattClientScanNative(IZ)V
.end method

.method private native gattClientSearchServiceNative(IZJJ)V
.end method

.method private native gattClientUnregisterAppNative(I)V
.end method

.method private native gattClientWriteCharacteristicNative(IIIJJIJJII[B)V
.end method

.method private native gattClientWriteDescriptorNative(IIIJJIJJIJJII[B)V
.end method

.method private native gattServerAddCharacteristicNative(IIJJII)V
.end method

.method private native gattServerAddDescriptorNative(IIJJI)V
.end method

.method private native gattServerAddIncludedServiceNative(III)V
.end method

.method private native gattServerAddServiceNative(IIIJJI)V
.end method

.method private native gattServerConnectNative(ILjava/lang/String;Z)V
.end method

.method private native gattServerDeleteServiceNative(II)V
.end method

.method private native gattServerDisconnectNative(ILjava/lang/String;I)V
.end method

.method private native gattServerRegisterAppNative(JJ)V
.end method

.method private native gattServerSendIndicationNative(III[B)V
.end method

.method private native gattServerSendNotificationNative(III[B)V
.end method

.method private native gattServerSendResponseNative(IIIIII[BI)V
.end method

.method private native gattServerStartServiceNative(III)V
.end method

.method private native gattServerStopServiceNative(II)V
.end method

.method private native gattServerUnregisterAppNative(I)V
.end method

.method private native gattSetAdvDataNative(IZZZIII[B[B[B)V
.end method

.method private native gattTestNative(IJJLjava/lang/String;IIIII)V
.end method

.method private getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ServiceDeclaration;

    monitor-exit v1

    .line 127
    :goto_0
    return-object v0

    .line 126
    :cond_0
    monitor-exit v1

    .line 127
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized getAvailableSize()I
    .locals 4

    .prologue
    .line 1761
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1762
    const/16 v0, 0x1c

    .line 1764
    .local v0, "availableSize":I
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getAdvServiceUuids()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 1765
    .local v2, "parcelUuid":Landroid/os/ParcelUuid;
    invoke-static {v2}, Landroid/bluetooth/BluetoothUuid;->isShortUuid(Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1766
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    .line 1768
    :cond_0
    add-int/lit8 v0, v0, -0x12

    goto :goto_0

    .line 1771
    .end local v2    # "parcelUuid":Landroid/os/ParcelUuid;
    :cond_1
    iget v3, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerCode:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerData:[B

    if-eqz v3, :cond_2

    .line 1772
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerData:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    .line 1774
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceData:[B

    if-eqz v3, :cond_3

    .line 1775
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceData:[B

    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    .line 1777
    :cond_3
    monitor-exit p0

    return v0

    .line 1761
    .end local v0    # "availableSize":I
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getDeviceType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1754
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetDeviceTypeNative(Ljava/lang/String;)I

    move-result v0

    .line 1755
    .local v0, "type":I
    return v0
.end method

.method private getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ServiceDeclaration;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getScanClient(IZ)Lcom/android/bluetooth/gatt/ScanClient;
    .locals 3
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z

    .prologue
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->appIf:I

    if-ne v2, p1, :cond_0

    iget-boolean v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->isServer:Z

    if-ne v2, p2, :cond_0

    .end local v0    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native initializeNative()V
.end method

.method private parseUuids([B)Ljava/util/List;
    .locals 13
    .param p1, "adv_data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    if-le v8, v12, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .local v1, "length":B
    if-nez v1, :cond_2

    .end local v1    # "length":B
    :cond_1
    return-object v7

    .restart local v1    # "length":B
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .local v6, "type":B
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :goto_1
    :pswitch_1
    if-lt v1, v12, :cond_0

    const-string v8, "%08x-0000-1000-8000-00805f9b34fb"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v1, -0x2

    int-to-byte v1, v8

    goto :goto_1

    :goto_2
    :pswitch_2
    const/16 v8, 0x10

    if-lt v1, v8, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .local v2, "lsb":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .local v4, "msb":J
    new-instance v8, Ljava/util/UUID;

    invoke-direct {v8, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v1, -0x10

    int-to-byte v1, v8

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private removePendingDeclaration()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeScanClient(IZ)V
    .locals 3
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z

    .prologue
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->appIf:I

    if-ne v2, p1, :cond_0

    iget-boolean v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->isServer:Z

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .end local v0    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    :cond_1
    return-void
.end method

.method private stopNextService(II)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/HandleMap;->getEntries()Ljava/util/List;

    move-result-object v0

    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/HandleMap$Entry;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .local v1, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    if-ne v3, p1, :cond_0

    iget-boolean v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/gatt/GattService;->gattServerStopServiceNative(II)V

    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/HandleMap$Entry;>;"
    .end local v1    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method addCharacteristic(ILjava/util/UUID;II)V
    .locals 2
    .param p1, "serverIf"    # I
    .param p2, "charUuid"    # Ljava/util/UUID;
    .param p3, "properties"    # I
    .param p4, "permissions"    # I

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addCharacteristic(Ljava/util/UUID;II)V

    return-void
.end method

.method addDescriptor(ILjava/util/UUID;I)V
    .locals 2
    .param p1, "serverIf"    # I
    .param p2, "descUuid"    # Ljava/util/UUID;
    .param p3, "permissions"    # I

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addDescriptor(Ljava/util/UUID;I)V

    return-void
.end method

.method addIncludedService(IIILjava/util/UUID;)V
    .locals 2
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "srvcUuid"    # Ljava/util/UUID;

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p4, p2, p3}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addIncludedService(Ljava/util/UUID;II)V

    return-void
.end method

.method beginReliableWrite(ILjava/lang/String;)V
    .locals 2
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method beginServiceDeclaration(IIIILjava/util/UUID;Z)V
    .locals 6
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "minHandles"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "advertisePreferred"    # Z

    .prologue
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->addDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    .local v0, "serviceDeclaration":Lcom/android/bluetooth/gatt/ServiceDeclaration;
    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addService(Ljava/util/UUID;IIIZ)V

    return-void
.end method

.method protected cleanup()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->cleanupNative()V

    const/4 v0, 0x1

    .line 1757
    return v0
.end method

.method clearServices(I)V
    .locals 2
    .param p1, "serverIf"    # I

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->deleteServices(I)V

    return-void
.end method

.method clientConnect(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->gattClientConnectNative(ILjava/lang/String;Z)V

    return-void
.end method

.method clientDisconnect(ILjava/lang/String;)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/ContextMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "connId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/bluetooth/gatt/GattService;->gattClientDisconnectNative(ILjava/lang/String;I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method discoverServices(ILjava/lang/String;)V
    .locals 8
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const-wide/16 v3, 0x0

    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/ContextMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .local v7, "connId":Ljava/lang/Integer;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    move-object v0, p0

    move-wide v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->gattClientSearchServiceNative(IZJJ)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverServices() - No connection for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method endReliableWrite(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "execute"    # Z

    .prologue
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/ContextMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "connId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lcom/android/bluetooth/gatt/GattService;->gattClientExecuteWriteNative(IZ)V

    :cond_0
    return-void
.end method

.method endServiceDeclaration(I)V
    .locals 4
    .param p1, "serverIf"    # I

    .prologue
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method gattTestCommand(ILjava/util/UUID;Ljava/lang/String;IIIII)V
    .locals 12
    .param p1, "command"    # I
    .param p2, "uuid1"    # Ljava/util/UUID;
    .param p3, "bda1"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "p4"    # I
    .param p8, "p5"    # I

    .prologue
    if-nez p3, :cond_0

    const-string p3, "00:00:00:00:00:00"

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/bluetooth/gatt/GattService;->gattTestNative(IJJLjava/lang/String;IIIII)V

    :goto_0
    return-void

    :cond_1
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/bluetooth/gatt/GattService;->gattTestNative(IJJLjava/lang/String;IIIII)V

    goto :goto_0
.end method

.method getAdvManufacturerData()[B
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerData:[B

    return-object v0
.end method

.method getAdvServiceData()[B
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceData:[B

    return-object v0
.end method

.method declared-synchronized getAdvServiceUuids()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    const/4 v1, 0x0

    .local v1, "fullUuidFound":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget-object v5, v5, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .local v0, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget-boolean v5, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->advertisePreferred:Z

    if-eqz v5, :cond_0

    new-instance v3, Landroid/os/ParcelUuid;

    iget-object v5, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v3, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .local v3, "parcelUuid":Landroid/os/ParcelUuid;
    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isShortUuid(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    .end local v1    # "fullUuidFound":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "parcelUuid":Landroid/os/ParcelUuid;
    .end local v4    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v0    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    .restart local v1    # "fullUuidFound":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "parcelUuid":Landroid/os/ParcelUuid;
    .restart local v4    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :cond_1
    if-nez v1, :cond_0

    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    .end local v3    # "parcelUuid":Landroid/os/ParcelUuid;
    :cond_2
    monitor-exit p0

    return-object v4
.end method

.method getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .local v0, "connectedDevAddress":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/ContextMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/ContextMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v1, "connectedDeviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v1
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 15
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
    const-string v13, "android.permission.BLUETOOTH"

    const-string v14, "Need BLUETOOTH permission"

    invoke-virtual {p0, v13, v14}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .local v0, "DEVICE_TYPE_BREDR":I
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .local v7, "deviceStates":Ljava/util/Map;, "Ljava/util/Map<Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;>;"
    iget-object v13, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    .local v3, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .local v5, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v5}, Lcom/android/bluetooth/gatt/GattService;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_0

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v5    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .local v4, "connectedDevices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v13, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v13}, Lcom/android/bluetooth/gatt/ContextMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v13, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v13}, Lcom/android/bluetooth/gatt/ContextMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "address":Ljava/lang/String;
    iget-object v13, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v13, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .restart local v5    # "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v5, :cond_2

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v1    # "address":Ljava/lang/String;
    .end local v5    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;>;"
    move-object/from16 v2, p1

    .local v2, "arr$":[I
    array-length v11, v2

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_2
    if-ge v10, v11, :cond_4

    aget v12, v2, v10

    .local v12, "state":I
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v12, :cond_5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .end local v2    # "arr$":[I
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;>;"
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "state":I
    :cond_6
    return-object v6
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "BtGatt.GattService"

    return-object v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    new-instance v0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    return-object v0
.end method

.method isAdvertising()Z
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onAdvertiseCallback(II)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x3

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    :cond_0
    const-string v1, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid callback state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingClientIf:I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.adapter.action.ADVERTISING_STOPPED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_6

    if-nez p1, :cond_5

    iput p2, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingClientIf:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.adapter.action.ADVERTISING_STARTED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-nez v1, :cond_8

    :cond_4
    const-string v1, "BtGatt.GattService"

    const-string v2, "app or callback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :cond_5
    const/4 v1, 0x3

    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    if-nez p1, :cond_7

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.adapter.action.ADVERTISING_STOPPED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingClientIf:I

    goto :goto_1

    :cond_7
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .restart local v0    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :cond_8
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p1}, Landroid/bluetooth/IBluetoothGattCallback;->onAdvertiseStateChange(II)V

    goto/16 :goto_0
.end method

.method onAttributeRead(Ljava/lang/String;IIIIZ)V
    .locals 17
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connId"    # I
    .param p3, "transId"    # I
    .param p4, "attrHandle"    # I
    .param p5, "offset"    # I
    .param p6, "isLong"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v15

    .local v15, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    if-nez v15, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/HandleMap;->addRequest(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v13

    .local v13, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v13, :cond_0

    iget v2, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "BtGatt.GattService"

    const-string v3, "onAttributeRead() - Requested unknown attribute type."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v16

    .local v16, "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget-object v2, v13, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v9, Landroid/os/ParcelUuid;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v9, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget v10, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v11, Landroid/os/ParcelUuid;

    iget-object v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v2 .. v11}, Landroid/bluetooth/IBluetoothGattServerCallback;->onCharacteristicReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    goto :goto_0

    .end local v16    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v16

    .restart local v16    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v14

    .local v14, "charEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget-object v2, v13, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v9, Landroid/os/ParcelUuid;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v9, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget v10, v14, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v11, Landroid/os/ParcelUuid;

    iget-object v3, v14, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v12, Landroid/os/ParcelUuid;

    iget-object v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v12, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v2 .. v12}, Landroid/bluetooth/IBluetoothGattServerCallback;->onDescriptorReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onAttributeWrite(Ljava/lang/String;IIIIIZZ[B)V
    .locals 20
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connId"    # I
    .param p3, "transId"    # I
    .param p4, "attrHandle"    # I
    .param p5, "offset"    # I
    .param p6, "length"    # I
    .param p7, "needRsp"    # Z
    .param p8, "isPrep"    # Z
    .param p9, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v18

    .local v18, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    if-nez v18, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/HandleMap;->addRequest(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v16

    .local v16, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v16, :cond_0

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "BtGatt.GattService"

    const-string v3, "onAttributeWrite() - Requested unknown attribute type."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v19

    .local v19, "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v11, Landroid/os/ParcelUuid;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v13, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v13, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p7

    move-object/from16 v14, p9

    invoke-interface/range {v2 .. v14}, Landroid/bluetooth/IBluetoothGattServerCallback;->onCharacteristicWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    goto :goto_0

    .end local v19    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v19

    .restart local v19    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v17

    .local v17, "charEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v11, Landroid/os/ParcelUuid;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v13, Landroid/os/ParcelUuid;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v13, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v14, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v14, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p7

    move-object/from16 v15, p9

    invoke-interface/range {v2 .. v15}, Landroid/bluetooth/IBluetoothGattServerCallback;->onDescriptorWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onCharacteristicAdded(IIJJII)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "charUuidLsb"    # J
    .param p5, "charUuidMsb"    # J
    .param p7, "srvcHandle"    # I
    .param p8, "charHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .local v0, "uuid":Ljava/util/UUID;
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v1, p2, p8, v0, p7}, Lcom/android/bluetooth/gatt/HandleMap;->addCharacteristic(IILjava/util/UUID;I)V

    :cond_0
    invoke-direct {p0, p2, p1, p7}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    return-void
.end method

.method onClientConnected(Ljava/lang/String;ZII)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connected"    # Z
    .param p3, "connId"    # I
    .param p4, "serverIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p4}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p4, p3, p1}, Lcom/android/bluetooth/gatt/ContextMap;->addConnection(IILjava/lang/String;)V

    :goto_1
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattServerCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p4, p2, p1}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServerConnectionState(IIZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p4, p3}, Lcom/android/bluetooth/gatt/ContextMap;->removeConnection(II)V

    goto :goto_1
.end method

.method onClientRegistered(IIJJ)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .param p3, "uuidLsb"    # J
    .param p5, "uuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .local v1, "uuid":Ljava/util/UUID;
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/ContextMap;->getByUuid(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    iput p2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    new-instance v2, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;

    invoke-direct {v2, p0, p2}, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;-><init>(Lcom/android/bluetooth/gatt/GattService;I)V

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/gatt/ContextMap$App;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onClientRegistered(II)V

    :cond_0
    return-void
.end method

.method onConnected(IIILjava/lang/String;)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "connId"    # I
    .param p3, "status"    # I
    .param p4, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2, p4}, Lcom/android/bluetooth/gatt/ContextMap;->addConnection(IILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    const/4 v2, 0x1

    invoke-interface {v1, p3, p1, v2, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onClientConnectionState(IIZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method onDescriptorAdded(IIJJII)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "descrUuidLsb"    # J
    .param p5, "descrUuidMsb"    # J
    .param p7, "srvcHandle"    # I
    .param p8, "descrHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .local v0, "uuid":Ljava/util/UUID;
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v1, p2, p8, v0, p7}, Lcom/android/bluetooth/gatt/HandleMap;->addDescriptor(IILjava/util/UUID;I)V

    :cond_0
    invoke-direct {p0, p2, p1, p7}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    return-void
.end method

.method onDisconnected(IIILjava/lang/String;)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "connId"    # I
    .param p3, "status"    # I
    .param p4, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/ContextMap;->removeConnection(II)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/gatt/SearchQueue;->removeConnId(I)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    const/4 v2, 0x0

    invoke-interface {v1, p3, p1, v2, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onClientConnectionState(IIZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method onExecuteCompleted(II)V
    .locals 3
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/ContextMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/ContextMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    .local v1, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, v0, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onExecuteWrite(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method onExecuteWrite(Ljava/lang/String;III)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connId"    # I
    .param p3, "transId"    # I
    .param p4, "execWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/gatt/ContextMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattServerCallback;

    if-ne p4, v2, :cond_1

    :goto_1
    invoke-interface {v1, p1, p3, v2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onExecuteWrite(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method onGetCharacteristic(IIIIJJIJJI)V
    .locals 23
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "charProp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v22, Ljava/util/UUID;

    move-object/from16 v0, v22

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .local v22, "srvcUuid":Ljava/util/UUID;
    new-instance v21, Ljava/util/UUID;

    move-object/from16 v0, v21

    move-wide/from16 v1, p12

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .local v21, "charUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/ContextMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v19

    .local v19, "address":Ljava/lang/String;
    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    move/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v13, p9

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-virtual/range {v5 .. v17}, Lcom/android/bluetooth/gatt/SearchQueue;->add(IIIJJIJJ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/ContextMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v20

    .local v20, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v9, Landroid/os/ParcelUuid;

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v11, Landroid/os/ParcelUuid;

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v6, v19

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p9

    move/from16 v12, p14

    invoke-interface/range {v5 .. v12}, Landroid/bluetooth/IBluetoothGattCallback;->onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    :cond_0
    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v13, p9

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v5 .. v17}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetCharacteristicNative(IIIJJIJJ)V

    .end local v20    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :goto_0
    return-void

    :cond_1
    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    invoke-direct/range {v5 .. v18}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetIncludedServiceNative(IIIJJIIJJ)V

    goto :goto_0
.end method

.method onGetDescriptor(IIIIJJIJJIJJ)V
    .locals 29
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "descrInstId"    # I
    .param p15, "descrUuidLsb"    # J
    .param p17, "descrUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v28, Ljava/util/UUID;

    move-object/from16 v0, v28

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .local v28, "srvcUuid":Ljava/util/UUID;
    new-instance v26, Ljava/util/UUID;

    move-object/from16 v0, v26

    move-wide/from16 v1, p12

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .local v26, "charUuid":Ljava/util/UUID;
    new-instance v27, Ljava/util/UUID;

    move-object/from16 v0, v27

    move-wide/from16 v1, p17

    move-wide/from16 v3, p15

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .local v27, "descUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/ContextMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "address":Ljava/lang/String;
    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/ContextMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v25

    .local v25, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v25, :cond_0

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v9, Landroid/os/ParcelUuid;

    move-object/from16 v0, v28

    invoke-direct {v9, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v11, Landroid/os/ParcelUuid;

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v13, Landroid/os/ParcelUuid;

    move-object/from16 v0, v27

    invoke-direct {v13, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p9

    move/from16 v12, p14

    invoke-interface/range {v5 .. v13}, Landroid/bluetooth/IBluetoothGattCallback;->onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    :cond_0
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move-wide/from16 v16, p10

    move-wide/from16 v18, p12

    move/from16 v20, p14

    move-wide/from16 v21, p15

    move-wide/from16 v23, p17

    invoke-direct/range {v7 .. v24}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetDescriptorNative(IIIJJIJJIJJ)V

    .end local v25    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/bluetooth/gatt/GattService;->continueSearch(II)V

    goto :goto_0
.end method

.method onGetIncludedService(IIIIJJIIJJ)V
    .locals 24
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "inclSrvcType"    # I
    .param p10, "inclSrvcInstId"    # I
    .param p11, "inclSrvcUuidLsb"    # J
    .param p13, "inclSrvcUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v23, Ljava/util/UUID;

    move-object/from16 v0, v23

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .local v23, "srvcUuid":Ljava/util/UUID;
    new-instance v22, Ljava/util/UUID;

    move-object/from16 v0, v22

    move-wide/from16 v1, p13

    move-wide/from16 v3, p11

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .local v22, "inclSrvcUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/ContextMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "address":Ljava/lang/String;
    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/ContextMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v21

    .local v21, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v9, Landroid/os/ParcelUuid;

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v12, Landroid/os/ParcelUuid;

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v5 .. v12}, Landroid/bluetooth/IBluetoothGattCallback;->onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V

    :cond_0
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move-wide/from16 v17, p11

    move-wide/from16 v19, p13

    invoke-direct/range {v7 .. v20}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetIncludedServiceNative(IIIJJIIJJ)V

    .end local v21    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/bluetooth/gatt/GattService;->continueSearch(II)V

    goto :goto_0
.end method

.method onIncludedServiceAdded(IIII)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcHandle"    # I
    .param p4, "includedSrvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2, p1, p3}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    return-void
.end method

.method onNotify(ILjava/lang/String;IIJJIJJZ[B)V
    .locals 15
    .param p1, "connId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "isNotify"    # Z
    .param p15, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v14, Ljava/util/UUID;

    move-wide/from16 v0, p7

    move-wide/from16 v2, p5

    invoke-direct {v14, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .local v14, "srvcUuid":Ljava/util/UUID;
    new-instance v13, Ljava/util/UUID;

    move-wide/from16 v0, p12

    move-wide/from16 v2, p10

    invoke-direct {v13, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .local v13, "charUuid":Ljava/util/UUID;
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/ContextMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v12

    .local v12, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v12, :cond_0

    iget-object v4, v12, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v8, Landroid/os/ParcelUuid;

    invoke-direct {v8, v14}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v10, Landroid/os/ParcelUuid;

    invoke-direct {v10, v13}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v9, p9

    move-object/from16 v11, p15

    invoke-interface/range {v4 .. v11}, Landroid/bluetooth/IBluetoothGattCallback;->onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    :cond_0
    return-void
.end method

.method onReadCharacteristic(IIIIJJIJJI[B)V
    .locals 16
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "charType"    # I
    .param p15, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v15, Ljava/util/UUID;

    move-wide/from16 v0, p7

    move-wide/from16 v2, p5

    invoke-direct {v15, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .local v15, "srvcUuid":Ljava/util/UUID;
    new-instance v14, Ljava/util/UUID;

    move-wide/from16 v0, p12

    move-wide/from16 v2, p10

    invoke-direct {v14, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .local v14, "charUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/ContextMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/ContextMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v13

    .local v13, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v13, :cond_0

    iget-object v4, v13, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v9, Landroid/os/ParcelUuid;

    invoke-direct {v9, v15}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v11, Landroid/os/ParcelUuid;

    invoke-direct {v11, v14}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p9

    move-object/from16 v12, p15

    invoke-interface/range {v4 .. v12}, Landroid/bluetooth/IBluetoothGattCallback;->onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    :cond_0
    return-void
.end method

.method onReadDescriptor(IIIIJJIJJIJJI[B)V
    .locals 20
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "descrInstId"    # I
    .param p15, "descrUuidLsb"    # J
    .param p17, "descrUuidMsb"    # J
    .param p19, "charType"    # I
    .param p20, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v19, Ljava/util/UUID;

    move-object/from16 v0, v19

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .local v19, "srvcUuid":Ljava/util/UUID;
    new-instance v17, Ljava/util/UUID;

    move-object/from16 v0, v17

    move-wide/from16 v1, p12

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .local v17, "charUuid":Ljava/util/UUID;
    new-instance v18, Ljava/util/UUID;

    move-object/from16 v0, v18

    move-wide/from16 v1, p17

    move-wide/from16 v3, p15

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .local v18, "descrUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/ContextMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/ContextMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v16

    .local v16, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v10, Landroid/os/ParcelUuid;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v12, Landroid/os/ParcelUuid;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v14, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p9

    move/from16 v13, p14

    move-object/from16 v15, p20

    invoke-interface/range {v5 .. v15}, Landroid/bluetooth/IBluetoothGattCallback;->onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    :cond_0
    return-void
.end method

.method onReadRemoteRssi(ILjava/lang/String;II)V
    .locals 2
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "rssi"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onReadRemoteRssi(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method onRegisterForNotifications(IIIIIJJIJJ)V
    .locals 8
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "registered"    # I
    .param p4, "srvcType"    # I
    .param p5, "srvcInstId"    # I
    .param p6, "srvcUuidLsb"    # J
    .param p8, "srvcUuidMsb"    # J
    .param p10, "charInstId"    # I
    .param p11, "charUuidLsb"    # J
    .param p13, "charUuidMsb"    # J

    .prologue
    new-instance v6, Ljava/util/UUID;

    move-wide/from16 v0, p8

    invoke-direct {v6, v0, v1, p6, p7}, Ljava/util/UUID;-><init>(JJ)V

    .local v6, "srvcUuid":Ljava/util/UUID;
    new-instance v5, Ljava/util/UUID;

    move-wide/from16 v0, p13

    move-wide/from16 v2, p11

    invoke-direct {v5, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .local v5, "charUuid":Ljava/util/UUID;
    iget-object v7, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v7, p1}, Lcom/android/bluetooth/gatt/ContextMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "address":Ljava/lang/String;
    return-void
.end method

.method onResponseSendCompleted(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "attrHandle"    # I

    .prologue
    return-void
.end method

.method onScanResult(Ljava/lang/String;I[B)V
    .locals 20
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "adv_data"    # [B

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->parseUuids([B)Ljava/util/List;

    move-result-object v15

    .local v15, "remoteUuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/gatt/ScanClient;

    .local v7, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget-object v0, v7, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_4

    const/4 v13, 0x0

    .local v13, "matches":I
    iget-object v6, v7, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    .local v6, "arr$":[Ljava/util/UUID;
    array-length v12, v6

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .local v11, "i$":I
    :goto_1
    if-ge v11, v12, :cond_3

    aget-object v16, v6, v11

    .local v16, "search":Ljava/util/UUID;
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v11    # "i$":I
    .local v10, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/UUID;

    .local v14, "remote":Ljava/util/UUID;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    add-int/lit8 v13, v13, 0x1

    .end local v14    # "remote":Ljava/util/UUID;
    :cond_2
    add-int/lit8 v10, v11, 0x1

    .local v10, "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_1

    .end local v16    # "search":Ljava/util/UUID;
    :cond_3
    iget-object v0, v7, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v13, v0, :cond_0

    .end local v6    # "arr$":[Ljava/util/UUID;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "matches":I
    :cond_4
    iget-boolean v0, v7, Lcom/android/bluetooth/gatt/ScanClient;->isServer:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move-object/from16 v17, v0

    iget v0, v7, Lcom/android/bluetooth/gatt/ScanClient;->appIf:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v4

    .local v4, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v4, :cond_0

    :try_start_0
    iget-object v0, v4, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/bluetooth/IBluetoothGattCallback;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback;->onScanResult(Ljava/lang/String;I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    const-string v17, "BtGatt.GattService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move-object/from16 v17, v0

    iget v0, v7, Lcom/android/bluetooth/gatt/ScanClient;->appIf:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/bluetooth/gatt/ContextMap;->remove(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v4    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    move-object/from16 v17, v0

    iget v0, v7, Lcom/android/bluetooth/gatt/ScanClient;->appIf:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v5

    .local v5, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v5, :cond_0

    :try_start_1
    iget-object v0, v5, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattServerCallback;->onScanResult(Ljava/lang/String;I[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v8

    .restart local v8    # "e":Landroid/os/RemoteException;
    const-string v17, "BtGatt.GattService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    move-object/from16 v17, v0

    iget v0, v7, Lcom/android/bluetooth/gatt/ScanClient;->appIf:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/bluetooth/gatt/ContextMap;->remove(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v5    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    .end local v7    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_6
    return-void
.end method

.method onSearchCompleted(II)V
    .locals 0
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->continueSearch(II)V

    return-void
.end method

.method onSearchResult(IIIJJ)V
    .locals 15
    .param p1, "connId"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuidLsb"    # J
    .param p6, "srvcUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v14, Ljava/util/UUID;

    move-wide/from16 v0, p6

    move-wide/from16 v2, p4

    invoke-direct {v14, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .local v14, "uuid":Ljava/util/UUID;
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/ContextMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v12

    .local v12, "address":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lcom/android/bluetooth/gatt/SearchQueue;->add(IIIJJ)V

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/ContextMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v13

    .local v13, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v13, :cond_0

    iget-object v4, v13, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-direct {v5, v14}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v4, v12, v0, v1, v5}, Landroid/bluetooth/IBluetoothGattCallback;->onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V

    :cond_0
    return-void
.end method

.method onServerRegistered(IIJJ)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "uuidLsb"    # J
    .param p5, "uuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .local v1, "uuid":Ljava/util/UUID;
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/ContextMap;->getByUuid(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v0, :cond_0

    iput p2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    new-instance v2, Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;

    invoke-direct {v2, p0, p2}, Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;-><init>(Lcom/android/bluetooth/gatt/GattService;I)V

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/gatt/ContextMap$App;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServerRegistered(II)V

    :cond_0
    return-void
.end method

.method onServiceAdded(IIIIJJI)V
    .locals 9
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "srvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v5, Ljava/util/UUID;

    move-wide/from16 v0, p7

    invoke-direct {v5, v0, v1, p5, p6}, Ljava/util/UUID;-><init>(JJ)V

    .local v5, "uuid":Ljava/util/UUID;
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v8

    move v3, p2

    move/from16 v4, p9

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/bluetooth/gatt/HandleMap;->addService(IILjava/util/UUID;IIZ)V

    :cond_0
    move/from16 v0, p9

    invoke-direct {p0, p2, p1, v0}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    return-void
.end method

.method onServiceDeleted(III)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcHandle"    # I

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/gatt/HandleMap;->deleteService(II)V

    return-void
.end method

.method onServiceStarted(III)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/bluetooth/gatt/HandleMap;->setStarted(IIZ)V

    :cond_0
    return-void
.end method

.method onServiceStopped(III)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/bluetooth/gatt/HandleMap;->setStarted(IIZ)V

    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/android/bluetooth/gatt/GattService;->stopNextService(II)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/bluetooth/gatt/GattDebugUtils;->handleDebugAction(Lcom/android/bluetooth/gatt/GattService;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/bluetooth/btservice/ProfileService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method

.method onWriteCharacteristic(IIIIJJIJJ)V
    .locals 15
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v14, Ljava/util/UUID;

    move-wide/from16 v0, p7

    move-wide/from16 v2, p5

    invoke-direct {v14, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .local v14, "srvcUuid":Ljava/util/UUID;
    new-instance v13, Ljava/util/UUID;

    move-wide/from16 v0, p12

    move-wide/from16 v2, p10

    invoke-direct {v13, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .local v13, "charUuid":Ljava/util/UUID;
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/ContextMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "address":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/ContextMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v12

    .local v12, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v12, :cond_0

    iget-object v4, v12, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v9, Landroid/os/ParcelUuid;

    invoke-direct {v9, v14}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v11, Landroid/os/ParcelUuid;

    invoke-direct {v11, v13}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p9

    invoke-interface/range {v4 .. v11}, Landroid/bluetooth/IBluetoothGattCallback;->onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    :cond_0
    return-void
.end method

.method onWriteDescriptor(IIIIJJIJJIJJ)V
    .locals 19
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "descrInstId"    # I
    .param p15, "descrUuidLsb"    # J
    .param p17, "descrUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v18, Ljava/util/UUID;

    move-object/from16 v0, v18

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .local v18, "srvcUuid":Ljava/util/UUID;
    new-instance v16, Ljava/util/UUID;

    move-object/from16 v0, v16

    move-wide/from16 v1, p12

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .local v16, "charUuid":Ljava/util/UUID;
    new-instance v17, Ljava/util/UUID;

    move-object/from16 v0, v17

    move-wide/from16 v1, p17

    move-wide/from16 v3, p15

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .local v17, "descrUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/ContextMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/ContextMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v15

    .local v15, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v15, :cond_0

    iget-object v5, v15, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v10, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v12, Landroid/os/ParcelUuid;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v14, Landroid/os/ParcelUuid;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p9

    move/from16 v13, p14

    invoke-interface/range {v5 .. v14}, Landroid/bluetooth/IBluetoothGattCallback;->onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    :cond_0
    return-void
.end method

.method readCharacteristic(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;I)V
    .locals 17
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "authReq"    # I

    .prologue
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/ContextMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .local v16, "connId":Ljava/lang/Integer;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v10, p6

    move/from16 v15, p8

    invoke-direct/range {v2 .. v15}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadCharacteristicNative(IIIJJIJJI)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readCharacteristic() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method readDescriptor(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;ILjava/util/UUID;I)V
    .locals 22
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "descrInstanceId"    # I
    .param p9, "descrUuid"    # Ljava/util/UUID;
    .param p10, "authReq"    # I

    .prologue
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/ContextMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .local v21, "connId":Ljava/lang/Integer;
    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    invoke-virtual/range {p9 .. p9}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v16

    invoke-virtual/range {p9 .. p9}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v18

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v10, p6

    move/from16 v15, p8

    move/from16 v20, p10

    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadDescriptorNative(IIIJJIJJIJJI)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readDescriptor() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method readRemoteRssi(ILjava/lang/String;)V
    .locals 2
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadRemoteRssiNative(ILjava/lang/String;)V

    return-void
.end method

.method refreshDevice(ILjava/lang/String;)V
    .locals 2
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattClientRefreshNative(ILjava/lang/String;)V

    return-void
.end method

.method registerClient(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattCallback;)V
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattCallback;

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/ContextMap;->add(Ljava/util/UUID;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->gattClientRegisterAppNative(JJ)V

    return-void
.end method

.method registerForNotification(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Z)V
    .locals 18
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "enable"    # Z

    .prologue
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/ContextMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .local v17, "connId":Ljava/lang/Integer;
    if-eqz v17, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v7

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v9

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v12

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v14

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v11, p6

    move/from16 v16, p8

    invoke-direct/range {v2 .. v16}, Lcom/android/bluetooth/gatt/GattService;->gattClientRegisterForNotificationsNative(ILjava/lang/String;IIJJIJJZ)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForNotification() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method registerServer(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattServerCallback;)V
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattServerCallback;

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/ContextMap;->add(Ljava/util/UUID;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->gattServerRegisterAppNative(JJ)V

    return-void
.end method

.method removeAdvManufacturerCodeAndData(I)V
    .locals 1
    .param p1, "manufacturerCode"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    iget v0, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerCode:I

    if-eq v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerCode:I

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerData:[B

    goto :goto_0
.end method

.method removeService(IIILjava/util/UUID;)V
    .locals 3
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "srvcUuid"    # Ljava/util/UUID;

    .prologue
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v1, p4, p2, p3}, Lcom/android/bluetooth/gatt/HandleMap;->getServiceHandle(Ljava/util/UUID;II)I

    move-result v0

    .local v0, "srvcHandle":I
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/gatt/GattService;->gattServerDeleteServiceNative(II)V

    goto :goto_0
.end method

.method sendNotification(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Z[B)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "confirm"    # Z
    .param p9, "value"    # [B

    .prologue
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v3, p5, p3, p4}, Lcom/android/bluetooth/gatt/HandleMap;->getServiceHandle(Ljava/util/UUID;II)I

    move-result v2

    .local v2, "srvcHandle":I
    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v3, v2, p7, p6}, Lcom/android/bluetooth/gatt/HandleMap;->getCharacteristicHandle(ILjava/util/UUID;I)I

    move-result v0

    .local v0, "charHandle":I
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v3, p1, p2}, Lcom/android/bluetooth/gatt/ContextMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "connId":I
    if-eqz v1, :cond_0

    if-eqz p8, :cond_2

    invoke-direct {p0, p1, v0, v1, p9}, Lcom/android/bluetooth/gatt/GattService;->gattServerSendIndicationNative(III[B)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v0, v1, p9}, Lcom/android/bluetooth/gatt/GattService;->gattServerSendNotificationNative(III[B)V

    goto :goto_0
.end method

.method sendResponse(ILjava/lang/String;III[B)V
    .locals 10
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "requestId"    # I
    .param p4, "status"    # I
    .param p5, "offset"    # I
    .param p6, "value"    # [B

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .local v5, "handle":I
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p3}, Lcom/android/bluetooth/gatt/HandleMap;->getByRequestId(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v9

    .local v9, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    if-eqz v9, :cond_0

    iget v5, v9, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/ContextMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "connId":I
    int-to-byte v4, p4

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->gattServerSendResponseNative(IIIIII[BI)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p3}, Lcom/android/bluetooth/gatt/HandleMap;->deleteRequest(I)V

    return-void
.end method

.method serverConnect(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->gattServerConnectNative(ILjava/lang/String;Z)V

    return-void
.end method

.method serverDisconnect(ILjava/lang/String;)V
    .locals 3
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/ContextMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "connId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/bluetooth/gatt/GattService;->gattServerDisconnectNative(ILjava/lang/String;I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method declared-synchronized setAdvManufacturerCodeAndData(I[B)Z
    .locals 4
    .param p1, "manufacturerCode"    # I
    .param p2, "manufacturerData"    # [B

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget v1, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerCode:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerData:[B

    if-eqz v1, :cond_2

    const-string v1, "BtGatt.GattService"

    const-string v2, "manufacture data is already set"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getAvailableSize()I

    move-result v1

    array-length v2, p2

    add-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_3

    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot set manu data, available size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getAvailableSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerCode:I

    iput-object p2, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerData:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method declared-synchronized setAdvServiceData([B)Z
    .locals 5
    .param p1, "serviceData"    # [B

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceData:[B

    if-nez v2, :cond_1

    array-length v2, p1

    add-int/lit8 v0, v2, 0x2

    .local v0, "extraBytes":I
    :goto_1
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getAvailableSize()I

    move-result v2

    if-ge v2, v0, :cond_2

    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot set service data, available size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getAvailableSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "extraBytes":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    :try_start_2
    array-length v2, p1

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceData:[B

    array-length v3, v3

    sub-int v0, v2, v3

    goto :goto_1

    .restart local v0    # "extraBytes":I
    :cond_2
    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceData:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected start()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->initializeNative()V

    const/4 v0, 0x1

    return v0
.end method

.method startAdvertising(I)V
    .locals 19
    .param p1, "clientIf"    # I

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getAdvServiceUuids()Ljava/util/List;

    move-result-object v17

    .local v17, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    if-nez v17, :cond_0

    const/4 v13, 0x0

    .local v13, "advertisingServiceUuidLength":I
    :goto_0
    mul-int/lit8 v2, v13, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    .local v14, "advertisingUuidBytes":Ljava/nio/ByteBuffer;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/ParcelUuid;

    .local v16, "parcelUuid":Landroid/os/ParcelUuid;
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v18

    .local v18, "uuid":Ljava/util/UUID;
    invoke-virtual/range {v18 .. v18}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_1

    .end local v13    # "advertisingServiceUuidLength":I
    .end local v14    # "advertisingUuidBytes":Ljava/nio/ByteBuffer;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "parcelUuid":Landroid/os/ParcelUuid;
    .end local v18    # "uuid":Ljava/util/UUID;
    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v13

    goto :goto_0

    .restart local v13    # "advertisingServiceUuidLength":I
    .restart local v14    # "advertisingUuidBytes":Ljava/nio/ByteBuffer;
    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc8

    const/16 v8, 0xc8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerData:[B

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/gatt/GattService;->mServiceData:[B

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct/range {v2 .. v12}, Lcom/android/bluetooth/gatt/GattService;->gattSetAdvDataNative(IZZZIII[B[B[B)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->isAdvertising()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->gattAdvertiseNative(IZ)V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingClientIf:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    :cond_2
    return-void
.end method

.method startScan(IZ)V
    .locals 2
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z

    .prologue
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->getScanClient(IZ)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    new-instance v1, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-direct {v1, p1, p2}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/gatt/GattService;->gattClientScanNative(IZ)V

    return-void
.end method

.method startScanWithUuids(IZ[Ljava/util/UUID;)V
    .locals 2
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z
    .param p3, "uuids"    # [Ljava/util/UUID;

    .prologue
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->getScanClient(IZ)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    new-instance v1, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ[Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/gatt/GattService;->gattClientScanNative(IZ)V

    return-void
.end method

.method protected stop()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ContextMap;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ContextMap;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/SearchQueue;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/HandleMap;->clear()V

    .line 133
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method stopAdvertising()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/GattService;->stopAdvertising(Z)V

    return-void
.end method

.method stopAdvertising(Z)V
    .locals 2
    .param p1, "forceStop"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    iget v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingClientIf:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->gattAdvertiseNative(IZ)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stopScan(IZ)V
    .locals 2
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->removeScanClient(IZ)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 1092
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/gatt/GattService;->gattClientScanNative(IZ)V

    :cond_0
    return-void
.end method

.method unregisterClient(I)V
    .locals 2
    .param p1, "clientIf"    # I

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/ContextMap;->remove(I)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->gattClientUnregisterAppNative(I)V

    return-void
.end method

.method unregisterServer(I)V
    .locals 2
    .param p1, "serverIf"    # I

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->deleteServices(I)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/ContextMap;->remove(I)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->gattServerUnregisterAppNative(I)V

    return-void
.end method

.method writeCharacteristic(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;II[B)V
    .locals 19
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "writeType"    # I
    .param p9, "authReq"    # I
    .param p10, "value"    # [B

    .prologue
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p8, 0x3

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/ContextMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .local v18, "connId":Ljava/lang/Integer;
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v10, p6

    move/from16 v15, p8

    move/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v2 .. v17}, Lcom/android/bluetooth/gatt/GattService;->gattClientWriteCharacteristicNative(IIIJJIJJII[B)V

    :goto_0
    return-void

    :cond_1
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeCharacteristic() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method writeDescriptor(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;ILjava/util/UUID;II[B)V
    .locals 24
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "descrInstanceId"    # I
    .param p9, "descrUuid"    # Ljava/util/UUID;
    .param p10, "writeType"    # I
    .param p11, "authReq"    # I
    .param p12, "value"    # [B

    .prologue
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/ContextMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    .local v23, "connId":Ljava/lang/Integer;
    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    invoke-virtual/range {p9 .. p9}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v16

    invoke-virtual/range {p9 .. p9}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v18

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v10, p6

    move/from16 v15, p8

    move/from16 v20, p10

    move/from16 v21, p11

    move-object/from16 v22, p12

    invoke-direct/range {v2 .. v22}, Lcom/android/bluetooth/gatt/GattService;->gattClientWriteDescriptorNative(IIIJJIJJIJJII[B)V

    .line 1255
    :goto_0
    return-void

    .line 1254
    :cond_0
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeDescriptor() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
