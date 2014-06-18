.class public Lcom/android/server/pie/PieGestureTracker;
.super Ljava/lang/Object;
.source "PieGestureTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pie/PieGestureTracker$1;,
        Lcom/android/server/pie/PieGestureTracker$OnActivationListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final PIXEL_SWIPE_OFFTAKE_SLOP:I = 0x2

.field public static final TAG:Ljava/lang/String; = "PieTracker"

.field public static final TRIGGER_TIME_MS:J = 0x8cL


# instance fields
.field private mActivationListener:Lcom/android/server/pie/PieGestureTracker$OnActivationListener;

.field private mActive:Z

.field private final mBasePerpendicularDistance:I

.field private final mBaseThickness:I

.field private final mBaseTriggerDistance:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDownTime:J

.field private mGracePeriod:I

.field private mGracePeriodDistance:I

.field private mInitialX:I

.field private mInitialY:I

.field private mOffTake:I

.field private mPerpendicularDistance:I

.field private mPosition:Lcom/android/internal/util/pie/PiePosition;

.field private mThickness:I

.field private mTimeOut:J

.field private mTriggerDistance:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter "thickness"
    .parameter "distance"
    .parameter "perpendicular"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pie/PieGestureTracker;->mBaseThickness:I

    iput p2, p0, Lcom/android/server/pie/PieGestureTracker;->mBaseTriggerDistance:I

    iput p3, p0, Lcom/android/server/pie/PieGestureTracker;->mBasePerpendicularDistance:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pie/PieGestureTracker;->setSensitivity(I)V

    return-void
.end method

.method private setSensitivity(I)V
    .locals 4
    .parameter "sensitivity"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v0, 0x0

    .local v0, factor:F
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    const/high16 v2, 0x4080

    div-float v0, v1, v2

    :cond_0
    const/high16 v1, 0x430c

    add-float v2, v0, v3

    mul-float/2addr v1, v2

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/pie/PieGestureTracker;->mTimeOut:J

    iget v1, p0, Lcom/android/server/pie/PieGestureTracker;->mBaseThickness:I

    int-to-float v1, v1

    add-float v2, v0, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/pie/PieGestureTracker;->mThickness:I

    iget v1, p0, Lcom/android/server/pie/PieGestureTracker;->mBaseTriggerDistance:I

    int-to-float v1, v1

    sub-float v2, v3, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/pie/PieGestureTracker;->mTriggerDistance:I

    iget v1, p0, Lcom/android/server/pie/PieGestureTracker;->mBasePerpendicularDistance:I

    int-to-float v1, v1

    sub-float v2, v3, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/pie/PieGestureTracker;->mPerpendicularDistance:I

    iget v1, p0, Lcom/android/server/pie/PieGestureTracker;->mThickness:I

    int-to-float v1, v1

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/pie/PieGestureTracker;->mGracePeriodDistance:I

    return-void
.end method

