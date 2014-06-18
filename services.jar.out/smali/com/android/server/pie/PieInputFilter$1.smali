.class Lcom/android/server/pie/PieInputFilter$1;
.super Ljava/lang/Object;
.source "PieInputFilter.java"

# interfaces
.implements Lcom/android/server/pie/PieGestureTracker$OnActivationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pie/PieInputFilter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pie/PieInputFilter;


# direct methods
.method constructor <init>(Lcom/android/server/pie/PieInputFilter;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/pie/PieInputFilter$1;->this$0:Lcom/android/server/pie/PieInputFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivation(Landroid/view/MotionEvent;IILcom/android/internal/util/pie/PiePosition;)V
    .locals 2
    .parameter "event"
    .parameter "touchX"
    .parameter "touchY"
    .parameter "position"

    .prologue
    iget-object v0, p0, Lcom/android/server/pie/PieInputFilter$1;->this$0:Lcom/android/server/pie/PieInputFilter;

    #getter for: Lcom/android/server/pie/PieInputFilter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/pie/PieInputFilter;->access$000(Lcom/android/server/pie/PieInputFilter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d17

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/server/pie/PieInputFilter$1;->this$0:Lcom/android/server/pie/PieInputFilter;

    sget-object v1, Lcom/android/server/pie/PieInputFilter$State;->LOCKED:Lcom/android/server/pie/PieInputFilter$State;

    #setter for: Lcom/android/server/pie/PieInputFilter;->mState:Lcom/android/server/pie/PieInputFilter$State;
    invoke-static {v0, v1}, Lcom/android/server/pie/PieInputFilter;->access$102(Lcom/android/server/pie/PieInputFilter;Lcom/android/server/pie/PieInputFilter$State;)Lcom/android/server/pie/PieInputFilter$State;

    return-void
.end method
