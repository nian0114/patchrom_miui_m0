.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$Injector;
.super Ljava/lang/Object;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# static fields
.field static final MAX_BLUETOOTH_BATTERY_LEVEL:I = 0x9

.field static final MIN_BLUETOOTH_BATTERY_LEVEL:I

.field static mShowingBluetoothBattery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Injector;->mShowingBluetoothBattery:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelBluetoothBattery(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    sget-boolean v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Injector;->mShowingBluetoothBattery:Z

    if-eqz v1, :cond_0

    invoke-static {v2, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Injector;->createBluetoothBatteryChangedIntent(ZI)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sput-boolean v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Injector;->mShowingBluetoothBattery:Z

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method static createBluetoothBatteryChangedIntent(ZI)Landroid/content/Intent;
    .locals 2
    .param p0, "show"    # Z
    .param p1, "level"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BLUETOOTH_HANDSFREE_BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.show_bluetooth_handsfree_battery"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.bluetooth_handsfree_battery_level"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method static notifyBluetoothBattery(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x1

    if-ltz p1, :cond_0

    const/16 v1, 0x9

    if-gt p1, v1, :cond_0

    invoke-static {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Injector;->createBluetoothBatteryChangedIntent(ZI)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sput-boolean v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Injector;->mShowingBluetoothBattery:Z

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
