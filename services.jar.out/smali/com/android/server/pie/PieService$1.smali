.class Lcom/android/server/pie/PieService$1;
.super Ljava/lang/Object;
.source "PieService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pie/PieService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pie/PieService;


# direct methods
.method constructor <init>(Lcom/android/server/pie/PieService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/pie/PieService$1;->this$0:Lcom/android/server/pie/PieService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    return-void
.end method
