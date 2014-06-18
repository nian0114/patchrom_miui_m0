.class final Lcom/android/server/pie/PieService$PieActivationListenerRecord;
.super Landroid/service/pie/IPieHostCallback$Stub;
.source "PieService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pie/PieService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PieActivationListenerRecord"
.end annotation


# instance fields
.field public final listener:Landroid/service/pie/IPieActivationListener;

.field private mActive:Z

.field public positions:I

.field public sensitivity:I

.field final synthetic this$0:Lcom/android/server/pie/PieService;


# direct methods
.method public constructor <init>(Lcom/android/server/pie/PieService;Landroid/service/pie/IPieActivationListener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->this$0:Lcom/android/server/pie/PieService;

    invoke-direct {p0}, Landroid/service/pie/IPieHostCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->listener:Landroid/service/pie/IPieActivationListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->positions:I

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pie/PieService$PieActivationListenerRecord;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->updateFlags(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/pie/PieService$PieActivationListenerRecord;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->eligibleForActivation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/pie/PieService$PieActivationListenerRecord;IILcom/android/internal/util/pie/PiePosition;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->notifyPieActivation(IILcom/android/internal/util/pie/PiePosition;)Z

    move-result v0

    return v0
.end method

.method private eligibleForActivation(I)Z
    .locals 1
    .parameter "positionFlag"

    .prologue
    iget v0, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->positions:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyPieActivation(IILcom/android/internal/util/pie/PiePosition;)Z
    .locals 4
    .parameter "touchX"
    .parameter "touchY"
    .parameter "position"

    .prologue
    iget v1, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->positions:I

    iget v2, p3, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->listener:Landroid/service/pie/IPieActivationListener;

    iget v2, p3, Lcom/android/internal/util/pie/PiePosition;->INDEX:I

    const/4 v3, 0x0

    invoke-interface {v1, p1, p2, v2, v3}, Landroid/service/pie/IPieActivationListener;->onPieActivation(IIII)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->mActive:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->mActive:Z

    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PieService"

    const-string v2, "Failed to notify process, assuming it died."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->binderDied()V

    goto :goto_0
.end method

.method private updateFlags(I)V
    .locals 1
    .parameter "flags"

    .prologue
    and-int/lit8 v0, p1, 0xf

    iput v0, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->positions:I

    const/high16 v0, 0x7000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x1c

    iput v0, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->sensitivity:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->this$0:Lcom/android/server/pie/PieService;

    #calls: Lcom/android/server/pie/PieService;->removeListenerRecord(Lcom/android/server/pie/PieService$PieActivationListenerRecord;)V
    invoke-static {v0, p0}, Lcom/android/server/pie/PieService;->access$000(Lcom/android/server/pie/PieService;Lcom/android/server/pie/PieService$PieActivationListenerRecord;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .parameter "pw"
    .parameter "prefix"

    .prologue
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPositions=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->positions:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBinder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->listener:Landroid/service/pie/IPieActivationListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public gainTouchFocus(Landroid/os/IBinder;)Z
    .locals 1
    .parameter "windowToken"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->mActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->this$0:Lcom/android/server/pie/PieService;

    #getter for: Lcom/android/server/pie/PieService;->mInputFilter:Lcom/android/server/pie/PieInputFilter;
    invoke-static {v0}, Lcom/android/server/pie/PieService;->access$100(Lcom/android/server/pie/PieService;)Lcom/android/server/pie/PieInputFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pie/PieInputFilter;->unlockFilter()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreListenerState()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->mActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->this$0:Lcom/android/server/pie/PieService;

    #getter for: Lcom/android/server/pie/PieService;->mInputFilter:Lcom/android/server/pie/PieInputFilter;
    invoke-static {v0}, Lcom/android/server/pie/PieService;->access$100(Lcom/android/server/pie/PieService;)Lcom/android/server/pie/PieInputFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pie/PieInputFilter;->unlockFilter()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->mActive:Z

    iget-object v0, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->this$0:Lcom/android/server/pie/PieService;

    #getter for: Lcom/android/server/pie/PieService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pie/PieService;->access$200(Lcom/android/server/pie/PieService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->this$0:Lcom/android/server/pie/PieService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/pie/PieService;->mActiveRecord:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    invoke-static {v0, v2}, Lcom/android/server/pie/PieService;->access$302(Lcom/android/server/pie/PieService;Lcom/android/server/pie/PieService$PieActivationListenerRecord;)Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    iget-object v0, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->this$0:Lcom/android/server/pie/PieService;

    #getter for: Lcom/android/server/pie/PieService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/pie/PieService;->access$600(Lcom/android/server/pie/PieService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x7d19

    iget-object v3, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->this$0:Lcom/android/server/pie/PieService;

    #getter for: Lcom/android/server/pie/PieService;->mGlobalPositions:I
    invoke-static {v3}, Lcom/android/server/pie/PieService;->access$400(Lcom/android/server/pie/PieService;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->this$0:Lcom/android/server/pie/PieService;

    #getter for: Lcom/android/server/pie/PieService;->mGlobalSensitivity:I
    invoke-static {v4}, Lcom/android/server/pie/PieService;->access$500(Lcom/android/server/pie/PieService;)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
