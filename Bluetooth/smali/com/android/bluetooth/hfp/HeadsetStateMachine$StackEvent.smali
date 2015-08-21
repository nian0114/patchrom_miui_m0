.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
.super Ljava/lang/Object;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackEvent"
.end annotation


# instance fields
.field device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

.field type:I

.field valueInt:I

.field valueInt2:I

.field valueString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 2
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2057
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2051
    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    .line 2052
    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    .line 2053
    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt2:I

    .line 2054
    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2055
    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 2058
    iput p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    .line 2059
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;

    .prologue
    .line 2050
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    return-void
.end method
