.class public Lcom/miui/whetstone/WhetstoneManager$PermissionFile;
.super Ljava/lang/Object;
.source "WhetstoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/WhetstoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionFile"
.end annotation


# static fields
.field public static final L_VERSION_START_NUMBER:I = 0x15

.field public static final WHETSTONE_PERMISSION_ENTRY_NAME:Ljava/lang/String; = "permissions.xml"

.field public static final WHETSTONE_PERMISSION_FILE_NAME:Ljava/lang/String; = "WhetstonePermission.apk"

.field public static final WHETSTONE_VERSION_ENTRY_NAME:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDataWhetstonePermissionFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 338
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/whetstone"

    const-string v2, "WhetstonePermission.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getSystemWhetstonePermissionFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 331
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/WhetstonePermission"

    const-string v2, "WhetstonePermission.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc"

    const-string v2, "WhetstonePermission.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
