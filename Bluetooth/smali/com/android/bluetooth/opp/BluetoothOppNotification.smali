.class Lcom/android/bluetooth/opp/BluetoothOppNotification;
.super Ljava/lang/Object;
.source "BluetoothOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;,
        Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID_INBOUND:I = -0xf4246

.field private static final NOTIFICATION_ID_OUTBOUND:I = -0xf4245

.field private static final NOTIFY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothOppNotification"

.field private static final V:Z = false

.field static final WHERE_COMPLETED:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\')"

.field private static final WHERE_COMPLETED_INBOUND:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 1)"

.field private static final WHERE_COMPLETED_OUTBOUND:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 0)"

.field static final WHERE_CONFIRM_PENDING:Ljava/lang/String; = "confirm == \'0\' AND (visibility IS NULL OR visibility == \'0\')"

.field static final WHERE_RUNNING:Ljava/lang/String; = "(status == \'192\') AND (visibility IS NULL OR visibility == \'0\') AND (confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\')"

.field static final confirm:Ljava/lang/String; = "(confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\')"

.field static final not_through_handover:Ljava/lang/String; = "(confirm != \'5\')"

.field static final status:Ljava/lang/String; = "(status == \'192\')"

.field static final visible:Ljava/lang/String; = "(visibility IS NULL OR visibility == \'0\')"


# instance fields
.field private mActiveNotificationId:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field public mNotificationMgr:Landroid/app/NotificationManager;

.field private mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingUpdate:I

.field private mUpdateCompleteNotification:Z

.field private mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    .line 104
    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mActiveNotificationId:I

    .line 165
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    .line 134
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 135
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppNotification;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/opp/BluetoothOppNotification;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/opp/BluetoothOppNotification;Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;
    .param p1, "x1"    # Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateActiveNotification()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateCompletedNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateIncomingFileConfirmNotification()V

    return-void
.end method

