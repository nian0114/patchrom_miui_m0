.class public final Lcom/android/bluetooth/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final ACCESS_BLE_SETTINGS:Ljava/lang/String; = "miui.permission.ACCESS_BLE_SETTINGS"

.field public static final ACCESS_BLUETOOTH_SHARE:Ljava/lang/String; = "android.permission.ACCESS_BLUETOOTH_SHARE"

.field public static final BLE_IMMEDIATE_ALERT:Ljava/lang/String; = "miui.permission.BLE_IMMEDIATE_ALERT"

.field public static final HANDOVER_STATUS:Ljava/lang/String; = "com.android.permission.HANDOVER_STATUS"

.field public static final WHITELIST_BLUETOOTH_DEVICE:Ljava/lang/String; = "com.android.permission.WHITELIST_BLUETOOTH_DEVICE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
