.class public Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BluetoothOppTransferAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 62
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 27
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .local v12, "r":Landroid/content/res/Resources;
    const v23, 0x7f0b0007

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .local v11, "iv":Landroid/widget/ImageView;
    const-string v23, "status"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .local v14, "status":I
    const-string v23, "direction"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .local v10, "dir":I
    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v23

    if-eqz v23, :cond_2

    const v23, 0x7f02000a

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const v23, 0x7f0b0008

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .local v22, "tv":Landroid/widget/TextView;
    const-string v23, "hint"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .local v18, "title":Ljava/lang/String;
    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f060063

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 90
    :cond_0
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v23, 0x7f0b0009

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22    # "tv":Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .restart local v22    # "tv":Landroid/widget/TextView;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const-string v23, "destination"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .local v8, "destinationColumnId":I
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v13

    .local v13, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {p2 .. p2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v9

    .local v9, "deviceName":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v23, "total_bytes"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .local v19, "totalBytes":J
    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v23

    if-eqz v23, :cond_1

    const v23, 0x7f0b000b

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22    # "tv":Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .restart local v22    # "tv":Landroid/widget/TextView;
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v23

    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v14, v9}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :goto_1
    const-string v23, "timestamp"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .local v7, "dateColumnId":I
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .local v16, "time":J
    new-instance v6, Ljava/util/Date;

    move-wide/from16 v0, v16

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .local v6, "d":Ljava/util/Date;
    invoke-static/range {v16 .. v17}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v23

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .local v15, "str":Ljava/lang/CharSequence;
    :goto_2
    const v23, 0x7f0b000a

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22    # "tv":Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .restart local v22    # "tv":Landroid/widget/TextView;
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v6    # "d":Ljava/util/Date;
    .end local v7    # "dateColumnId":I
    .end local v15    # "str":Ljava/lang/CharSequence;
    .end local v16    # "time":J
    :cond_1
    return-void

    .line 76
    .end local v3    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v8    # "destinationColumnId":I
    .end local v9    # "deviceName":Ljava/lang/String;
    .end local v13    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v18    # "title":Ljava/lang/String;
    .end local v19    # "totalBytes":J
    .end local v22    # "tv":Landroid/widget/TextView;
    :cond_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .local v5, "contentUri":Landroid/net/Uri;
    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v21

    .local v21, "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    if-eqz v21, :cond_3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->getFileIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 79
    :cond_3
    sget v23, Lmiui/R$drawable;->file_icon_default:I

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v21    # "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    .restart local v3    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v8    # "destinationColumnId":I
    .restart local v9    # "deviceName":Ljava/lang/String;
    .restart local v13    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .restart local v18    # "title":Ljava/lang/String;
    .restart local v19    # "totalBytes":J
    .restart local v22    # "tv":Landroid/widget/TextView;
    :cond_4
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_5

    const v23, 0x7f06007e

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "completeText":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 114
    .end local v4    # "completeText":Ljava/lang/String;
    :cond_5
    const v23, 0x7f06007f

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "completeText":Ljava/lang/String;
    goto :goto_3

    .line 123
    .end local v4    # "completeText":Ljava/lang/String;
    .restart local v6    # "d":Ljava/util/Date;
    .restart local v7    # "dateColumnId":I
    .restart local v16    # "time":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2
.end method
