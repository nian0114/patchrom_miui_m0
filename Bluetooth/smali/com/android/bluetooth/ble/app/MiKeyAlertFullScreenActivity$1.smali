.class Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity$1;
.super Ljava/lang/Object;
.source "MiKeyAlertFullScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity$1;->this$0:Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity$1;->this$0:Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->finish()V

    return-void
.end method
