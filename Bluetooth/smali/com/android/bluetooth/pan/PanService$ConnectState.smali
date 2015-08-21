.class public Lcom/android/bluetooth/pan/PanService$ConnectState;
.super Ljava/lang/Object;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ConnectState"
.end annotation


# instance fields
.field addr:[B

.field error:I

.field local_role:I

.field remote_role:I

.field state:I


# direct methods
.method public constructor <init>([BIIII)V
    .locals 0
    .param p1, "address"    # [B
    .param p2, "state"    # I
    .param p3, "error"    # I
    .param p4, "local_role"    # I
    .param p5, "remote_role"    # I

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->addr:[B

    .line 364
    iput p2, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->state:I

    .line 365
    iput p3, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->error:I

    .line 366
    iput p4, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->local_role:I

    .line 367
    iput p5, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->remote_role:I

    .line 368
    return-void
.end method
