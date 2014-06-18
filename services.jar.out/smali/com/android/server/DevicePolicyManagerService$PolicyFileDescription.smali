.class abstract Lcom/android/server/DevicePolicyManagerService$PolicyFileDescription;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PolicyFileDescription"
.end annotation


# instance fields
.field final path:Ljava/lang/String;

.field final reqPolicy:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "_path"
    .parameter "_reqPolicy"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$PolicyFileDescription;->path:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/DevicePolicyManagerService$PolicyFileDescription;->reqPolicy:I

    return-void
.end method


# virtual methods
.method abstract doPolicyReload()Z
.end method

.method abstract isPolicyAdmin(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;)Z
.end method
