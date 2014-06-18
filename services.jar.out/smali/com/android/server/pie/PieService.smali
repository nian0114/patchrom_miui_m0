.class public Lcom/android/server/pie/PieService;
.super Landroid/service/pie/IPieService$Stub;
.source "PieService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pie/PieService$DisplayObserver;,
        Lcom/android/server/pie/PieService$H;,
        Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEBUG_INPUT:Z = false

.field public static final MSG_PIE_ACTIVATION:I = 0x7d17

.field public static final MSG_UPDATE_SERVICE:I = 0x7d19

.field public static final TAG:Ljava/lang/String; = "PieService"


# instance fields
.field private mActiveRecord:Lcom/android/server/pie/PieService$PieActivationListenerRecord;

.field private final mContext:Landroid/content/Context;

.field private mDisplayObserver:Lcom/android/server/pie/PieService$DisplayObserver;

.field private mGlobalPositions:I

.field private mGlobalSensitivity:I

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mInputFilter:Lcom/android/server/pie/PieInputFilter;

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;

.field private final mPieActivationListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pie/PieService$PieActivationListenerRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    .locals 2
    .parameter "context"
    .parameter "windowManager"
    .parameter "inputManager"

    .prologue
    invoke-direct {p0}, Landroid/service/pie/IPieService$Stub;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Pie"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pie/PieService;->mHandlerThread:Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pie/PieService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pie/PieService;->mGlobalPositions:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/pie/PieService;->mGlobalSensitivity:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pie/PieService;->mPieActivationListener:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pie/PieService;->mActiveRecord:Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    iput-object p1, p0, Lcom/android/server/pie/PieService;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/pie/PieService;->mInputManager:Lcom/android/server/input/InputManagerService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pie/PieService;Lcom/android/server/pie/PieService$PieActivationListenerRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pie/PieService;->removeListenerRecord(Lcom/android/server/pie/PieService$PieActivationListenerRecord;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pie/PieService;)Lcom/android/server/pie/PieInputFilter;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/pie/PieService;->mInputFilter:Lcom/android/server/pie/PieInputFilter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/pie/PieService;IILcom/android/internal/util/pie/PiePosition;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pie/PieService;->propagateActivation(IILcom/android/internal/util/pie/PiePosition;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/pie/PieService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/pie/PieService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/pie/PieService;Lcom/android/server/pie/PieService$PieActivationListenerRecord;)Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/pie/PieService;->mActiveRecord:Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/pie/PieService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/pie/PieService;->mGlobalPositions:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/pie/PieService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/pie/PieService;->mGlobalSensitivity:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/pie/PieService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/pie/PieService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private enforceMonitoringLocked()V
    .locals 3

    .prologue
    new-instance v0, Lcom/android/server/pie/PieInputFilter;

    iget-object v1, p0, Lcom/android/server/pie/PieService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pie/PieService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/pie/PieInputFilter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/pie/PieService;->mInputFilter:Lcom/android/server/pie/PieInputFilter;

    iget-object v0, p0, Lcom/android/server/pie/PieService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/pie/PieService;->mInputFilter:Lcom/android/server/pie/PieInputFilter;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->registerSecondaryInputFilter(Landroid/view/IInputFilter;)V

    iget-object v0, p0, Lcom/android/server/pie/PieService;->mDisplayObserver:Lcom/android/server/pie/PieService$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/pie/PieService$DisplayObserver;->observe()V

    return-void
.end method

