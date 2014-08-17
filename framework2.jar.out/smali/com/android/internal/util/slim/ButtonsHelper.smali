.class public Lcom/android/internal/util/slim/ButtonsHelper;
.super Ljava/lang/Object;
.source "ButtonsHelper.java"


# static fields
.field private static final SETTINGS_METADATA_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final SYSTEMUI_METADATA_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSTEM_METADATA_NAME:Ljava/lang/String; = "android"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getButtonIconImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .parameter "context"
    .parameter "clickAction"
    .parameter "customIcon"

    .prologue
    const/4 v8, 0x0

    const/4 v6, -0x1

    .local v6, resId:I
    const/4 v0, 0x0

    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .local v5, pm:Landroid/content/pm/PackageManager;
    if-nez v5, :cond_0

    :goto_0
    return-object v8

    :cond_0
    :try_start_0
    const-string v9, "com.android.systemui"

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .local v7, systemUiResources:Landroid/content/res/Resources;
    const-string v9, "**"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    :try_start_1
    const-string v9, ".*?hasExtraIcon="

    const-string v10, ""

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, extraIconPath:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .local v1, d:Landroid/graphics/drawable/Drawable;
    move-object v0, v1

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #f:Ljava/io/File;
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    if-nez v0, :cond_2

    const/4 v9, 0x0

    invoke-static {p1, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .end local v3           #extraIconPath:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    const-string v9, "system_shortcut="

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v8, "system_shortcut="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_0

    .end local v7           #systemUiResources:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v9, "ButtonsHelper:"

    const-string v10, "can\'t access systemui resources"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v7       #systemUiResources:Landroid/content/res/Resources;
    :catch_1
    move-exception v2

    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "com.android.systemui:drawable/ic_sysbar_null"

    invoke-virtual {v7, v9, v8, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_0

    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v2

    .local v2, e:Ljava/net/URISyntaxException;
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .end local v2           #e:Ljava/net/URISyntaxException;
    :cond_3
    if-eqz p2, :cond_5

    const-string v9, "empty"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v4, Ljava/io/File;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v4       #f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/util/slim/ImageHelper;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_4
    const-string v9, "ButtonsHelper:"

    const-string v10, "can\'t access custom icon image"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4           #f:Ljava/io/File;
    :cond_5
    const-string v8, "**"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v7, p1}, Lcom/android/internal/util/slim/ButtonsHelper;->getButtonsSystemIcon(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto/16 :goto_0

    :cond_6
    move-object v8, v0

    goto/16 :goto_0
.end method

.method private static getButtonsSystemIcon(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3
    .parameter "systemUiResources"
    .parameter "clickAction"

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .local v0, resId:I
    const-string v1, "**home**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.systemui:drawable/ic_sysbar_home"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v1, "**back**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.systemui:drawable/ic_sysbar_back"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v1, "**recents**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.android.systemui:drawable/ic_sysbar_recent"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v1, "**search**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "**assist**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "com.android.systemui:drawable/ic_sysbar_search"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_4
    const-string v1, "**keyguard_search**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "com.android.systemui:drawable/search_light"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_5
    const-string v1, "**screenshot**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "com.android.systemui:drawable/ic_sysbar_screenshot"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_6
    const-string v1, "**menu**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "com.android.systemui:drawable/ic_sysbar_menu"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_7
    const-string v1, "**menu_big**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "com.android.systemui:drawable/ic_sysbar_menu_big"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_8
    const-string v1, "**ime**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "com.android.systemui:drawable/ic_sysbar_ime_switcher"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_9
    const-string v1, "**expanded_desktop**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "com.android.systemui:drawable/ic_sysbar_expanded_desktop"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_a
    const-string v1, "**kill**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "com.android.systemui:drawable/ic_sysbar_killtask"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_b
    const-string v1, "**power**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "com.android.systemui:drawable/ic_sysbar_power"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_c
    const-string v1, "**power_menu**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "com.android.systemui:drawable/ic_sysbar_power_menu"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_d
    const-string v1, "**notifications**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "com.android.systemui:drawable/ic_sysbar_notifications"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_e
    const-string v1, "**lastapp**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "com.android.systemui:drawable/ic_sysbar_lastapp"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_f
    const-string v1, "**quicksettings**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "com.android.systemui:drawable/ic_sysbar_qs"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_10
    const-string v1, "**pie**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "com.android.systemui:drawable/ic_sysbar_pie"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_11
    const-string v1, "**nav_bar**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "com.android.systemui:drawable/ic_sysbar_navbar"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_12
    const-string v1, "**ring_vib**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "com.android.systemui:drawable/ic_sysbar_vib"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_13
    const-string v1, "**ring_silent**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "com.android.systemui:drawable/ic_sysbar_silent"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_14
    const-string v1, "**ring_vib_silent**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "com.android.systemui:drawable/ic_sysbar_ring_vib_silent"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_15
    const-string v1, "**torch**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "com.android.systemui:drawable/ic_sysbar_torch"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_16
    const-string v1, "**theme_switch**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "com.android.systemui:drawable/ic_sysbar_theme_switch"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_17
    const-string v1, "com.android.systemui:drawable/ic_sysbar_null"

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public static getLockscreenShortcutConfig(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/slim/ButtonConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_shortcuts"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, config:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v4, v4, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->getButtonsConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public static getNavBarConfig(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/slim/ButtonConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    invoke-static {p0}, Lcom/android/internal/util/slim/ButtonsHelper;->getNavBarProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v2, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->getButtonsConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getNavBarConfigWithDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
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
    invoke-static {p0}, Lcom/android/internal/util/slim/ButtonsHelper;->getNavBarProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->getButtonsConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getNavBarProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigation_bar_config"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, config:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "**back**|**null**|empty|**home**|**null**|empty|**recents**|**null**|empty"

    :cond_0
    return-object v0
.end method

.method public static getNavRingConfig(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/slim/ButtonConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    invoke-static {p0}, Lcom/android/internal/util/slim/ButtonsHelper;->getNavRingProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v2, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->getButtonsConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getNavRingConfigWithDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
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
    invoke-static {p0}, Lcom/android/internal/util/slim/ButtonsHelper;->getNavRingProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->getButtonsConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getNavRingProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navring_config"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, config:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "**assist**|**null**|empty"

    :cond_0
    return-object v0
.end method

.method public static getNotificationsShortcutConfig(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/slim/ButtonConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_shortcuts_config"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, config:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v4, v4, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->getButtonsConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public static getPieConfig(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/slim/ButtonConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    invoke-static {p0}, Lcom/android/internal/util/slim/ButtonsHelper;->getPieProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v2, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->getButtonsConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getPieConfigWithDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
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
    invoke-static {p0}, Lcom/android/internal/util/slim/ButtonsHelper;->getPieProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->getButtonsConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getPieProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pie_buttons_config"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, config:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "**back**|**null**|empty|**home**|**null**|empty|**recents**|**null**|empty"

    :cond_0
    return-object v0
.end method

.method public static getPieSecondLayerConfig(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/slim/ButtonConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    invoke-static {p0}, Lcom/android/internal/util/slim/ButtonsHelper;->getPieSecondLayerProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v2, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->getButtonsConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getPieSecondLayerConfigWithDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
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
    invoke-static {p0}, Lcom/android/internal/util/slim/ButtonsHelper;->getPieSecondLayerProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->getButtonsConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getPieSecondLayerProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pie_buttons_config_second_layer"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, config:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "**power_menu**|**null**|empty|**notifications**|**null**|empty|**search**|**null**|empty|**screenshot**|**null**|empty|**ime**|**null**|empty"

    :cond_0
    return-object v0
.end method

.method public static setLockscreenShortcutConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
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

    const-string v0, ""

    .local v0, config:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_shortcuts"

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

.method public static setNavBarConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
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

    const-string v0, "**back**|**null**|empty|**home**|**null**|empty|**recents**|**null**|empty"

    .local v0, config:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigation_bar_config"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .end local v0           #config:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->setButtonsConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #config:Ljava/lang/String;
    goto :goto_0
.end method

.method public static setNavRingConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
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

    const-string v0, "**assist**|**null**|empty"

    .local v0, config:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navring_config"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .end local v0           #config:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->setButtonsConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #config:Ljava/lang/String;
    goto :goto_0
.end method

.method public static setNotificationShortcutConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 4
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

    const-string v0, ""

    .local v0, config:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_shortcuts_color"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_shortcuts_color_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_shortcuts_config"

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

.method public static setPieConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
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

    const-string v0, "**back**|**null**|empty|**home**|**null**|empty|**recents**|**null**|empty"

    .local v0, config:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pie_buttons_config"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .end local v0           #config:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->setButtonsConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #config:Ljava/lang/String;
    goto :goto_0
.end method

.method public static setPieSecondLayerConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
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

    const-string v0, "**power_menu**|**null**|empty|**notifications**|**null**|empty|**search**|**null**|empty|**screenshot**|**null**|empty|**ime**|**null**|empty"

    .local v0, config:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pie_buttons_config_second_layer"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .end local v0           #config:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->setButtonsConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #config:Ljava/lang/String;
    goto :goto_0
.end method
