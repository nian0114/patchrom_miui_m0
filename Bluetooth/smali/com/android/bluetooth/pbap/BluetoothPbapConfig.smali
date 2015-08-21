.class public Lcom/android/bluetooth/pbap/BluetoothPbapConfig;
.super Ljava/lang/Object;
.source "BluetoothPbapConfig.java"


# static fields
.field private static sIncludePhotosInVcard:Z

.field private static sUseProfileForOwnerVcard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->sUseProfileForOwnerVcard:Z

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->sIncludePhotosInVcard:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static includePhotosInVcard()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->sIncludePhotosInVcard:Z

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    const v2, 0x7f090009

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->sUseProfileForOwnerVcard:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    const v2, 0x7f090008

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->sIncludePhotosInVcard:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    :cond_0
    :goto_1
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothPbapConfig"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 40
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "BluetoothPbapConfig"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static useProfileForOwnerVcard()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->sUseProfileForOwnerVcard:Z

    return v0
.end method
