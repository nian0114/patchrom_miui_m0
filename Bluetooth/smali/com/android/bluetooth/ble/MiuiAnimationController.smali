.class public abstract Lcom/android/bluetooth/ble/MiuiAnimationController;
.super Ljava/lang/Object;
.source "MiuiAnimationController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiAnimationDrawable"


# instance fields
.field private mAnimating:Z

.field private mAnimationDrawable:Landroid/graphics/drawable/Animatable;

.field private mAnimationIcon:Landroid/graphics/drawable/Drawable;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconRes"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/bluetooth/ble/MiuiAnimationController$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/MiuiAnimationController$1;-><init>(Lcom/android/bluetooth/ble/MiuiAnimationController;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mAnimationRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ble/MiuiAnimationController;->load(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/ble/MiuiAnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/MiuiAnimationController;

    .prologue
    invoke-direct {p0}, Lcom/android/bluetooth/ble/MiuiAnimationController;->playAnimationImmediately()V

    return-void
.end method

.method private load(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconRes"    # I

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mAnimationIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mAnimationIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ble/MiuiAnimationController;->getAnimationDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Animatable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mAnimationDrawable:Landroid/graphics/drawable/Animatable;

    iget-object v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mAnimationDrawable:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void
.end method

.method private playAnimationDelayed()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private playAnimationImmediately()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mAnimationIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MiuiAnimationDrawable"

    const-string v1, "playAnimationImmediately: callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mAnimationDrawable:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mAnimating:Z

    goto :goto_0
.end method


# virtual methods
.method protected getAnimationDrawable()Landroid/graphics/drawable/Animatable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mAnimationDrawable:Landroid/graphics/drawable/Animatable;

    return-object v0
.end method

.method protected abstract getAnimationDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Animatable;
.end method

.method public getAnimationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mAnimationIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mAnimating:Z

    return v0
.end method

.method public playAnimation()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mAnimationIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/ble/MiuiAnimationController;->playAnimationImmediately()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/ble/MiuiAnimationController;->playAnimationDelayed()V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mAnimationDrawable:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mAnimating:Z

    iget-object v0, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/ble/MiuiAnimationController;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
