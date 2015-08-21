.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;
.super Ljava/lang/Object;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackEvent"
.end annotation


# instance fields
.field device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

.field type:I

.field valueInt:I


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V
    .locals 1
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 729
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    .line 726
    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 730
    iput p2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    .line 731
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILcom/android/bluetooth/a2dp/A2dpStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;

    .prologue
    .line 724
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V

    return-void
.end method
