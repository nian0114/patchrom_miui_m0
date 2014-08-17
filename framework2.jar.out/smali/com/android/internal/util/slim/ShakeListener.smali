.class public Lcom/android/internal/util/slim/ShakeListener;
.super Ljava/lang/Object;
.source "ShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/slim/ShakeListener$OnShakeListener;
    }
.end annotation


# static fields
.field private static final MAX_DURATION:I = 0x190

.field private static final MIN_ACCEL:I = 0xc

.field private static final MIN_SHAKES:I = 0x5

.field private static final X_ACCEL:I = 0x0

.field private static final Y_ACCEL:I = 0x1

.field private static final Z_ACCEL:I = 0x2


# instance fields
.field private mAccelDirection:I

.field private mAccelX:F

.field private mAccelY:F

.field private mAccelZ:F

.field private mContext:Landroid/content/Context;

.field private mGravX:F

.field private mGravY:F

.field private mGravZ:F

.field private mInitialShake:J

.field private mLastShake:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShakeCount:I

.field private mShakeListener:Lcom/android/internal/util/slim/ShakeListener$OnShakeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/util/slim/ShakeListener;->mGravX:F

    iput v0, p0, Lcom/android/internal/util/slim/ShakeListener;->mGravY:F

    iput v0, p0, Lcom/android/internal/util/slim/ShakeListener;->mGravZ:F

    iput v0, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelX:F

    iput v0, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelY:F

    iput v0, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelZ:F

    iput-wide v1, p0, Lcom/android/internal/util/slim/ShakeListener;->mInitialShake:J

    iput-wide v1, p0, Lcom/android/internal/util/slim/ShakeListener;->mLastShake:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/slim/ShakeListener;->mShakeCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelDirection:I

    iput-object p1, p0, Lcom/android/internal/util/slim/ShakeListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getSensorManager()Landroid/hardware/SensorManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/slim/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/slim/ShakeListener;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/internal/util/slim/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/slim/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    const/4 v13, -0x1

    const v9, 0x3f4ccccd

    const v10, 0x3e4ccccc

    const/4 v12, 0x1

    const/4 v11, 0x0

    const v0, 0x3f4ccccd

    .local v0, alpha:F
    iget v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mGravX:F

    mul-float/2addr v7, v9

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v11

    mul-float/2addr v8, v10

    add-float/2addr v7, v8

    iput v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mGravX:F

    iget v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mGravY:F

    mul-float/2addr v7, v9

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v12

    mul-float/2addr v8, v10

    add-float/2addr v7, v8

    iput v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mGravY:F

    iget v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mGravZ:F

    mul-float/2addr v7, v9

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    mul-float/2addr v8, v10

    add-float/2addr v7, v8

    iput v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mGravZ:F

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v11

    iget v8, p0, Lcom/android/internal/util/slim/ShakeListener;->mGravX:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelX:F

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v12

    iget v8, p0, Lcom/android/internal/util/slim/ShakeListener;->mGravY:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelY:F

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    iget v8, p0, Lcom/android/internal/util/slim/ShakeListener;->mGravZ:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelZ:F

    const/4 v4, 0x0

    .local v4, maxLinearAcceleration:F
    iget v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelDirection:I

    packed-switch v7, :pswitch_data_0

    iget v4, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelX:F

    iput v11, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelDirection:I

    iget v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelY:F

    cmpl-float v7, v7, v4

    if-lez v7, :cond_0

    iput v12, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelDirection:I

    iget v4, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelY:F

    :cond_0
    iget v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelZ:F

    cmpl-float v7, v7, v4

    if-lez v7, :cond_1

    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelDirection:I

    iget v4, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelZ:F

    :cond_1
    const/high16 v7, 0x4140

    cmpg-float v7, v4, v7

    if-gez v7, :cond_2

    iput v13, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelDirection:I

    :cond_2
    :goto_0
    const/high16 v7, 0x4140

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .local v5, now:J
    const/4 v3, 0x0

    .local v3, firstShake:Z
    iget-wide v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mInitialShake:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    const/4 v3, 0x1

    iput-wide v5, p0, Lcom/android/internal/util/slim/ShakeListener;->mInitialShake:J

    iput-wide v5, p0, Lcom/android/internal/util/slim/ShakeListener;->mLastShake:J

    :cond_3
    iget-wide v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mInitialShake:J

    sub-long v1, v5, v7

    .local v1, elapsedTime:J
    const-wide/16 v7, 0x190

    cmp-long v7, v1, v7

    if-gtz v7, :cond_6

    if-nez v3, :cond_4

    iget-wide v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mLastShake:J

    sub-long v7, v5, v7

    const-wide/16 v9, 0xf

    cmp-long v7, v7, v9

    if-ltz v7, :cond_5

    :cond_4
    iput-wide v5, p0, Lcom/android/internal/util/slim/ShakeListener;->mLastShake:J

    iget v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mShakeCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mShakeCount:I

    iget v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mShakeCount:I

    const/4 v8, 0x5

    if-lt v7, v8, :cond_5

    iget-object v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mShakeListener:Lcom/android/internal/util/slim/ShakeListener$OnShakeListener;

    invoke-interface {v7}, Lcom/android/internal/util/slim/ShakeListener$OnShakeListener;->onShake()V

    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mInitialShake:J

    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/internal/util/slim/ShakeListener;->mLastShake:J

    iput v11, p0, Lcom/android/internal/util/slim/ShakeListener;->mShakeCount:I

    iput v13, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelDirection:I

    .end local v1           #elapsedTime:J
    .end local v3           #firstShake:Z
    .end local v5           #now:J
    :cond_5
    :goto_1
    return-void

    :pswitch_0
    iget v4, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelX:F

    goto :goto_0

    :pswitch_1
    iget v4, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelY:F

    goto :goto_0

    :pswitch_2
    iget v4, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelZ:F

    goto :goto_0

    .restart local v1       #elapsedTime:J
    .restart local v3       #firstShake:Z
    .restart local v5       #now:J
    :cond_6
    iput-wide v5, p0, Lcom/android/internal/util/slim/ShakeListener;->mInitialShake:J

    iput-wide v5, p0, Lcom/android/internal/util/slim/ShakeListener;->mLastShake:J

    iput v12, p0, Lcom/android/internal/util/slim/ShakeListener;->mShakeCount:I

    iput v13, p0, Lcom/android/internal/util/slim/ShakeListener;->mAccelDirection:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerShakeListener()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/internal/util/slim/ShakeListener;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/util/slim/ShakeListener;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public setOnShakeListener(Lcom/android/internal/util/slim/ShakeListener$OnShakeListener;)V
    .locals 0
    .parameter "shakeListener"

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/slim/ShakeListener;->mShakeListener:Lcom/android/internal/util/slim/ShakeListener$OnShakeListener;

    return-void
.end method

.method public unregisterShakeListener()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/util/slim/ShakeListener;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/slim/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method
