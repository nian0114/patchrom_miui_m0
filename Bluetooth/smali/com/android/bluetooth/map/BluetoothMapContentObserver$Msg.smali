.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Msg"
.end annotation


# instance fields
.field id:J

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field type:I


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JI)V
    .locals 0
    .param p2, "id"    # J
    .param p4, "type"    # I

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-wide p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    .line 235
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 236
    return-void
.end method
