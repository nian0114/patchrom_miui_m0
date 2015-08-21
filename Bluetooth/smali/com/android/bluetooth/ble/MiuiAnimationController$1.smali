.class Lcom/android/bluetooth/ble/MiuiAnimationController$1;
.super Ljava/lang/Object;
.source "MiuiAnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/MiuiAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/MiuiAnimationController;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/MiuiAnimationController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/MiuiAnimationController$1;->this$0:Lcom/android/bluetooth/ble/MiuiAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController$1;->this$0:Lcom/android/bluetooth/ble/MiuiAnimationController;

    # invokes: Lcom/android/bluetooth/ble/MiuiAnimationController;->playAnimationImmediately()V
    invoke-static {v0}, Lcom/android/bluetooth/ble/MiuiAnimationController;->access$000(Lcom/android/bluetooth/ble/MiuiAnimationController;)V

    return-void
.end method
