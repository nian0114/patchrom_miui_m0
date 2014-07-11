.class public Lcom/android/internal/util/cm/LockscreenBackgroundUtil;
.super Ljava/lang/Object;
.source "LockscreenBackgroundUtil.java"


# static fields
.field public static final LOCKSCREEN_STYLE_DEFAULT:I = 0x0

.field public static final LOCKSCREEN_STYLE_IMAGE:I = 0x1

.field private static final LOCKSCREEN_WALLPAPER_FILE_NAME:Ljava/lang/String; = "lockwallpaper"

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLockscreenStyle(Landroid/content/Context;)I
    .locals 3
    .parameter "ctx"

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_background_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getWallpaperFile(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .parameter "ctx"

    .prologue
    .line 21
    const/4 v1, 0x0

    .line 22
    .local v1, settingsContext:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    move-object v1, p0

    .line 32
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "lockwallpaper"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    return-object v2

    .line 26
    :cond_0
    :try_start_0
    const-string v2, "com.android.settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_1
.end method
