.class Lcom/android/bluetooth/ble/property/UnlockProperty$4;
.super Ljava/lang/Object;
.source "UnlockProperty.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/property/UnlockProperty;->postInvalide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/property/UnlockProperty;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$4;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty$4;->this$0:Lcom/android/bluetooth/ble/property/UnlockProperty;

    # invokes: Lcom/android/bluetooth/ble/property/UnlockProperty;->checkUnlockState()V
    invoke-static {v0}, Lcom/android/bluetooth/ble/property/UnlockProperty;->access$800(Lcom/android/bluetooth/ble/property/UnlockProperty;)V

    return-void
.end method
