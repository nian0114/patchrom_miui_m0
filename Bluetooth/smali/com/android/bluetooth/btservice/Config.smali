.class public Lcom/android/bluetooth/btservice/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static final PROFILE_SERVICES:[Ljava/lang/Class;

.field private static final PROFILE_SERVICES_FLAG:[I

.field private static SUPPORTED_PROFILES:[Ljava/lang/Class; = null

.field private static final TAG:Ljava/lang/String; = "AdapterServiceConfig"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 42
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Lcom/android/bluetooth/hfp/HeadsetService;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Lcom/android/bluetooth/a2dp/A2dpService;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/android/bluetooth/hid/HidService;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/bluetooth/hdp/HealthService;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/bluetooth/pan/PanService;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/bluetooth/gatt/GattService;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/bluetooth/map/BluetoothMapService;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    .line 54
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES_FLAG:[I

    .line 64
    new-array v0, v3, [Ljava/lang/Class;

    sput-object v0, Lcom/android/bluetooth/btservice/Config;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    return-void

    .line 54
    :array_0
    .array-data 4
        0x7f090002
        0x7f090000
        0x7f090003
        0x7f090001
        0x7f090005
        0x7f090007
        0x7f09000a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSupportedProfiles()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/bluetooth/btservice/Config;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 67
    if-nez p0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 71
    .local v2, "resources":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    array-length v5, v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES_FLAG:[I

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 76
    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES_FLAG:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 77
    .local v3, "supported":Z
    if-eqz v3, :cond_2

    .line 78
    const-string v5, "AdapterServiceConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    .end local v3    # "supported":Z
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 83
    .local v4, "totalProfiles":I
    new-array v5, v4, [Ljava/lang/Class;

    sput-object v5, Lcom/android/bluetooth/btservice/Config;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    .line 84
    sget-object v5, Lcom/android/bluetooth/btservice/Config;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method
