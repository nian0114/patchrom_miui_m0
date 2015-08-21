.class Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;
.super Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;
.source "MiBleDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceManagerBinder"
.end annotation


# instance fields
.field private mPM:Landroid/content/pm/PackageManager;

.field private mService:Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    .prologue
    invoke-direct {p0}, Lmiui/bluetooth/ble/IMiBleDeviceManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->mService:Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->mService:Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->mPM:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->initTrustSinatures()V

    return-void
.end method

.method private confirmRestrictPermission()Z
    .locals 13

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .local v10, "uid":I
    iget-object v11, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .local v7, "packages":[Ljava/lang/String;
    if-eqz v7, :cond_2

    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v8, v0, v4

    .local v8, "pkgName":Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v8, v11, v12

    :try_start_0
    iget-object v11, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->mPM:Landroid/content/pm/PackageManager;

    const/16 v12, 0x40

    invoke-virtual {v11, v8, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget-object v1, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v9, v1, v3

    .local v9, "signatrue":Landroid/content/pm/Signature;
    invoke-static {v9}, Lcom/android/bluetooth/ble/app/MiuiBleAppPermissions;->checkSignature(Landroid/content/pm/Signature;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    return v11

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v9    # "signatrue":Landroid/content/pm/Signature;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_2
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .end local v4    # "i$":I
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_2
    new-instance v11, Ljava/lang/SecurityException;

    const-string v12, "No access permission!"

    invoke-direct {v11, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method private getService()Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->mService:Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    return-object v0
.end method

.method private initTrustSinatures()V
    .locals 9

    .prologue
    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->mPM:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->mService:Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    invoke-virtual {v7}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v5, "signs":[Landroid/content/pm/Signature;
    move-object v0, v5

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .local v4, "signature":Landroid/content/pm/Signature;
    invoke-static {v4}, Lcom/android/bluetooth/ble/app/MiuiBleAppPermissions;->addTrustSignature(Landroid/content/pm/Signature;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "signature":Landroid/content/pm/Signature;
    .end local v5    # "signs":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteSettings(Ljava/lang/String;)Z
    .locals 1
    .param p1, "device"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->getService()Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    move-result-object v0

    # invokes: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->deleteSettings(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$1000(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoundDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getBoundDevices()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->getService()Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    move-result-object v0

    # invokes: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getBoundDevices()Ljava/util/List;
    invoke-static {v0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$400(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSettings(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "device"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->getService()Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    move-result-object v0

    # invokes: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getDeviceSettings(Ljava/lang/String;)Ljava/util/Map;
    invoke-static {v0, p1}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$900(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType(Ljava/lang/String;)I
    .locals 1
    .param p1, "device"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Lcom/android/bluetooth/ble/DeviceUtils;->getDeviceType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRegisterAppForBleEvent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getRegisterAppForBleEvent() device = %s, event = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->getService()Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    move-result-object v0

    # invokes: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getRegisterAppForBleEvent(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$1700(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x4

    return v0
.end method

.method public getSettingInteger(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSettingInteger() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->getService()Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    move-result-object v0

    # invokes: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getSettingInteger(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$800(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSettingString() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->getService()Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    move-result-object v0

    # invokes: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$600(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerAppForBleEvent(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerAppForBleEvent() device = %s, event = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->getService()Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    move-result-object v0

    # invokes: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->registerAppForBleEvent(Ljava/lang/String;I)Z
    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$1500(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public registerBleEventListener(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "callback"    # Lmiui/bluetooth/ble/IBleEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMiKeyEventListener() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->getService()Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    move-result-object v0

    # invokes: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->registerBleEventCallback(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z
    invoke-static {v0, p1, p2, p3}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$1300(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v0

    return v0
.end method

.method public setSettingInteger(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSettingInteger() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->confirmRestrictPermission()Z

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->getService()Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    move-result-object v0

    # invokes: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->setSettingInteger(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v0, p1, p2, p3}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$700(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSettingString() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->confirmRestrictPermission()Z

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->getService()Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    move-result-object v0

    # invokes: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->setSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, p1, p2, p3}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$500(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startScanDevice(Landroid/os/IBinder;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IScanDeviceCallback;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "clientId"    # Landroid/os/ParcelUuid;
    .param p3, "property"    # I
    .param p4, "callback"    # Lmiui/bluetooth/ble/IScanDeviceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startScanDevice() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->getService()Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    move-result-object v0

    # invokes: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->startScanDevice(Landroid/os/IBinder;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IScanDeviceCallback;)Z
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$1100(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Landroid/os/IBinder;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IScanDeviceCallback;)Z

    move-result v0

    return v0
.end method

.method public stopScanDevice(Landroid/os/ParcelUuid;)V
    .locals 3
    .param p1, "clientId"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopScanDevice() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->getService()Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    move-result-object v0

    # invokes: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->stopScanDevice(Landroid/os/ParcelUuid;)V
    invoke-static {v0, p1}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$1200(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Landroid/os/ParcelUuid;)V

    return-void
.end method

.method public unregisterAppForBleEvent(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerAppForBleEvent() device = %s, event = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->getService()Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    move-result-object v0

    # invokes: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->unregisterAppForBleEvent(Ljava/lang/String;I)Z
    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$1600(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public unregisterBleEventListener(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "callback"    # Lmiui/bluetooth/ble/IBleEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterMiKeyEventListener() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;->getService()Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    move-result-object v0

    # invokes: Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->unregisterBleEventCallback(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z
    invoke-static {v0, p1, p2, p3}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->access$1400(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v0

    return v0
.end method
