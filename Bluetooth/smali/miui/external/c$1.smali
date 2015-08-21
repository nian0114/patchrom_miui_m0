.class Lmiui/external/c$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/external/c;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Landroid/app/Dialog;

.field final synthetic e:Lmiui/external/c;


# direct methods
.method constructor <init>(Lmiui/external/c;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lmiui/external/c$1;->e:Lmiui/external/c;

    iput-object p2, p0, Lmiui/external/c$1;->d:Landroid/app/Dialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lmiui/external/c$1;->e:Lmiui/external/c;

    iget-object v0, v0, Lmiui/external/c;->a:Lmiui/external/SdkErrorActivity;

    invoke-static {v0}, Lmiui/external/SdkErrorActivity;->b(Lmiui/external/SdkErrorActivity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lmiui/external/c$1;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/external/c$1;->e:Lmiui/external/c;

    iget-object v0, v0, Lmiui/external/c;->a:Lmiui/external/SdkErrorActivity;

    invoke-static {v0}, Lmiui/external/SdkErrorActivity;->c(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    new-instance v1, Lmiui/external/SdkErrorActivity$a;

    iget-object v2, p0, Lmiui/external/c$1;->e:Lmiui/external/c;

    iget-object v2, v2, Lmiui/external/c;->a:Lmiui/external/SdkErrorActivity;

    invoke-direct {v1, v2, v0}, Lmiui/external/SdkErrorActivity$a;-><init>(Lmiui/external/SdkErrorActivity;Landroid/app/Dialog;)V

    iget-object v0, p0, Lmiui/external/c$1;->e:Lmiui/external/c;

    iget-object v0, v0, Lmiui/external/c;->a:Lmiui/external/SdkErrorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "SdkUpdateFinishDialog"

    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/external/c$1;->e:Lmiui/external/c;

    iget-object v0, v0, Lmiui/external/c;->a:Lmiui/external/SdkErrorActivity;

    invoke-static {v0}, Lmiui/external/SdkErrorActivity;->d(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/external/c$1;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmiui/external/c$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
