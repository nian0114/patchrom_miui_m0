.class Lcom/android/bluetooth/ble/SynchronizedGattCallback$1;
.super Ljava/lang/Object;
.source "SynchronizedGattCallback.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/SynchronizedGattCallback;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/SynchronizedGattCallback;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/SynchronizedGattCallback;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$1;->this$0:Lcom/android/bluetooth/ble/SynchronizedGattCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
