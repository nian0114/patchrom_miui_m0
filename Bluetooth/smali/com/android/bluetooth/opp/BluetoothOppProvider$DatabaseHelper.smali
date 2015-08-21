.class final Lcom/android/bluetooth/opp/BluetoothOppProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BluetoothOppProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppProvider;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppProvider;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider$DatabaseHelper;->this$0:Lcom/android/bluetooth/opp/BluetoothOppProvider;

    .line 123
    const-string v0, "btopp.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 124
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider$DatabaseHelper;->this$0:Lcom/android/bluetooth/opp/BluetoothOppProvider;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppProvider;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->access$000(Lcom/android/bluetooth/opp/BluetoothOppProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 133
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldV"    # I
    .param p3, "newV"    # I

    .prologue
    .line 155
    if-nez p2, :cond_1

    .line 156
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 163
    :cond_0
    const/4 p2, 0x1

    .line 165
    :cond_1
    const-string v0, "BluetoothOppProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading downloads database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider$DatabaseHelper;->this$0:Lcom/android/bluetooth/opp/BluetoothOppProvider;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppProvider;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->access$100(Lcom/android/bluetooth/opp/BluetoothOppProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 168
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider$DatabaseHelper;->this$0:Lcom/android/bluetooth/opp/BluetoothOppProvider;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppProvider;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->access$000(Lcom/android/bluetooth/opp/BluetoothOppProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
