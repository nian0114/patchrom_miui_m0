.class public Lcom/android/bluetooth/ble/MiuiSearchDrawable;
.super Lcom/android/bluetooth/ble/MiuiAnimationController;
.source "MiuiSearchDrawable.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v0, 0x7f020000

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/ble/MiuiSearchDrawable;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconRes"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ble/MiuiAnimationController;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected getAnimationDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Animatable;
    .locals 6
    .param p1, "animationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .local v1, "icon":Landroid/graphics/drawable/StateListDrawable;
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x101009e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v2

    .local v2, "index":I
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .local v0, "anim":Landroid/graphics/drawable/AnimatedRotateDrawable;
    return-object v0
.end method

.method public getSearchIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/MiuiAnimationController;->getAnimationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/bluetooth/ble/MiuiAnimationController;->stopAnimation()V

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/MiuiAnimationController;->getAnimationDrawable()Landroid/graphics/drawable/Animatable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .local v0, "anim":Landroid/graphics/drawable/AnimatedRotateDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    return-void
.end method
