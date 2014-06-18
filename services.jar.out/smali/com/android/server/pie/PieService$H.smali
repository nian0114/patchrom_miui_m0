.class final Lcom/android/server/pie/PieService$H;
.super Landroid/os/Handler;
.source "PieService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pie/PieService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pie/PieService;


# direct methods
.method public constructor <init>(Lcom/android/server/pie/PieService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/android/server/pie/PieService$H;->this$0:Lcom/android/server/pie/PieService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private updateServiceHandler(II)V
    .locals 2
    .parameter "positions"
    .parameter "sensitivity"

    .prologue
    iget-object v0, p0, Lcom/android/server/pie/PieService$H;->this$0:Lcom/android/server/pie/PieService;

    #getter for: Lcom/android/server/pie/PieService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pie/PieService;->access$200(Lcom/android/server/pie/PieService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pie/PieService$H;->this$0:Lcom/android/server/pie/PieService;

    #getter for: Lcom/android/server/pie/PieService;->mInputFilter:Lcom/android/server/pie/PieInputFilter;
    invoke-static {v0}, Lcom/android/server/pie/PieService;->access$100(Lcom/android/server/pie/PieService;)Lcom/android/server/pie/PieInputFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pie/PieService$H;->this$0:Lcom/android/server/pie/PieService;

    #getter for: Lcom/android/server/pie/PieService;->mInputFilter:Lcom/android/server/pie/PieInputFilter;
    invoke-static {v0}, Lcom/android/server/pie/PieService;->access$100(Lcom/android/server/pie/PieService;)Lcom/android/server/pie/PieInputFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pie/PieInputFilter;->updatePositions(I)V

    iget-object v0, p0, Lcom/android/server/pie/PieService$H;->this$0:Lcom/android/server/pie/PieService;

    #getter for: Lcom/android/server/pie/PieService;->mInputFilter:Lcom/android/server/pie/PieInputFilter;
    invoke-static {v0}, Lcom/android/server/pie/PieService;->access$100(Lcom/android/server/pie/PieService;)Lcom/android/server/pie/PieInputFilter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/pie/PieInputFilter;->updateSensitivity(I)V

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


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "m"

    .prologue
    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/16 v0, 0x7d17

    invoke-virtual {p0, v0}, Lcom/android/server/pie/PieService$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/pie/PieService$H;->this$0:Lcom/android/server/pie/PieService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/pie/PiePosition;

    #calls: Lcom/android/server/pie/PieService;->propagateActivation(IILcom/android/internal/util/pie/PiePosition;)Z
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/pie/PieService;->access$1000(Lcom/android/server/pie/PieService;IILcom/android/internal/util/pie/PiePosition;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v4, v4}, Lcom/android/server/pie/PieService$H;->updateServiceHandler(II)V

    goto :goto_0

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/pie/PieService$H;->updateServiceHandler(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7d17
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
