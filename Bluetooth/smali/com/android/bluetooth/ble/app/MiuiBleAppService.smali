.class public Lcom/android/bluetooth/ble/app/MiuiBleAppService;
.super Landroid/app/Service;
.source "MiuiBleAppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ble/app/MiuiBleAppService$AppServiceBinder;
    }
.end annotation


# static fields
.field static final ACTIOM_CLOCK:Ljava/lang/String; = "miui.deskclock.ACTION_ALARM"

.field static final ACTIOM_INCALL:Ljava/lang/String; = "miui.phone.ACTION_ALARM"

.field static final ACTIOM_SMS:Ljava/lang/String; = "miui.sms.ACTION_ALARM"

.field static final ACTION_ALERT_CANCEL:Ljava/lang/String; = "miui.bluetooth.alert.CANCEL"

.field private static final DBG:Z = true

.field static final EXTRA_CONTACT:Ljava/lang/String; = "contact"

.field static final EXTRA_NUMBER:Ljava/lang/String; = "number"

.field static final EXTRA_TAG:Ljava/lang/String; = "tag"

.field static final EXTRA_TIMES:Ljava/lang/String; = "times"

.field static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field static final EXTRA_YELLOWPAGE:Ljava/lang/String; = "yellow_page"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mBinder:Lcom/android/bluetooth/ble/app/MiuiBleAppService$AppServiceBinder;

.field private mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

.field private mBleSettingsObserver:Landroid/database/ContentObserver;

.field private mBluetoothSwitchListener:Landroid/content/BroadcastReceiver;

.field private mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/ble/app/BaseBleDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mRecieverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mRecieverRegistered:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mDevices:Ljava/util/HashMap;

    new-instance v0, Lcom/android/bluetooth/ble/app/MiuiBleAppService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/app/MiuiBleAppService$1;-><init>(Lcom/android/bluetooth/ble/app/MiuiBleAppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/bluetooth/ble/app/MiuiBleAppService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/app/MiuiBleAppService$2;-><init>(Lcom/android/bluetooth/ble/app/MiuiBleAppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mActionAlarmReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/bluetooth/ble/app/MiuiBleAppService$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/app/MiuiBleAppService$3;-><init>(Lcom/android/bluetooth/ble/app/MiuiBleAppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mBluetoothSwitchListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/bluetooth/ble/app/MiuiBleAppService$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/ble/app/MiuiBleAppService$4;-><init>(Lcom/android/bluetooth/ble/app/MiuiBleAppService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mBleSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/ble/app/MiuiBleAppService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiuiBleAppService;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/ble/app/MiuiBleAppService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiuiBleAppService;

    .prologue
    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->updateDevices()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/ble/app/MiuiBleAppService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiuiBleAppService;

    .prologue
    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->stopDevices()V

    return-void
.end method

.method private stopDevices()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/app/BaseBleDevice;

    .local v0, "device":Lcom/android/bluetooth/ble/app/BaseBleDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/app/BaseBleDevice;->stop()V

    goto :goto_0

    .end local v0    # "device":Lcom/android/bluetooth/ble/app/BaseBleDevice;
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private updateDevices()V
    .locals 6

    .prologue
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .local v4, "oldDevices":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-virtual {v5}, Lcom/android/bluetooth/ble/app/BleSettings;->getAllDevices()Ljava/util/List;

    move-result-object v1

    .local v1, "boundDevice":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "device":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {p0, v2}, Lcom/android/bluetooth/ble/app/BleDeviceFactory;->createBleDevice(Landroid/content/Context;Ljava/lang/String;)Lcom/android/bluetooth/ble/app/BaseBleDevice;

    move-result-object v0

    .local v0, "bleDevice":Lcom/android/bluetooth/ble/app/BaseBleDevice;
    iget-object v5, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-virtual {v5, v2}, Lcom/android/bluetooth/ble/app/BleSettings;->getDeviceSettings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/ble/app/BaseBleDevice;->setSettings(Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/app/BaseBleDevice;->start()V

    iget-object v5, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "bleDevice":Lcom/android/bluetooth/ble/app/BaseBleDevice;
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/app/BaseBleDevice;

    .restart local v0    # "bleDevice":Lcom/android/bluetooth/ble/app/BaseBleDevice;
    iget-object v5, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-virtual {v5, v2}, Lcom/android/bluetooth/ble/app/BleSettings;->getDeviceSettings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/ble/app/BaseBleDevice;->setSettings(Ljava/util/Map;)V

    goto :goto_0

    .end local v0    # "bleDevice":Lcom/android/bluetooth/ble/app/BaseBleDevice;
    .end local v2    # "device":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .restart local v2    # "device":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/app/BaseBleDevice;

    .restart local v0    # "bleDevice":Lcom/android/bluetooth/ble/app/BaseBleDevice;
    invoke-virtual {v0}, Lcom/android/bluetooth/ble/app/BaseBleDevice;->stop()V

    iget-object v5, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mBinder:Lcom/android/bluetooth/ble/app/MiuiBleAppService$AppServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v4, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->TAG:Ljava/lang/String;

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "bluetoothFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mBluetoothSwitchListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Lcom/android/bluetooth/ble/app/MiuiBleAppService$AppServiceBinder;

    invoke-direct {v4, p0}, Lcom/android/bluetooth/ble/app/MiuiBleAppService$AppServiceBinder;-><init>(Lcom/android/bluetooth/ble/app/MiuiBleAppService;)V

    iput-object v4, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mBinder:Lcom/android/bluetooth/ble/app/MiuiBleAppService$AppServiceBinder;

    new-instance v4, Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-direct {v4, p0}, Lcom/android/bluetooth/ble/app/BleSettings;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    iget-object v4, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-virtual {v4}, Lcom/android/bluetooth/ble/app/BleSettings;->open()V

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/ble/app/BleSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mBleSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v4, "miui.deskclock.ACTION_ALARM"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "miui.phone.ACTION_ALARM"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "miui.sms.ACTION_ALARM"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mActionAlarmReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v2}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    const-string v6, "miui.permission.BLE_IMMEDIATE_ALERT"

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mRecieverRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "filter":Landroid/content/IntentFilter;
    :goto_0
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void

    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->TAG:Ljava/lang/String;

    const-string v5, "registerReceiver error"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v2, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->TAG:Ljava/lang/String;

    const-string v3, "onDestroy()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mBluetoothSwitchListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mBleSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-boolean v2, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mRecieverRegistered:Z

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mActionAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v4, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mRecieverRegistered:Z

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-virtual {v2}, Lcom/android/bluetooth/ble/app/BleSettings;->close()V

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->stopDevices()V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->TAG:Ljava/lang/String;

    const-string v3, "unregisterReceiver error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    sget-object v0, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->TAG:Ljava/lang/String;

    const-string v1, "onStartCommand()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->stopDevices()V

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->updateDevices()V

    const/4 v0, 0x1

    return v0
.end method
