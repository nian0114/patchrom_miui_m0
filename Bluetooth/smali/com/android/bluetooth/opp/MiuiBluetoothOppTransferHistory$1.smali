.class Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$1;
.super Ljava/lang/Object;
.source "MiuiBluetoothOppTransferHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->promptClearList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;

    # invokes: Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->clearAllDownloads()V
    invoke-static {v0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->access$000(Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;)V

    return-void
.end method
