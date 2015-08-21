.class Lcom/android/bluetooth/gatt/SearchQueue$Entry;
.super Ljava/lang/Object;
.source "SearchQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/SearchQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field public charInstId:I

.field public charUuidLsb:J

.field public charUuidMsb:J

.field public connId:I

.field public srvcInstId:I

.field public srvcType:I

.field public srvcUuidLsb:J

.field public srvcUuidMsb:J

.field final synthetic this$0:Lcom/android/bluetooth/gatt/SearchQueue;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/SearchQueue;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->this$0:Lcom/android/bluetooth/gatt/SearchQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