.method private startWithPosition(Landroid/view/MotionEvent;Lcom/android/internal/util/pie/PiePosition;)V
    .locals 2
    .parameter "motionEvent"
    .parameter "position"

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pie/PieGestureTracker;->mDownTime:J

    iput-object p2, p0, Lcom/android/server/pie/PieGestureTracker;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/pie/PieGestureTracker;->mInitialX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/pie/PieGestureTracker;->mInitialY:I

    sget-object v0, Lcom/android/server/pie/PieGestureTracker$1;->$SwitchMap$com$android$internal$util$pie$PiePosition:[I

    invoke-virtual {p2}, Lcom/android/internal/util/pie/PiePosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pie/PieGestureTracker;->mActive:Z

    return-void

    :pswitch_0
    iget v0, p0, Lcom/android/server/pie/PieGestureTracker;->mGracePeriodDistance:I

    iput v0, p0, Lcom/android/server/pie/PieGestureTracker;->mGracePeriod:I

    iget v0, p0, Lcom/android/server/pie/PieGestureTracker;->mInitialX:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/pie/PieGestureTracker;->mOffTake:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/server/pie/PieGestureTracker;->mInitialY:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/pie/PieGestureTracker;->mOffTake:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/server/pie/PieGestureTracker;->mDisplayWidth:I

    iget v1, p0, Lcom/android/server/pie/PieGestureTracker;->mGracePeriodDistance:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/pie/PieGestureTracker;->mGracePeriod:I

    iget v0, p0, Lcom/android/server/pie/PieGestureTracker;->mInitialX:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/pie/PieGestureTracker;->mOffTake:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/android/server/pie/PieGestureTracker;->mInitialY:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/pie/PieGestureTracker;->mOffTake:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public move(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "motionEvent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v7, p0, Lcom/android/server/pie/PieGestureTracker;->mActive:Z

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/pie/PieGestureTracker;->mDownTime:J

    sub-long/2addr v7, v9

    iget-wide v9, p0, Lcom/android/server/pie/PieGestureTracker;->mTimeOut:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    :cond_0
    const-string v5, "PieTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pie gesture timeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/pie/PieGestureTracker;->mDownTime:J

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/server/pie/PieGestureTracker;->mActive:Z

    move v2, v6

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .local v4, y:I
    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mInitialX:I

    sub-int v0, v3, v7

    .local v0, deltaX:I
    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mInitialY:I

    sub-int v1, v4, v7

    .local v1, deltaY:I
    const/4 v2, 0x0

    .local v2, loaded:Z
    sget-object v7, Lcom/android/server/pie/PieGestureTracker$1;->$SwitchMap$com$android$internal$util$pie$PiePosition:[I

    iget-object v8, p0, Lcom/android/server/pie/PieGestureTracker;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    invoke-virtual {v8}, Lcom/android/internal/util/pie/PiePosition;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :cond_3
    :goto_1
    iput-boolean v6, p0, Lcom/android/server/pie/PieGestureTracker;->mActive:Z

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/server/pie/PieGestureTracker;->mActivationListener:Lcom/android/server/pie/PieGestureTracker$OnActivationListener;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/pie/PieGestureTracker;->mActivationListener:Lcom/android/server/pie/PieGestureTracker$OnActivationListener;

    iget-object v6, p0, Lcom/android/server/pie/PieGestureTracker;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    invoke-interface {v5, p1, v3, v4, v6}, Lcom/android/server/pie/PieGestureTracker$OnActivationListener;->onActivation(Landroid/view/MotionEvent;IILcom/android/internal/util/pie/PiePosition;)V

    goto :goto_0

    :pswitch_0
    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mGracePeriod:I

    if-ge v3, v7, :cond_4

    iput v4, p0, Lcom/android/server/pie/PieGestureTracker;->mInitialY:I

    :cond_4
    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mPerpendicularDistance:I

    if-ge v1, v7, :cond_3

    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mPerpendicularDistance:I

    neg-int v7, v7

    if-le v1, v7, :cond_3

    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mOffTake:I

    if-lt v3, v7, :cond_3

    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mTriggerDistance:I

    if-ge v0, v7, :cond_5

    add-int/lit8 v6, v3, -0x2

    iput v6, p0, Lcom/android/server/pie/PieGestureTracker;->mOffTake:I

    move v2, v5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_1
    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mPerpendicularDistance:I

    if-ge v0, v7, :cond_3

    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mPerpendicularDistance:I

    neg-int v7, v7

    if-le v0, v7, :cond_3

    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mOffTake:I

    if-gt v4, v7, :cond_3

    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mTriggerDistance:I

    neg-int v7, v7

    if-le v1, v7, :cond_6

    add-int/lit8 v6, v4, 0x2

    iput v6, p0, Lcom/android/server/pie/PieGestureTracker;->mOffTake:I

    move v2, v5

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_2
    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mGracePeriod:I

    if-le v3, v7, :cond_7

    iput v4, p0, Lcom/android/server/pie/PieGestureTracker;->mInitialY:I

    :cond_7
    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mPerpendicularDistance:I

    if-ge v1, v7, :cond_3

    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mPerpendicularDistance:I

    neg-int v7, v7

    if-le v1, v7, :cond_3

    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mOffTake:I

    if-gt v3, v7, :cond_3

    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mTriggerDistance:I

    neg-int v7, v7

    if-le v0, v7, :cond_8

    add-int/lit8 v6, v3, 0x2

    iput v6, p0, Lcom/android/server/pie/PieGestureTracker;->mOffTake:I

    move v2, v5

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_3
    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mPerpendicularDistance:I

    if-ge v0, v7, :cond_3

    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mPerpendicularDistance:I

    neg-int v7, v7

    if-le v0, v7, :cond_3

    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mOffTake:I

    if-lt v4, v7, :cond_3

    iget v7, p0, Lcom/android/server/pie/PieGestureTracker;->mTriggerDistance:I

    if-ge v1, v7, :cond_9

    add-int/lit8 v6, v4, -0x2

    iput v6, p0, Lcom/android/server/pie/PieGestureTracker;->mOffTake:I

    move v2, v5

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pie/PieGestureTracker;->mActive:Z

    return-void
.end method

.method public setOnActivationListener(Lcom/android/server/pie/PieGestureTracker$OnActivationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/android/server/pie/PieGestureTracker;->mActivationListener:Lcom/android/server/pie/PieGestureTracker$OnActivationListener;

    return-void
.end method

.method public start(Landroid/view/MotionEvent;II)Z
    .locals 9
    .parameter "motionEvent"
    .parameter "positions"
    .parameter "sensitivity"

    .prologue
    const/4 v4, 0x1

    const v8, 0x3f666666

    const v7, 0x3dcccccd

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/android/server/pie/PieGestureTracker;->mDisplayWidth:I

    int-to-float v6, v6

    div-float v0, v5, v6

    .local v0, fx:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/android/server/pie/PieGestureTracker;->mDisplayHeight:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .local v1, fy:F
    invoke-direct {p0, p3}, Lcom/android/server/pie/PieGestureTracker;->setSensitivity(I)V

    sget-object v5, Lcom/android/internal/util/pie/PiePosition;->LEFT:Lcom/android/internal/util/pie/PiePosition;

    iget v5, v5, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/server/pie/PieGestureTracker;->mThickness:I

    if-ge v2, v5, :cond_0

    cmpl-float v5, v1, v7

    if-lez v5, :cond_0

    cmpg-float v5, v1, v8

    if-gez v5, :cond_0

    sget-object v5, Lcom/android/internal/util/pie/PiePosition;->LEFT:Lcom/android/internal/util/pie/PiePosition;

    invoke-direct {p0, p1, v5}, Lcom/android/server/pie/PieGestureTracker;->startWithPosition(Landroid/view/MotionEvent;Lcom/android/internal/util/pie/PiePosition;)V

    :goto_0
    return v4

    :cond_0
    sget-object v5, Lcom/android/internal/util/pie/PiePosition;->BOTTOM:Lcom/android/internal/util/pie/PiePosition;

    iget v5, v5, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/server/pie/PieGestureTracker;->mDisplayHeight:I

    iget v6, p0, Lcom/android/server/pie/PieGestureTracker;->mThickness:I

    sub-int/2addr v5, v6

    if-le v3, v5, :cond_1

    cmpl-float v5, v0, v7

    if-lez v5, :cond_1

    cmpg-float v5, v0, v8

    if-gez v5, :cond_1

    sget-object v5, Lcom/android/internal/util/pie/PiePosition;->BOTTOM:Lcom/android/internal/util/pie/PiePosition;

    invoke-direct {p0, p1, v5}, Lcom/android/server/pie/PieGestureTracker;->startWithPosition(Landroid/view/MotionEvent;Lcom/android/internal/util/pie/PiePosition;)V

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/android/internal/util/pie/PiePosition;->RIGHT:Lcom/android/internal/util/pie/PiePosition;

    iget v5, v5, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/server/pie/PieGestureTracker;->mDisplayWidth:I

    iget v6, p0, Lcom/android/server/pie/PieGestureTracker;->mThickness:I

    sub-int/2addr v5, v6

    if-le v2, v5, :cond_2

    cmpl-float v5, v1, v7

    if-lez v5, :cond_2

    cmpg-float v5, v1, v8

    if-gez v5, :cond_2

    sget-object v5, Lcom/android/internal/util/pie/PiePosition;->RIGHT:Lcom/android/internal/util/pie/PiePosition;

    invoke-direct {p0, p1, v5}, Lcom/android/server/pie/PieGestureTracker;->startWithPosition(Landroid/view/MotionEvent;Lcom/android/internal/util/pie/PiePosition;)V

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/android/internal/util/pie/PiePosition;->TOP:Lcom/android/internal/util/pie/PiePosition;

    iget v5, v5, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/server/pie/PieGestureTracker;->mThickness:I

    if-ge v3, v5, :cond_3

    cmpl-float v5, v0, v7

    if-lez v5, :cond_3

    cmpg-float v5, v0, v8

    if-gez v5, :cond_3

    sget-object v5, Lcom/android/internal/util/pie/PiePosition;->TOP:Lcom/android/internal/util/pie/PiePosition;

    invoke-direct {p0, p1, v5}, Lcom/android/server/pie/PieGestureTracker;->startWithPosition(Landroid/view/MotionEvent;Lcom/android/internal/util/pie/PiePosition;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public updateDisplay(Landroid/view/Display;)V
    .locals 2
    .parameter "display"

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .local v0, outSize:Landroid/graphics/Point;
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/server/pie/PieGestureTracker;->mDisplayWidth:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/server/pie/PieGestureTracker;->mDisplayHeight:I

    return-void
.end method
