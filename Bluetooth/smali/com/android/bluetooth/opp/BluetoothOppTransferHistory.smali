.class public Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;
.super Landroid/app/Activity;
.source "BluetoothOppTransferHistory.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothOppTransferHistory"

.field private static final V:Z


# instance fields
.field private mContextMenuPosition:I

.field private mIdColumnId:I

.field private mListView:Landroid/widget/ListView;

.field private mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

.field private mShowAllIncoming:Z

.field private mTransferAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

.field private mTransferCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->clearAllDownloads()V

    return-void
.end method

.method private clearAllDownloads()V
    .locals 4

    .prologue
    .line 246
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 249
    .local v1, "sessionId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 250
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 252
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 254
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "sessionId":I
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    .line 256
    :cond_1
    return-void
.end method

.method private getClearableCount()I
    .locals 5

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 231
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    const-string v4, "status"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 232
    .local v2, "statusColumnId":I
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 233
    .local v1, "status":I
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    add-int/lit8 v0, v0, 0x1

    .line 236
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 239
    .end local v1    # "status":I
    .end local v2    # "statusColumnId":I
    :cond_1
    return v0
.end method

.method private openCompleteTransfer()V
    .locals 7

    .prologue
    .line 276
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 277
    .local v2, "sessionId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 278
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v3

    .line 279
    .local v3, "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    if-nez v3, :cond_0

    .line 280
    const-string v4, "BluetoothOppTransferHistory"

    const-string v5, "Error: Can not get data from db"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_0
    return-void

    .line 283
    :cond_0
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 286
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 287
    iget-object v4, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    invoke-static {p0, v4, v5, v6, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    goto :goto_0

    .line 290
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .local v1, "in":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 292
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private promptClearList()V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06008a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060083

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 222
    return-void
.end method

.method private updateNotificationWhenBtDisabled()V
    .locals 2

    .prologue
    .line 302
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 303
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotification()V

    .line 307
    :cond_0
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 171
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenuPosition:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 185
    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 174
    :pswitch_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->openCompleteTransfer()V

    .line 175
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    goto :goto_0

    .line 179
    :pswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 180
    .local v1, "sessionId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 181
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 182
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x7f0b0025
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f030005

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->setContentView(I)V

    const v4, 0x7f0b000c

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    .line 87
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    const v5, 0x7f0b000d

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.btopp.intent.extra.SHOW_ALL"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    .line 93
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "direction"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, "dir":I
    if-nez v0, :cond_2

    const v4, 0x7f060081

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    const-string v1, "(direction == 0)"

    .line 108
    .local v1, "direction":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status >= \'200\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "selection":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-nez v4, :cond_0

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "visibility"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IS NULL OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "visibility"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " == \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    :cond_0
    const-string v3, "timestamp DESC"

    .line 119
    .local v3, "sortOrder":Ljava/lang/String;
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "_id"

    aput-object v6, v5, v7

    const/4 v6, 0x1

    const-string v7, "hint"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "status"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "total_bytes"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "_data"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "timestamp"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "visibility"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "destination"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "direction"

    aput-object v7, v5, v6

    const-string v6, "timestamp DESC"

    invoke-virtual {p0, v4, v5, v2, v6}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    .line 127
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    .line 128
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    .line 130
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    const v5, 0x7f030004

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    .line 132
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    const/high16 v5, 0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 134
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 135
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    :cond_1
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {v4, p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .line 139
    return-void

    .line 99
    .end local v1    # "direction":Ljava/lang/String;
    .end local v2    # "selection":Ljava/lang/String;
    .end local v3    # "sortOrder":Ljava/lang/String;
    :cond_2
    iget-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-eqz v4, :cond_3

    const v4, 0x7f06007d

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    :goto_1
    const-string v1, "(direction == 1)"

    .restart local v1    # "direction":Ljava/lang/String;
    goto/16 :goto_0

    .line 102
    .end local v1    # "direction":Ljava/lang/String;
    :cond_3
    const v4, 0x7f060080

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 190
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    move-object v2, p3

    .line 191
    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 192
    .local v2, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 193
    iget v3, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenuPosition:I

    .line 195
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    const-string v5, "hint"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "fileName":Ljava/lang/String;
    if-nez v0, :cond_0

    const v3, 0x7f060063

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .local v1, "inflater":Landroid/view/MenuInflater;
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-eqz v3, :cond_2

    const/high16 v3, 0x7f0a0000

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "inflater":Landroid/view/MenuInflater;
    .end local v2    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1
    :goto_0
    return-void

    .line 206
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v1    # "inflater":Landroid/view/MenuInflater;
    .restart local v2    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_2
    const v3, 0x7f0a0002

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 267
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->openCompleteTransfer()V

    .line 268
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    .line 269
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 166
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 163
    :pswitch_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->promptClearList()V

    .line 164
    const/4 v0, 0x1

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x7f0b0026
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 152
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-nez v1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getClearableCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 154
    .local v0, "showClear":Z
    :goto_0
    const v1, 0x7f0b0026

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 156
    .end local v0    # "showClear":Z
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
