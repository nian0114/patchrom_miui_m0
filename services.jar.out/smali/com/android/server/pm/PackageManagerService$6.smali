.class Lcom/android/server/pm/PackageManagerService$6;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$i:[I

.field final synthetic val$p:Landroid/content/pm/PackageParser$Package;

.field final synthetic val$pkgsSize:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;[IILandroid/content/pm/PackageParser$Package;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$6;->val$i:[I

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$6;->val$pkgsSize:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$6;->val$p:Landroid/content/pm/PackageParser$Package;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$6;->val$i:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$6;->val$i:[I

    aget v1, v1, v3

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$6;->val$pkgsSize:I

    #calls: Lcom/android/server/pm/PackageManagerService;->postBootMessageUpdate(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$2000(Lcom/android/server/pm/PackageManagerService;II)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$6;->val$p:Landroid/content/pm/PackageParser$Package;

    const/4 v2, 0x1

    #calls: Lcom/android/server/pm/PackageManagerService;->performDexOptLI(Landroid/content/pm/PackageParser$Package;ZZZ)I
    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/server/pm/PackageManagerService;->access$2100(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;ZZZ)I

    return-void
.end method
