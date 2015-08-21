.class public final Lcom/android/bluetooth/ble/DevicePickerFragment;
.super Landroid/preference/PreferenceFragment;
.source "DevicePickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ble/DevicePickerFragment$4;,
        Lcom/android/bluetooth/ble/DevicePickerFragment$State;
    }
.end annotation


# static fields
.field public static final EXTRA_LAUNCH_TYPE:Ljava/lang/String; = "com.android.bluetooth.ble.LAUNCH_TYPE"

.field public static final LAUNCH_TYPE_MANAGER:I = 0x1

.field public static final LAUNCH_TYPE_NORMAL:I = 0x0

.field private static final MENU_SCAN:I = 0x1

.field private static final MSG_UPDATE:I = 0x12c

.field public static final REQUEST_OPEN_BT_CODE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DevicePickerFragment"


# instance fields
.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mConnectedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mCurrentState:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

.field private mHandler:Landroid/os/Handler;

.field private mLaunchType:I

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mSearchIcon:Lcom/android/bluetooth/ble/MiuiSearchDrawable;

.field private mStartScanOnResume:Z

.field private mUuids:[Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mLaunchType:I

    sget-object v0, Lcom/android/bluetooth/ble/DevicePickerFragment$State;->START:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    iput-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mCurrentState:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    new-instance v0, Lcom/android/bluetooth/ble/DevicePickerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/DevicePickerFragment$1;-><init>(Lcom/android/bluetooth/ble/DevicePickerFragment;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/DevicePickerFragment$3;-><init>(Lcom/android/bluetooth/ble/DevicePickerFragment;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/ble/DevicePickerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DevicePickerFragment;

    .prologue
    invoke-direct {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->updateContent()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/ble/DevicePickerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DevicePickerFragment;

    .prologue
    iget-boolean v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mStartScanOnResume:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/ble/DevicePickerFragment;)Lcom/android/bluetooth/ble/DevicePickerFragment$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DevicePickerFragment;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mCurrentState:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/ble/DevicePickerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DevicePickerFragment;

    .prologue
    invoke-direct {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->scanLeDevice()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DevicePickerFragment;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DevicePickerFragment;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/ble/DevicePickerFragment;)Lcom/android/bluetooth/ble/MiuiSearchDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DevicePickerFragment;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mSearchIcon:Lcom/android/bluetooth/ble/MiuiSearchDrawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/ble/DevicePickerFragment;Lcom/android/bluetooth/ble/DevicePickerFragment$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DevicePickerFragment;
    .param p1, "x1"    # Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/DevicePickerFragment;->switchState(Lcom/android/bluetooth/ble/DevicePickerFragment$State;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/preference/PreferenceGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DevicePickerFragment;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DevicePickerFragment;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;

    return-object v0
.end method

.method private scanLeDevice()V
    .locals 6

    .prologue
    const-wide/16 v0, 0x2710

    .local v0, "SCAN_PERIOD":J
    iget-object v2, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/bluetooth/ble/DevicePickerFragment$2;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/ble/DevicePickerFragment$2;-><init>(Lcom/android/bluetooth/ble/DevicePickerFragment;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mCurrentState:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    sget-object v3, Lcom/android/bluetooth/ble/DevicePickerFragment$State;->SCANNING:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mUuids:[Ljava/util/UUID;

    iget-object v4, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    iget-object v2, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mSearchIcon:Lcom/android/bluetooth/ble/MiuiSearchDrawable;

    invoke-virtual {v2}, Lcom/android/bluetooth/ble/MiuiSearchDrawable;->playAnimation()V

    sget-object v2, Lcom/android/bluetooth/ble/DevicePickerFragment$State;->SCANNING:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/ble/DevicePickerFragment;->switchState(Lcom/android/bluetooth/ble/DevicePickerFragment$State;)V

    :cond_0
    return-void
.end method

.method private switchState(Lcom/android/bluetooth/ble/DevicePickerFragment$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    .prologue
    sget-object v0, Lcom/android/bluetooth/ble/DevicePickerFragment$4;->$SwitchMap$com$android$bluetooth$ble$DevicePickerFragment$State:[I

    invoke-virtual {p1}, Lcom/android/bluetooth/ble/DevicePickerFragment$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/android/bluetooth/ble/DevicePickerFragment$State;->SCANNING:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    iput-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mCurrentState:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/bluetooth/ble/DevicePickerFragment$State;->STOP_SCANNING:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    iput-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mCurrentState:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateContent()V
    .locals 9

    .prologue
    const/4 v8, 0x7

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mConnectedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mConnectedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .local v5, "rootScreen":Landroid/preference/PreferenceScreen;
    if-nez v5, :cond_2

    const-string v6, "DevicePickerFragment"

    const-string v7, "rootScreen is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v6, v8}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v1

    .local v1, "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    new-instance v6, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mConnectedDevicesCategory:Landroid/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mConnectedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v7, 0x7f060004

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mConnectedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6, v2}, Lcom/android/bluetooth/ble/BluetoothDevicePreference;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .local v0, "btPreference":Lcom/android/bluetooth/ble/BluetoothDevicePreference;
    invoke-virtual {v0, p0}, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mConnectedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .end local v0    # "btPreference":Lcom/android/bluetooth/ble/BluetoothDevicePreference;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v6, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v7, 0x7f060005

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v6, v2, v8}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6, v2}, Lcom/android/bluetooth/ble/BluetoothDevicePreference;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .restart local v0    # "btPreference":Lcom/android/bluetooth/ble/BluetoothDevicePreference;
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->setOrder(I)V

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .end local v0    # "btPreference":Lcom/android/bluetooth/ble/BluetoothDevicePreference;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_5
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .local v0, "bd":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/ble/DevicePickerActivity;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/ble/DevicePickerActivity;->gotoDeviceProfile(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 v3, 0x7f040000

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/ble/DevicePickerFragment;->addPreferencesFromResource(I)V

    new-instance v3, Lcom/android/bluetooth/ble/MiuiSearchDrawable;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/bluetooth/ble/MiuiSearchDrawable;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mSearchIcon:Lcom/android/bluetooth/ble/MiuiSearchDrawable;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "bluetooth"

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothManager;

    iput-object v3, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mConnectedDevicesCategory:Landroid/preference/PreferenceGroup;

    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "miui.bluetooth.extra.MIBLE_PROPERTY"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "property":I
    invoke-static {v1}, Lcom/android/bluetooth/ble/property/BlePropertyFactory;->getPropertyServiceUUIDs(I)[Ljava/util/UUID;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mUuids:[Ljava/util/UUID;

    const-string v3, "com.android.bluetooth.ble.LAUNCH_TYPE"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mLaunchType:I

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "user"

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .local v2, "um":Landroid/os/UserManager;
    const-string v3, "no_config_bluetooth"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mStartScanOnResume:Z

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/ble/DevicePickerFragment;->setHasOptionsMenu(Z)V

    return-void

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_0

    const v1, 0x7f060007

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .local v0, "item":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mSearchIcon:Lcom/android/bluetooth/ble/MiuiSearchDrawable;

    invoke-virtual {v1}, Lcom/android/bluetooth/ble/MiuiSearchDrawable;->getSearchIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->updateContent()V

    iget-object v1, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mCurrentState:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    sget-object v2, Lcom/android/bluetooth/ble/DevicePickerFragment$State;->SCANNING:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->scanLeDevice()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mCurrentState:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    sget-object v1, Lcom/android/bluetooth/ble/DevicePickerFragment$State;->STOP_SCANNING:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    iget-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mSearchIcon:Lcom/android/bluetooth/ble/MiuiSearchDrawable;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/MiuiSearchDrawable;->stopAnimation()V

    sget-object v0, Lcom/android/bluetooth/ble/DevicePickerFragment$State;->STOP_SCANNING:Lcom/android/bluetooth/ble/DevicePickerFragment$State;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->switchState(Lcom/android/bluetooth/ble/DevicePickerFragment$State;)V

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    move-object v0, p2

    check-cast v0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;

    .local v0, "btPreference":Lcom/android/bluetooth/ble/BluetoothDevicePreference;
    iget-object v1, v0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3
.end method

.method public onResume()V
    .locals 5

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    iget-object v1, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/ble/DevicePickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/DevicePickerFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
