.class Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "MiuiBluetoothOppTransferHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransferHistoryAdapter"
.end annotation


# static fields
.field private static final PROJECTIONS:[Ljava/lang/String;

.field private static final SELECTION_INBOUND:Ljava/lang/String; = "(direction=1)"

.field private static final SELECTION_OUTBOUND:Ljava/lang/String; = "(direction=0)"

.field private static final SELECTION_STATUS:Ljava/lang/String; = "status >= \'200\'"

.field private static final SELECTION_VISIBLE:Ljava/lang/String; = "(visibility IS NULL OR visibility == \'0\')"

.field private static final SORT_ORDER:Ljava/lang/String; = "timestamp DESC"


# instance fields
.field private nChildrenCursors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private nContext:Landroid/content/Context;

.field private nInflater:Landroid/view/LayoutInflater;

.field private nItemAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

.field private nShowAllIncoming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hint"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "total_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "destination"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "direction"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->PROJECTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;Z)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "showAllIncoming"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->nContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->nShowAllIncoming:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->nChildrenCursors:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->nContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->nInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->nItemAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    return-void
.end method

.method public static getAdapter(Landroid/content/Context;Z)Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showAllIncoming"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "DISTINCT direction AS _id"

    aput-object v1, v2, v0

    .local v2, "projections":[Ljava/lang/String;
    const-string v3, "status >= \'200\'"

    .local v3, "selection":Ljava/lang/String;
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (visibility IS NULL OR visibility == \'0\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;

    invoke-direct {v0, v6, p0, p1}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;Z)V

    return-object v0
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "isLastChild"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->nItemAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "isExpanded"    # Z

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, "titleView":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .local v0, "dir":I
    if-nez v0, :cond_0

    const v2, 0x7f060029

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f060028

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8
    .param p1, "groupCursor"    # Landroid/database/Cursor;

    .prologue
    const-string v0, "BT"

    const-string v1, "getChildrenCursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .local v7, "direction":I
    const-string v3, "status >= \'200\'"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    if-ne v7, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (direction=1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->nShowAllIncoming:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (visibility IS NULL OR visibility == \'0\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->nContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->PROJECTIONS:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "timestamp DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->nChildrenCursors:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v6

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (direction=0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "isLastChild"    # Z
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->nItemAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    invoke-virtual {v0, p1, p2, p4}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "isExpanded"    # Z
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->nInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "titleView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method public releaseAllCursors()V
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->nChildrenCursors:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->nChildrenCursors:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->nChildrenCursors:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p0}, Landroid/widget/CursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .local v1, "groupCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/CursorTreeAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    :cond_2
    return-void
.end method
