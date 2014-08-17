.class public Lcom/android/internal/util/slim/PolicyHelper;
.super Ljava/lang/Object;
.source "PolicyHelper.java"


# static fields
.field private static final SYSTEMUI_METADATA_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSTEM_METADATA_NAME:Ljava/lang/String; = "android"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPowerMenuConfigWithDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "context"
    .parameter "values"
    .parameter "entries"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/slim/ButtonConfig;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_menu_config"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, config:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "**poweroff**|empty|**reboot**|empty|**airplane**|empty|**sound**|empty|"

    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->getButtonsConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public static getPowerMenuIconImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 23
    .parameter "context"
    .parameter "clickAction"
    .parameter "customIcon"
    .parameter "colorize"

    .prologue
    const/16 v16, -0x1

    .local v16, resId:I
    const/4 v14, -0x2

    .local v14, iconColor:I
    const/4 v4, 0x0

    .local v4, colorMode:I
    const/4 v6, 0x0

    .local v6, d:Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .local v8, dError:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .local v15, pm:Landroid/content/pm/PackageManager;
    if-nez v15, :cond_0

    const/16 v19, 0x0

    :goto_0
    return-object v19

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "power_menu_icon_color"

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "power_menu_icon_color_mode"

    const/16 v21, 0x0

    const/16 v22, -0x2

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/16 v19, -0x2

    move/from16 v0, v19

    if-ne v14, v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1060073

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    :cond_1
    const-string v19, "**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    :try_start_0
    const-string v19, ".*?hasExtraIcon="

    const-string v20, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, extraIconPath:Ljava/lang/String;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    new-instance v13, Ljava/io/File;

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v13, f:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_2

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    .local v7, d:Landroid/graphics/drawable/Drawable;
    move-object v6, v7

    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    .end local v13           #f:Ljava/io/File;
    .restart local v6       #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    if-nez v6, :cond_3

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .end local v12           #extraIconPath:Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v5, 0x0

    .local v5, coloring:Z
    if-eqz p2, :cond_5

    const-string v19, "system_shortcut="

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    :try_start_1
    const-string v19, "android"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v17

    .local v17, systemResources:Landroid/content/res/Resources;
    const-string v19, "system_shortcut="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "drawable"

    const-string v21, "android"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_4

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v4, v0, :cond_4

    if-eqz p3, :cond_4

    const/4 v5, 0x1

    :cond_4
    move-object v7, v6

    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    .end local v17           #systemResources:Landroid/content/res/Resources;
    .restart local v7       #d:Landroid/graphics/drawable/Drawable;
    :goto_2
    if-nez v8, :cond_a

    if-eqz v5, :cond_b

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v7, v14}, Lcom/android/internal/util/slim/ImageHelper;->getColoredBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    .restart local v6       #d:Landroid/graphics/drawable/Drawable;
    :goto_3
    const/16 v19, 0x23

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v6, v1}, Lcom/android/internal/util/slim/ImageHelper;->resize(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    goto/16 :goto_0

    .end local v5           #coloring:Z
    :catch_0
    move-exception v10

    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v19, "com.android.systemui"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v18

    .local v18, systemUiResources:Landroid/content/res/Resources;
    const-string v19, "com.android.systemui:drawable/ic_sysbar_null"

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_3

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v4, v0, :cond_3

    if-nez v4, :cond_3

    if-eqz p3, :cond_3

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v8, v14}, Lcom/android/internal/util/slim/ImageHelper;->getColoredBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .end local v8           #dError:Landroid/graphics/drawable/Drawable;
    .local v9, dError:Landroid/graphics/drawable/Drawable;
    move-object v8, v9

    .end local v9           #dError:Landroid/graphics/drawable/Drawable;
    .restart local v8       #dError:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .end local v18           #systemUiResources:Landroid/content/res/Resources;
    :catch_1
    move-exception v11

    .local v11, ex:Ljava/lang/Exception;
    const-string v19, "PolicyHelper:"

    const-string v20, "can\'t access systemui resources"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v10

    .local v10, e:Ljava/net/URISyntaxException;
    invoke-virtual {v10}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_1

    .end local v10           #e:Ljava/net/URISyntaxException;
    .restart local v5       #coloring:Z
    :catch_3
    move-exception v10

    .local v10, e:Ljava/lang/Exception;
    const-string v19, "PolicyHelper:"

    const-string v20, "can\'t access system resources"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    .end local v10           #e:Ljava/lang/Exception;
    :cond_5
    if-eqz p2, :cond_8

    const-string v19, "empty"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    new-instance v13, Ljava/io/File;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v13       #f:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_7

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    new-instance v20, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/util/slim/ImageHelper;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v6       #d:Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v4, v0, :cond_6

    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v4, v0, :cond_6

    if-eqz p3, :cond_6

    const/4 v5, 0x1

    :cond_6
    move-object v7, v6

    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    .restart local v7       #d:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    .restart local v6       #d:Landroid/graphics/drawable/Drawable;
    :cond_7
    const-string v19, "PolicyHelper:"

    const-string v20, "can\'t access custom icon image"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    .end local v13           #f:Ljava/io/File;
    :cond_8
    const-string v19, "**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-static/range {p0 .. p1}, Lcom/android/internal/util/slim/PolicyHelper;->getPowerMenuSystemIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v4, v0, :cond_c

    if-eqz p3, :cond_c

    const/4 v5, 0x1

    move-object v7, v6

    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    .restart local v7       #d:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    .restart local v6       #d:Landroid/graphics/drawable/Drawable;
    :cond_9
    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v4, v0, :cond_c

    if-nez v4, :cond_c

    if-eqz p3, :cond_c

    const/4 v5, 0x1

    move-object v7, v6

    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    .restart local v7       #d:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    :cond_a
    const/16 v19, 0x23

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v8, v1}, Lcom/android/internal/util/slim/ImageHelper;->resize(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object v6, v7

    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    .restart local v6       #d:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    .restart local v7       #d:Landroid/graphics/drawable/Drawable;
    :cond_b
    move-object v6, v7

    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    .restart local v6       #d:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    :cond_c
    move-object v7, v6

    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    .restart local v7       #d:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2
.end method

.method private static getPowerMenuSystemIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "clickAction"

    .prologue
    const-string v0, "**poweroff**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "**reboot**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10802ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "**screenshot**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10802f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "**airplane**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10802ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "**expanded_desktop**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10802ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "**pie**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10802ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v0, "**nav_bar**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10802ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setPowerMenuConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter "reset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/slim/ButtonConfig;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, buttonsConfig:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/util/slim/ButtonConfig;>;"
    if-eqz p2, :cond_0

    const-string v0, "**poweroff**|empty|**reboot**|empty|**airplane**|empty|**sound**|empty|"

    .local v0, config:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_menu_config"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .end local v0           #config:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->setButtonsConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #config:Ljava/lang/String;
    goto :goto_0
.end method
