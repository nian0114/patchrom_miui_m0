.class Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;
.super Ljava/lang/Object;
.source "BluetoothOppLauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

.field final synthetic val$fileUri:Landroid/net/Uri;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;->val$fileUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;->val$fileUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppManager;->saveSendingFileInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->launchDevicePicker()V
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->access$000(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;)V

    .line 126
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 127
    return-void
.end method