.method private findListenerRecordLocked(Landroid/os/IBinder;)Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    .locals 3
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/android/server/pie/PieService;->mPieActivationListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    .local v1, record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    iget-object v2, v1, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->listener:Landroid/service/pie/IPieActivationListener;

    invoke-interface {v2}, Landroid/service/pie/IPieActivationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v1           #record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private propagateActivation(IILcom/android/internal/util/pie/PiePosition;)Z
    .locals 5
    .parameter "touchX"
    .parameter "touchY"
    .parameter "position"

    .prologue
    iget-object v3, p0, Lcom/android/server/pie/PieService;->mActiveRecord:Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    if-eqz v3, :cond_0

    const-string v3, "PieService"

    const-string v4, "Handing activition while another activition is still in progress"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/server/pie/PieService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v2, 0x0

    .local v2, target:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pie/PieService;->mPieActivationListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    .local v1, record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    iget v3, p3, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    #calls: Lcom/android/server/pie/PieService$PieActivationListenerRecord;->eligibleForActivation(I)Z
    invoke-static {v1, v3}, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->access$800(Lcom/android/server/pie/PieService$PieActivationListenerRecord;I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    .end local v1           #record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    :cond_2
    if-eqz v2, :cond_3

    #calls: Lcom/android/server/pie/PieService$PieActivationListenerRecord;->notifyPieActivation(IILcom/android/internal/util/pie/PiePosition;)Z
    invoke-static {v2, p1, p2, p3}, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->access$900(Lcom/android/server/pie/PieService$PieActivationListenerRecord;IILcom/android/internal/util/pie/PiePosition;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-object v2, p0, Lcom/android/server/pie/PieService;->mActiveRecord:Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    :cond_3
    iget-object v3, p0, Lcom/android/server/pie/PieService;->mActiveRecord:Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_0
    monitor-exit v4

    return v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private removeListenerRecord(Lcom/android/server/pie/PieService$PieActivationListenerRecord;)V
    .locals 5
    .parameter "record"

    .prologue
    iget-object v1, p0, Lcom/android/server/pie/PieService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pie/PieService;->mPieActivationListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/pie/PieService;->updateMonitoring()V

    iget-object v0, p0, Lcom/android/server/pie/PieService;->mActiveRecord:Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pie/PieService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d19

    iget v3, p0, Lcom/android/server/pie/PieService;->mGlobalPositions:I

    iget v4, p0, Lcom/android/server/pie/PieService;->mGlobalSensitivity:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pie/PieService;->mActiveRecord:Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private shutdownMonitoringLocked()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/pie/PieService;->mDisplayObserver:Lcom/android/server/pie/PieService$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/pie/PieService$DisplayObserver;->unobserve()V

    iget-object v0, p0, Lcom/android/server/pie/PieService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/pie/PieService;->mInputFilter:Lcom/android/server/pie/PieInputFilter;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterSecondaryInputFilter(Landroid/view/IInputFilter;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pie/PieService;->mInputFilter:Lcom/android/server/pie/PieInputFilter;

    return-void
.end method

.method private updateMonitoring()V
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/android/server/pie/PieService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lcom/android/server/pie/PieService;->mGlobalPositions:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/pie/PieService;->mGlobalSensitivity:I

    iget-object v2, p0, Lcom/android/server/pie/PieService;->mPieActivationListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    .local v1, temp:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    iget v2, p0, Lcom/android/server/pie/PieService;->mGlobalPositions:I

    iget v4, v1, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->positions:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/pie/PieService;->mGlobalPositions:I

    iget v2, v1, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->sensitivity:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/pie/PieService;->mGlobalSensitivity:I

    iget v4, v1, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->sensitivity:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/pie/PieService;->mGlobalSensitivity:I

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #temp:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/android/server/pie/PieService;->mGlobalSensitivity:I

    if-nez v2, :cond_2

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/pie/PieService;->mGlobalSensitivity:I

    :cond_2
    iget-object v2, p0, Lcom/android/server/pie/PieService;->mInputFilter:Lcom/android/server/pie/PieInputFilter;

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/server/pie/PieService;->mGlobalPositions:I

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/server/pie/PieService;->enforceMonitoringLocked()V

    :cond_3
    :goto_1
    monitor-exit v3

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/server/pie/PieService;->mInputFilter:Lcom/android/server/pie/PieInputFilter;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/pie/PieService;->mGlobalPositions:I

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/pie/PieService;->shutdownMonitoringLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    iget-object v3, p0, Lcom/android/server/pie/PieService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump PieService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "PIE SERVICE (dumpsys pieservice)\n"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pie/PieService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mInputFilter="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/pie/PieService;->mInputFilter:Lcom/android/server/pie/PieInputFilter;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pie/PieService;->mInputFilter:Lcom/android/server/pie/PieInputFilter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/pie/PieService;->mInputFilter:Lcom/android/server/pie/PieInputFilter;

    const-string v5, "    "

    invoke-virtual {v3, p2, v5}, Lcom/android/server/pie/PieInputFilter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mGlobalPositions=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/pie/PieService;->mGlobalPositions:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mGlobalSensitivity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/pie/PieService;->mGlobalSensitivity:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/android/server/pie/PieService;->mPieActivationListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    .local v2, record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    iget-object v3, p0, Lcom/android/server/pie/PieService;->mActiveRecord:Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    if-ne v2, v3, :cond_3

    .end local v2           #record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mActiveRecord="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/server/pie/PieService;->mActiveRecord:Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/pie/PieService;->mPieActivationListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    .restart local v2       #record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Listener #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2           #record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    :cond_4
    const-string v3, "null"

    goto :goto_2

    :cond_5
    monitor-exit v4

    goto/16 :goto_0

    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/pie/IPieService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-nez v1, :cond_0

    const-string v1, "PieService"

    const-string v2, "PieService crashed: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    throw v0
.end method

.method public registerPieActivationListener(Landroid/service/pie/IPieActivationListener;)Landroid/service/pie/IPieHostCallback;
    .locals 8
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/pie/PieService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.INJECT_EVENTS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "PieService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t register from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "listener must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v1, 0x0

    .local v1, record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    iget-object v4, p0, Lcom/android/server/pie/PieService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-interface {p1}, Landroid/service/pie/IPieActivationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/pie/PieService;->findListenerRecordLocked(Landroid/os/IBinder;)Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v2, Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    invoke-direct {v2, p0, p1}, Lcom/android/server/pie/PieService$PieActivationListenerRecord;-><init>(Lcom/android/server/pie/PieService;Landroid/service/pie/IPieActivationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1           #record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    .local v2, record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    :try_start_1
    invoke-interface {p1}, Landroid/service/pie/IPieActivationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/pie/PieService;->mPieActivationListener:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    .end local v2           #record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    .restart local v1       #record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    :cond_2
    :try_start_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .end local v1           #record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    .restart local v2       #record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "PieService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Recipient died during registration pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, v3

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    .restart local v1       #record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    goto :goto_1
.end method

.method public systemReady()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/pie/PieService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/pie/PieService$H;

    iget-object v1, p0, Lcom/android/server/pie/PieService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pie/PieService$H;-><init>(Lcom/android/server/pie/PieService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pie/PieService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/pie/PieService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pie/PieService$1;

    invoke-direct {v1, p0}, Lcom/android/server/pie/PieService$1;-><init>(Lcom/android/server/pie/PieService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/android/server/pie/PieService$DisplayObserver;

    iget-object v1, p0, Lcom/android/server/pie/PieService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pie/PieService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pie/PieService$DisplayObserver;-><init>(Lcom/android/server/pie/PieService;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/pie/PieService;->mDisplayObserver:Lcom/android/server/pie/PieService$DisplayObserver;

    invoke-direct {p0}, Lcom/android/server/pie/PieService;->updateMonitoring()V

    iget-object v0, p0, Lcom/android/server/pie/PieService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d19

    iget v2, p0, Lcom/android/server/pie/PieService;->mGlobalPositions:I

    iget v3, p0, Lcom/android/server/pie/PieService;->mGlobalSensitivity:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updatePieActivationListener(Landroid/os/IBinder;I)V
    .locals 6
    .parameter "listener"
    .parameter "positionFlags"

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/pie/PieService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pie/PieService;->findListenerRecordLocked(Landroid/os/IBinder;)Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    move-result-object v0

    .local v0, record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    if-nez v0, :cond_1

    const-string v1, "PieService"

    const-string v3, "Unknown listener on update listener. Register first?"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "listener not registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #record:Lcom/android/server/pie/PieService$PieActivationListenerRecord;
    :cond_1
    :try_start_1
    #calls: Lcom/android/server/pie/PieService$PieActivationListenerRecord;->updateFlags(I)V
    invoke-static {v0, p2}, Lcom/android/server/pie/PieService$PieActivationListenerRecord;->access$700(Lcom/android/server/pie/PieService$PieActivationListenerRecord;I)V

    invoke-direct {p0}, Lcom/android/server/pie/PieService;->updateMonitoring()V

    iget-object v1, p0, Lcom/android/server/pie/PieService;->mActiveRecord:Lcom/android/server/pie/PieService$PieActivationListenerRecord;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pie/PieService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pie/PieService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d19

    iget v4, p0, Lcom/android/server/pie/PieService;->mGlobalPositions:I

    iget v5, p0, Lcom/android/server/pie/PieService;->mGlobalSensitivity:I

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
