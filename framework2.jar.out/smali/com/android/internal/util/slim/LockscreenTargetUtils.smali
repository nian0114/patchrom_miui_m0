.class public final Lcom/android/internal/util/slim/LockscreenTargetUtils;
.super Ljava/lang/Object;
.source "LockscreenTargetUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LockscreenTargetUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawableFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "fileName"

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "lockscreen_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/slim/ImageHelper;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static getDrawableFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .local v1, info:Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_0

    const v4, 0x1080093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, icon:Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p0, v0}, Lcom/android/internal/util/slim/LockscreenTargetUtils;->resizeIconTarget(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static getDrawableFromResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "identifier"
    .parameter "activated"

    .prologue
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, res:Landroid/content/res/Resources;
    :goto_0
    if-eqz p3, :cond_0

    const-string v4, "_normal"

    const-string v5, "_activated"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    :try_start_1
    const-string v4, "drawable"

    invoke-virtual {v2, p2, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, id:I
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .end local v1           #id:I
    .end local v2           #res:Landroid/content/res/Resources;
    :goto_1
    return-object v3

    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "LockscreenTargetUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not fetch icons from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .restart local v2       #res:Landroid/content/res/Resources;
    const-string p1, "android"

    goto :goto_0

    :catch_1
    move-exception v0

    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "LockscreenTargetUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not resolve icon "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getInsetForIconType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    const-string v5, "icon_resource"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .local v2, keyguardResources:Landroid/content/res/Resources;
    :try_start_0
    const-string v5, "com.android.keyguard"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, res:Landroid/content/res/Resources;
    const-string v5, "com.android.keyguard:dimen/lockscreen_target_inset"

    invoke-virtual {v2, v5, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .local v1, inset:I
    const-string v5, "icon_file"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "com.android.keyguard:dimen/lockscreen_target_icon_file_inset"

    invoke-virtual {v2, v5, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_0

    .end local v1           #inset:I
    .end local v4           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getLayeredDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 16
    .parameter "context"
    .parameter "back"
    .parameter "front"
    .parameter "inset"
    .parameter "frontBlank"

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .local v12, pm:Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    .local v11, keyguardResources:Landroid/content/res/Resources;
    :try_start_0
    const-string v0, "com.android.keyguard"

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .local v13, res:Landroid/content/res/Resources;
    const/4 v0, 0x2

    new-array v10, v0, [Landroid/graphics/drawable/InsetDrawable;

    .local v10, inactivelayer:[Landroid/graphics/drawable/InsetDrawable;
    const/4 v0, 0x2

    new-array v7, v0, [Landroid/graphics/drawable/InsetDrawable;

    .local v7, activelayer:[Landroid/graphics/drawable/InsetDrawable;
    const/4 v15, 0x0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const-string v1, "com.android.keyguard:drawable/ic_lockscreen_lock_pressed"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v11, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v10, v15

    const/4 v15, 0x1

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v10, v15

    const/4 v15, 0x0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v7, v15

    const/4 v15, 0x1

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz p4, :cond_0

    const v1, 0x106000d

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v7, v15

    new-instance v9, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v9, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v9, inactiveLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v6, activeLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    new-instance v14, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v14}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .local v14, states:Landroid/graphics/drawable/StateListDrawable;
    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v14, v0, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v14, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v14, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v14

    .end local v6           #activeLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v7           #activelayer:[Landroid/graphics/drawable/InsetDrawable;
    .end local v9           #inactiveLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v10           #inactivelayer:[Landroid/graphics/drawable/InsetDrawable;
    .end local v13           #res:Landroid/content/res/Resources;
    .end local v14           #states:Landroid/graphics/drawable/StateListDrawable;
    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v8           #e:Ljava/lang/Exception;
    .restart local v7       #activelayer:[Landroid/graphics/drawable/InsetDrawable;
    .restart local v10       #inactivelayer:[Landroid/graphics/drawable/InsetDrawable;
    .restart local v13       #res:Landroid/content/res/Resources;
    :cond_0
    move-object/from16 v1, p2

    goto :goto_1
.end method

.method public static getMaxTargets(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    invoke-static {p0}, Lcom/android/internal/util/slim/DeviceUtils;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/util/slim/LockscreenTargetUtils;->isEightTargets(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x7

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static getTargetOffset(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v4, :cond_2

    move v1, v2

    .local v1, isLandscape:Z
    :goto_0
    invoke-static {p0}, Lcom/android/internal/util/slim/DeviceUtils;->isPhone(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0}, Lcom/android/internal/util/slim/LockscreenTargetUtils;->isEightTargets(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    move v0, v2

    .local v0, isEightOrLarge:Z
    :goto_1
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    move v3, v4

    :cond_1
    return v3

    .end local v0           #isEightOrLarge:Z
    .end local v1           #isLandscape:Z
    :cond_2
    move v1, v3

    goto :goto_0

    .restart local v1       #isLandscape:Z
    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public static isEightTargets(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_eight_targets"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isShortcuts(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_shortcuts"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, apps:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static resizeIconTarget(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "context"
    .parameter "icon"

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .local v11, res:Landroid/content/res/Resources;
    const/high16 v17, 0x105

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v12, v0

    .local v12, size:I
    move/from16 v16, v12

    .local v16, width:I
    move v6, v12

    .local v6, height:I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v9, p1

    check-cast v9, Landroid/graphics/drawable/PaintDrawable;

    .local v9, painter:Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v9, v6}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .end local v9           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .local v14, sourceWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .local v13, sourceHeight:I
    if-lez v14, :cond_2

    if-lez v13, :cond_2

    move/from16 v0, v16

    if-lt v0, v14, :cond_1

    if-ge v6, v13, :cond_5

    :cond_1
    int-to-float v0, v14

    move/from16 v17, v0

    int-to-float v0, v13

    move/from16 v18, v0

    div-float v10, v17, v18

    .local v10, ratio:F
    if-le v14, v13, :cond_4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v10

    move/from16 v0, v17

    float-to-int v6, v0

    .end local v10           #ratio:F
    :cond_2
    :goto_1
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    invoke-static {v12, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .local v5, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v5, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sub-int v17, v12, v16

    div-int/lit8 v7, v17, 0x2

    .local v7, left:I
    sub-int v17, v12, v6

    div-int/lit8 v15, v17, 0x2

    .local v15, top:I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .local v8, oldBounds:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    add-int v17, v7, v16

    add-int v18, v15, v6

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v7, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v3

    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v7           #left:I
    .end local v8           #oldBounds:Landroid/graphics/Rect;
    .end local v13           #sourceHeight:I
    .end local v14           #sourceWidth:I
    .end local v15           #top:I
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v4, p1

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .local v4, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v10       #ratio:F
    .restart local v13       #sourceHeight:I
    .restart local v14       #sourceWidth:I
    :cond_4
    if-le v13, v14, :cond_2

    int-to-float v0, v6

    move/from16 v17, v0

    mul-float v17, v17, v10

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    goto :goto_1

    .end local v10           #ratio:F
    :cond_5
    move/from16 v0, v16

    if-ge v14, v0, :cond_2

    if-ge v13, v6, :cond_2

    move/from16 v16, v14

    move v6, v13

    goto :goto_1
.end method
