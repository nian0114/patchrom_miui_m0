.class abstract Lcom/android/bluetooth/ble/app/AlertBleDevice;
.super Lcom/android/bluetooth/ble/app/BaseBleDevice;
.source "AlertBleDevice.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPendingAlertTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/bluetooth/ble/app/AlertBleDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ble/app/BaseBleDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mPendingAlertTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/android/bluetooth/ble/app/AlertBleDevice;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/AlertBleDevice;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mPendingAlertTask:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method abstract getAlertDataForCancel()[B
.end method

.method abstract getAlertDataForClock()[B
.end method

.method abstract getAlertDataForIncall()[B
.end method

.method abstract getAlertDataForSMS()[B
.end method

.method onReceiveAlarmAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, 0x0

    if-nez p2, :cond_1

    sget-object v3, Lcom/android/bluetooth/ble/app/AlertBleDevice;->TAG:Ljava/lang/String;

    const-string v4, "onReceiveAlarmAction() No extra data, skip..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "miui.deskclock.ACTION_ALARM"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "alert_alarm_enabled"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getSettingBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mProfile:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getAlertDataForClock()[B

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lmiui/bluetooth/ble/MiBleProfile;->setProperty(I[B)Z

    goto :goto_0

    :cond_2
    const-string v3, "miui.phone.ACTION_ALARM"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "alert_incall_enabled"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getSettingBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "contact"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "contact":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "shouldAlert":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "alert_incall_enabled_no_contacts"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getSettingBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    const-string v3, "alert_incall_delayed"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getSettingsInteter(Ljava/lang/String;)I

    move-result v1

    .local v1, "delayed":I
    new-instance v3, Lcom/android/bluetooth/ble/app/AlertBleDevice$1;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice$1;-><init>(Lcom/android/bluetooth/ble/app/AlertBleDevice;)V

    iput-object v3, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mPendingAlertTask:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mPendingAlertTask:Ljava/lang/Runnable;

    int-to-long v5, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v1    # "delayed":I
    :cond_4
    const-string v3, "alert_incall_enabled_in_contacts"

    invoke-virtual {p0, v3, v6}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getSettingBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    .end local v0    # "contact":Ljava/lang/String;
    .end local v2    # "shouldAlert":Z
    :cond_5
    const-string v3, "miui.sms.ACTION_ALARM"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "contact"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contact":Ljava/lang/String;
    const-string v3, "alert_sms_enabled"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getSettingBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    .restart local v2    # "shouldAlert":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "alert_sms_enabled_no_contacts"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getSettingBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x1

    :cond_6
    :goto_2
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mProfile:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getAlertDataForSMS()[B

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lmiui/bluetooth/ble/MiBleProfile;->setProperty(I[B)Z

    goto/16 :goto_0

    :cond_7
    const-string v3, "alert_sms_enabled_in_contacts"

    invoke-virtual {p0, v3, v6}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getSettingBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    .end local v0    # "contact":Ljava/lang/String;
    .end local v2    # "shouldAlert":Z
    :cond_8
    const-string v3, "miui.bluetooth.alert.CANCEL"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mPendingAlertTask:Ljava/lang/Runnable;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mPendingAlertTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mPendingAlertTask:Ljava/lang/Runnable;

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/android/bluetooth/ble/app/AlertBleDevice;->mProfile:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getAlertDataForCancel()[B

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lmiui/bluetooth/ble/MiBleProfile;->setProperty(I[B)Z

    goto/16 :goto_0
.end method
