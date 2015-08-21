.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;
.super Landroid/database/ContentObserver;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;->onChange(ZLandroid/net/Uri;)V

    .line 135
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChanges()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$000(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V

    .line 143
    return-void
.end method