.method private updateActiveNotification()V
    .locals 34

    .prologue
    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "(status == \'192\') AND (visibility IS NULL OR visibility == \'0\') AND (confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\')"

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 215
    .local v15, "cursor":Landroid/database/Cursor;
    if-nez v15, :cond_1

    .line 340
    :cond_0
    return-void

    .line 221
    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 222
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    .line 229
    :goto_0
    const-string v3, "timestamp"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 230
    .local v31, "timestampIndex":I
    const-string v3, "direction"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 231
    .local v20, "directionIndex":I
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 232
    .local v25, "idIndex":I
    const-string v3, "total_bytes"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 233
    .local v33, "totalBytesIndex":I
    const-string v3, "current_bytes"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 234
    .local v14, "currentBytesIndex":I
    const-string v3, "_data"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 235
    .local v16, "dataIndex":I
    const-string v3, "hint"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 236
    .local v22, "filenameHintIndex":I
    const-string v3, "confirm"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 237
    .local v11, "confirmIndex":I
    const-string v3, "destination"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 239
    .local v18, "destinationIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 240
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_9

    .line 241
    move/from16 v0, v31

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 242
    .local v29, "timeStamp":J
    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 243
    .local v19, "dir":I
    move/from16 v0, v25

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 244
    .local v24, "id":I
    move/from16 v0, v33

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 245
    .local v32, "total":I
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 246
    .local v13, "current":I
    invoke-interface {v15, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 248
    .local v12, "confirmation":I
    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 249
    .local v17, "destination":Ljava/lang/String;
    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 250
    .local v21, "fileName":Ljava/lang/String;
    if-nez v21, :cond_2

    .line 251
    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 253
    :cond_2
    if-nez v21, :cond_3

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f060063

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 257
    :cond_3
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 260
    .local v10, "batchID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 240
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 224
    .end local v10    # "batchID":Ljava/lang/String;
    .end local v11    # "confirmIndex":I
    .end local v12    # "confirmation":I
    .end local v13    # "current":I
    .end local v14    # "currentBytesIndex":I
    .end local v16    # "dataIndex":I
    .end local v17    # "destination":Ljava/lang/String;
    .end local v18    # "destinationIndex":I
    .end local v19    # "dir":I
    .end local v20    # "directionIndex":I
    .end local v21    # "fileName":Ljava/lang/String;
    .end local v22    # "filenameHintIndex":I
    .end local v24    # "id":I
    .end local v25    # "idIndex":I
    .end local v29    # "timeStamp":J
    .end local v31    # "timestampIndex":I
    .end local v32    # "total":I
    .end local v33    # "totalBytesIndex":I
    :cond_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    goto/16 :goto_0

    .line 264
    .restart local v10    # "batchID":Ljava/lang/String;
    .restart local v11    # "confirmIndex":I
    .restart local v12    # "confirmation":I
    .restart local v13    # "current":I
    .restart local v14    # "currentBytesIndex":I
    .restart local v16    # "dataIndex":I
    .restart local v17    # "destination":Ljava/lang/String;
    .restart local v18    # "destinationIndex":I
    .restart local v19    # "dir":I
    .restart local v20    # "directionIndex":I
    .restart local v21    # "fileName":Ljava/lang/String;
    .restart local v22    # "filenameHintIndex":I
    .restart local v24    # "id":I
    .restart local v25    # "idIndex":I
    .restart local v29    # "timeStamp":J
    .restart local v31    # "timestampIndex":I
    .restart local v32    # "total":I
    .restart local v33    # "totalBytesIndex":I
    :cond_5
    new-instance v27, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;

    invoke-direct/range {v27 .. v27}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;-><init>()V

    .line 265
    .local v27, "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    move-wide/from16 v0, v29

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->timeStamp:J

    .line 266
    move/from16 v0, v24

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    .line 267
    move/from16 v0, v19

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    .line 268
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    if-nez v3, :cond_7

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f060046

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v21, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    .line 276
    :cond_6
    :goto_3
    move-object/from16 v0, v27

    iput v13, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    .line 277
    move/from16 v0, v32

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    .line 278
    const/4 v3, 0x5

    if-ne v12, v3, :cond_8

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, v27

    iput-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->handoverInitiated:Z

    .line 280
    move-object/from16 v0, v17

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->destination:Ljava/lang/String;

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v3, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 270
    :cond_7
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f060043

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v21, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    goto :goto_3

    .line 278
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 287
    .end local v10    # "batchID":Ljava/lang/String;
    .end local v12    # "confirmation":I
    .end local v13    # "current":I
    .end local v17    # "destination":Ljava/lang/String;
    .end local v19    # "dir":I
    .end local v21    # "fileName":Ljava/lang/String;
    .end local v24    # "id":I
    .end local v27    # "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    .end local v29    # "timeStamp":J
    .end local v32    # "total":I
    :cond_9
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;

    .line 291
    .restart local v27    # "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    move-object/from16 v0, v27

    iget-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->handoverInitiated:Z

    if-eqz v3, :cond_c

    .line 292
    const/16 v28, 0x0

    .line 293
    .local v28, "progress":F
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_a

    .line 294
    const/high16 v28, -0x40800000    # -1.0f

    .line 300
    :goto_6
    new-instance v26, Landroid/content/Intent;

    const-string v3, "android.btopp.intent.action.BT_OPP_TRANSFER_PROGRESS"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v26, "intent":Landroid/content/Intent;
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 302
    const-string v3, "android.btopp.intent.extra.BT_OPP_TRANSFER_DIRECTION"

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    :goto_7
    const-string v3, "android.btopp.intent.extra.BT_OPP_TRANSFER_ID"

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const-string v3, "android.btopp.intent.extra.BT_OPP_TRANSFER_PROGRESS"

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 310
    const-string v3, "android.btopp.intent.extra.BT_OPP_ADDRESS"

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->destination:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const-string v4, "com.android.permission.HANDOVER_STATUS"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_5

    .line 296
    .end local v26    # "intent":Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    int-to-float v3, v3

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    int-to-float v4, v4

    div-float v28, v3, v4

    goto :goto_6

    .line 305
    .restart local v26    # "intent":Landroid/content/Intent;
    :cond_b
    const-string v3, "android.btopp.intent.extra.BT_OPP_TRANSFER_DIRECTION"

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_7

    .line 316
    .end local v26    # "intent":Landroid/content/Intent;
    .end local v28    # "progress":F
    :cond_c
    new-instance v9, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-direct {v9, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 317
    .local v9, "b":Landroid/app/Notification$Builder;
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 318
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    int-to-long v3, v3

    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->formatProgressText(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 320
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_e

    const/4 v3, 0x1

    :goto_8
    invoke-virtual {v9, v4, v5, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 321
    move-object/from16 v0, v27

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->timeStamp:J

    invoke-virtual {v9, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 322
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    if-nez v3, :cond_f

    .line 323
    const v3, 0x1080088

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 329
    :cond_d
    :goto_9
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 331
    new-instance v26, Landroid/content/Intent;

    const-string v3, "android.btopp.intent.action.LIST"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .restart local v26    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.bluetooth"

    const-class v4, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 338
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mActiveNotificationId:I

    goto/16 :goto_5

    .line 320
    .end local v26    # "intent":Landroid/content/Intent;
    :cond_e
    const/4 v3, 0x0

    goto :goto_8

    .line 324
    :cond_f
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    .line 325
    const v3, 0x1080081

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_9
.end method

.method private updateCompletedNotification()V
    .locals 25

    .prologue
    .line 345
    const-wide/16 v21, 0x0

    .line 346
    .local v21, "timeStamp":J
    const/16 v18, 0x0

    .line 347
    .local v18, "outboundSuccNumber":I
    const/16 v16, 0x0

    .line 350
    .local v16, "outboundFailNumber":I
    const/4 v13, 0x0

    .line 351
    .local v13, "inboundSuccNumber":I
    const/4 v11, 0x0

    .line 356
    .local v11, "inboundFailNumber":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    if-nez v2, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mActiveNotificationId:I

    if-eqz v2, :cond_2

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mActiveNotificationId:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 371
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 0)"

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 373
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 377
    const-string v2, "timestamp"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 378
    .local v23, "timestampIndex":I
    const-string v2, "status"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 380
    .local v20, "statusIndex":I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5

    .line 381
    invoke-interface {v9}, Landroid/database/Cursor;->isFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 383
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 385
    :cond_3
    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 387
    .local v19, "status":I
    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 388
    add-int/lit8 v16, v16, 0x1

    .line 380
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 390
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 394
    .end local v19    # "status":I
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 396
    add-int v17, v18, v16

    .line 398
    .local v17, "outboundNum":I
    if-lez v17, :cond_8

    .line 399
    new-instance v15, Landroid/app/Notification;

    invoke-direct {v15}, Landroid/app/Notification;-><init>()V

    .line 400
    .local v15, "outNoti":Landroid/app/Notification;
    const v2, 0x1080089

    iput v2, v15, Landroid/app/Notification;->icon:I

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f060084

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 402
    .local v24, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f060086

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 404
    .local v8, "caption":Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_OUTBOUND"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v14, "intent":Landroid/content/Intent;
    const-string v2, "com.android.bluetooth"

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v14, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v15, v2, v0, v8, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 408
    new-instance v14, Landroid/content/Intent;

    .end local v14    # "intent":Landroid/content/Intent;
    const-string v2, "android.btopp.intent.action.HIDE_COMPLETE"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.bluetooth"

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v14, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v15, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 411
    move-wide/from16 v0, v21

    iput-wide v0, v15, Landroid/app/Notification;->when:J

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v3, -0xf4245

    invoke-virtual {v2, v3, v15}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 421
    .end local v8    # "caption":Ljava/lang/String;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "outNoti":Landroid/app/Notification;
    .end local v24    # "title":Ljava/lang/String;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 1)"

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 423
    if-eqz v9, :cond_0

    .line 427
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_a

    .line 428
    invoke-interface {v9}, Landroid/database/Cursor;->isFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 430
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 432
    :cond_7
    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 434
    .restart local v19    # "status":I
    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 435
    add-int/lit8 v11, v11, 0x1

    .line 427
    :goto_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 414
    .end local v19    # "status":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v2, :cond_6

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v3, -0xf4245

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_3

    .line 437
    .restart local v19    # "status":I
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 441
    .end local v19    # "status":I
    :cond_a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 443
    add-int v12, v13, v11

    .line 445
    .local v12, "inboundNum":I
    if-lez v12, :cond_b

    .line 446
    new-instance v10, Landroid/app/Notification;

    invoke-direct {v10}, Landroid/app/Notification;-><init>()V

    .line 447
    .local v10, "inNoti":Landroid/app/Notification;
    const v2, 0x1080082

    iput v2, v10, Landroid/app/Notification;->icon:I

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f060085

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 449
    .restart local v24    # "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f060086

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 451
    .restart local v8    # "caption":Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_INBOUND"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 452
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.bluetooth"

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v14, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v10, v2, v0, v8, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 455
    new-instance v14, Landroid/content/Intent;

    .end local v14    # "intent":Landroid/content/Intent;
    const-string v2, "android.btopp.intent.action.HIDE_COMPLETE"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.bluetooth"

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v14, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v10, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 458
    move-wide/from16 v0, v21

    iput-wide v0, v10, Landroid/app/Notification;->when:J

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v3, -0xf4246

    invoke-virtual {v2, v3, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 461
    .end local v8    # "caption":Ljava/lang/String;
    .end local v10    # "inNoti":Landroid/app/Notification;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v24    # "title":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v2, :cond_0

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v3, -0xf4246

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method private updateIncomingFileConfirmNotification()V
    .locals 15

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "confirm == \'0\' AND (visibility IS NULL OR visibility == \'0\')"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 472
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 508
    :goto_0
    return-void

    .line 476
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f060040

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 479
    .local v14, "title":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f060041

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 481
    .local v6, "caption":Ljava/lang/CharSequence;
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 482
    .local v9, "id":I
    const-string v0, "timestamp"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 483
    .local v12, "timeStamp":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .local v7, "contentUri":Landroid/net/Uri;
    new-instance v11, Landroid/app/Notification;

    invoke-direct {v11}, Landroid/app/Notification;-><init>()V

    .local v11, "n":Landroid/app/Notification;
    const v0, 0x7f020005

    iput v0, v11, Landroid/app/Notification;->icon:I

    iget v0, v11, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v11, Landroid/app/Notification;->flags:I

    iget v0, v11, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v11, Landroid/app/Notification;->flags:I

    const/4 v0, 0x1

    iput v0, v11, Landroid/app/Notification;->defaults:I

    iput-object v14, v11, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.btopp.intent.action.CONFIRM"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "com.android.bluetooth"

    const-class v1, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    invoke-virtual {v10, v7}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 496
    iput-wide v12, v11, Landroid/app/Notification;->when:J

    .line 497
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v10, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v11, v0, v14, v6, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 500
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string v0, "android.btopp.intent.action.HIDE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v0, "com.android.bluetooth"

    const-class v1, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    invoke-virtual {v10, v7}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 503
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v11, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 505
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, v9, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 476
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 507
    .end local v6    # "caption":Ljava/lang/CharSequence;
    .end local v7    # "contentUri":Landroid/net/Uri;
    .end local v9    # "id":I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "n":Landroid/app/Notification;
    .end local v12    # "timeStamp":J
    .end local v14    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method


# virtual methods
.method public updateNotification()V
    .locals 3

    .prologue
    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    .line 146
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 148
    monitor-exit p0

    .line 155
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
