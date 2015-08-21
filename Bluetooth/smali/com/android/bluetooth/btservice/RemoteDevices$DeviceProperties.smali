.class Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
.super Ljava/lang/Object;
.source "RemoteDevices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/RemoteDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceProperties"
.end annotation


# instance fields
.field private mAddress:[B

.field private mAlias:Ljava/lang/String;

.field private mBluetoothClass:I

.field private mBondState:I

.field private mDeviceType:I

.field private mName:Ljava/lang/String;

.field private mRssi:S

.field private mUuids:[Landroid/os/ParcelUuid;

.field final synthetic this$0:Lcom/android/bluetooth/btservice/RemoteDevices;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 1

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBondState:I

    .line 111
    return-void
.end method

.method static synthetic access$002(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .param p1, "x1"    # [B

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[Landroid/os/ParcelUuid;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[Landroid/os/ParcelUuid;)[Landroid/os/ParcelUuid;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .param p1, "x1"    # [Landroid/os/ParcelUuid;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .param p1, "x1"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .param p1, "x1"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mDeviceType:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)S
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .prologue
    .line 99
    iget-short v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S

    return v0
.end method

.method static synthetic access$802(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;S)S
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .param p1, "x1"    # S

    .prologue
    .line 99
    iput-short p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S

    return p1
.end method


# virtual methods
.method getAddress()[B
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B

    monitor-exit v1

    return-object v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getBluetoothClass()I
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 127
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I

    monitor-exit v1

    return v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getBondState()I
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 208
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBondState:I

    monitor-exit v1

    return v0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDeviceType()I
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 163
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mDeviceType:I

    monitor-exit v1

    return v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getRssi()S
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 154
    :try_start_0
    iget-short v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S

    monitor-exit v1

    return v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;

    monitor-exit v1

    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setAlias(Ljava/lang/String;)V
    .locals 5
    .param p1, "mAlias"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 181
    :try_start_0
    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$200()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B

    const/16 v3, 0xa

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->setDevicePropertyNative([BI[B)Z

    .line 183
    monitor-exit v1

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setBondState(I)V
    .locals 2
    .param p1, "mBondState"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 191
    :try_start_0
    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBondState:I

    .line 192
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;

    .line 200
    :cond_0
    monitor-exit v1

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
