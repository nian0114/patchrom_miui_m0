.class Lcom/android/server/wm/WindowManagerService$ApplicationDisplayMetrics;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApplicationDisplayMetrics"
.end annotation


# instance fields
.field appHeight:I

.field appWidth:I

.field dh:I

.field dw:I

.field rotated:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$ApplicationDisplayMetrics;-><init>()V

    return-void
.end method
