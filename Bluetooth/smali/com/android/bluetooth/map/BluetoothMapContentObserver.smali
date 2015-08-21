.class public Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$3;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    }
.end annotation


# static fields
.field private static final ACTION_MESSAGE_DELIVERY:Ljava/lang/String; = "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_DELIVERY"

.field private static final ACTION_MESSAGE_SENT:Ljava/lang/String; = "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

.field private static final D:Z = false

.field public static final DELETED_THREAD_ID:I = -0x1

.field public static final MESSAGE_TYPE_RETRIEVE_CONF:I = 0x84

.field static final MMS_PROJECTION:[Ljava/lang/String;

.field static final SMS_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BluetoothMapContentObserver"

.field private static final V:Z

.field private static final folderMms:[Ljava/lang/String;

.field private static final folderSms:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMasId:I

.field private mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

.field private mMsgListMms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListSms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/ContentObserver;

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPushMsgList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

.field private mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "error_code"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    .line 95
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "m_id"

    aput-object v1, v0, v5

    const-string v1, "m_size"

    aput-object v1, v0, v6

    const-string v1, "sub"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text_only"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "st"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION:[Ljava/lang/String;

    .line 146
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "inbox"

    aput-object v1, v0, v4

    const-string v1, "sent"

    aput-object v1, v0, v5

    const-string v1, "draft"

    aput-object v1, v0, v6

    const-string v1, "outbox"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "outbox"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "outbox"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "inbox"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "inbox"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    .line 158
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "inbox"

    aput-object v1, v0, v4

    const-string v1, "sent"

    aput-object v1, v0, v5

    const-string v1, "draft"

    aput-object v1, v0, v6

    const-string v1, "outbox"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    .line 633
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    .line 964
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    .line 1175
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 112
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    .line 113
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    .line 115
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChanges()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .param p1, "x1"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->resendPendingMessages()V

    return-void
.end method

.method private deleteMessageMms(J)Z
    .locals 11
    .param p1, "handle"    # J

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 439
    const/4 v8, 0x0

    .line 440
    .local v8, "res":Z
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 441
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 442
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    const-string v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 445
    .local v9, "threadId":I
    if-eq v9, v10, :cond_2

    .line 447
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 448
    .local v7, "contentValues":Landroid/content/ContentValues;
    const-string v0, "thread_id"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v7, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 456
    .end local v7    # "contentValues":Landroid/content/ContentValues;
    :goto_0
    const/4 v8, 0x1

    .line 458
    .end local v9    # "threadId":I
    :cond_0
    if-eqz v6, :cond_1

    .line 459
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_1
    return v8

    .line 452
    .restart local v9    # "threadId":I
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteMessageSms(J)Z
    .locals 11
    .param p1, "handle"    # J

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 506
    const/4 v8, 0x0

    .line 507
    .local v8, "res":Z
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 508
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 510
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    const-string v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 513
    .local v9, "threadId":I
    if-eq v9, v10, :cond_2

    .line 515
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 516
    .local v7, "contentValues":Landroid/content/ContentValues;
    const-string v0, "thread_id"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 517
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v7, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 524
    .end local v7    # "contentValues":Landroid/content/ContentValues;
    :goto_0
    const/4 v8, 0x1

    .line 526
    .end local v9    # "threadId":I
    :cond_0
    if-eqz v6, :cond_1

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 529
    :cond_1
    return v8

    .line 520
    .restart local v9    # "threadId":I
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private failPendingMessages()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 1150
    const-string v3, "type = 4"

    .line 1151
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1154
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1156
    :cond_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1157
    .local v7, "id":J
    const-string v0, "body"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1158
    .local v9, "msgBody":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    .line 1159
    .local v10, "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    if-eqz v10, :cond_1

    iget-boolean v0, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->resend:Z

    if-nez v0, :cond_4

    .line 1164
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1166
    .end local v7    # "id":J
    .end local v9    # "msgBody":Ljava/lang/String;
    .end local v10    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1167
    :cond_3
    return-void

    .line 1162
    .restart local v7    # "id":J
    .restart local v9    # "msgBody":Ljava/lang/String;
    .restart local v10    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    iget-object v1, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    const/4 v2, 0x5

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    goto :goto_0
.end method

.method private getSmsType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 4

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "smsType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 122
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 123
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 128
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 125
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0
.end method

.method private handleMsgListChanges()V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesSms()V

    .line 435
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesMms()V

    .line 436
    return-void
.end method

.method private handleMsgListChangesMms()V
    .locals 23

    .prologue
    .line 373
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 375
    .local v19, "msgListMms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 378
    .local v16, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 379
    if-eqz v16, :cond_2

    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 381
    :cond_0
    const-string v4, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 382
    .local v6, "id":J
    const-string v4, "msg_box"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 383
    .local v21, "type":I
    const-string v4, "m_type"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 385
    .local v20, "mtype":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 387
    .local v18, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-nez v18, :cond_4

    .line 389
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    aget-object v4, v4, v21

    const-string v5, "inbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x84

    move/from16 v0, v20

    if-eq v0, v4, :cond_3

    .line 419
    :cond_1
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 420
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 423
    .end local v6    # "id":J
    .end local v18    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v20    # "mtype":I
    .end local v21    # "type":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 424
    .restart local v18    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v10, "MessageDeleted"

    move-object/from16 v0, v18

    iget-wide v11, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    const-string v13, "deleted"

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    aget-object v14, v4, v5

    sget-object v15, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v8, v3

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 426
    .local v3, "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_1

    .line 430
    .end local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :catchall_0
    move-exception v4

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 394
    .restart local v6    # "id":J
    .restart local v18    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .restart local v20    # "mtype":I
    .restart local v21    # "type":I
    :cond_3
    :try_start_1
    new-instance v18, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .end local v18    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JI)V

    .line 395
    .restart local v18    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    aget-object v4, v4, v21

    const-string v5, "inbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 398
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v5, "NewMessage"

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    aget-object v8, v4, v21

    const/4 v9, 0x0

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 400
    .restart local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_0

    .line 404
    .end local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_4
    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    move/from16 v0, v21

    if-eq v0, v4, :cond_5

    .line 405
    const-string v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new type: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " old type: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v5, "MessageShift"

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    aget-object v8, v4, v21

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    move-object/from16 v0, v18

    iget v9, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    aget-object v9, v4, v9

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 408
    .restart local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 409
    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 411
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    aget-object v4, v4, v21

    const-string v5, "sent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 412
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    .end local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    const-string v5, "SendingSuccess"

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    aget-object v8, v4, v21

    const/4 v9, 0x0

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 414
    .restart local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 417
    .end local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_5
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 429
    .end local v6    # "id":J
    .end local v18    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v20    # "mtype":I
    .end local v21    # "type":I
    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    .line 430
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    return-void
.end method

.method private handleMsgListChangesSms()V
    .locals 22

    .prologue
    .line 322
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 324
    .local v19, "msgListSms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 327
    .local v16, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 328
    if-eqz v16, :cond_2

    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 330
    :cond_0
    const-string v4, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 331
    .local v6, "id":J
    const-string v4, "type"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 333
    .local v20, "type":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 335
    .local v18, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-nez v18, :cond_3

    .line 337
    new-instance v18, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .end local v18    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JI)V

    .line 338
    .restart local v18    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    aget-object v4, v4, v20

    const-string v5, "inbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 341
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v5, "NewMessage"

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    aget-object v8, v4, v20

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 343
    .local v3, "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 356
    .end local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_1
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 357
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 360
    .end local v6    # "id":J
    .end local v18    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v20    # "type":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 361
    .restart local v18    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v10, "MessageDeleted"

    move-object/from16 v0, v18

    iget-wide v11, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    const-string v13, "deleted"

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    aget-object v14, v4, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v8, v3

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 363
    .restart local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_1

    .line 367
    .end local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :catchall_0
    move-exception v4

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 347
    .restart local v6    # "id":J
    .restart local v18    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .restart local v20    # "type":I
    :cond_3
    :try_start_1
    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    move/from16 v0, v20

    if-eq v0, v4, :cond_4

    .line 348
    const-string v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new type: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " old type: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v5, "MessageShift"

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    aget-object v8, v4, v20

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    move-object/from16 v0, v18

    iget v9, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    aget-object v9, v4, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 351
    .restart local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 352
    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 354
    .end local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 366
    .end local v6    # "id":J
    .end local v18    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v20    # "type":I
    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    .line 367
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    return-void
.end method

.method private initMsgList()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 279
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 280
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 282
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 284
    .local v11, "msgListSms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 287
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    :cond_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 290
    .local v7, "id":J
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 292
    .local v12, "type":I
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    invoke-direct {v9, p0, v7, v8, v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JI)V

    .line 293
    .local v9, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 298
    .end local v7    # "id":J
    .end local v9    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v12    # "type":I
    :cond_1
    iput-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    .line 300
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 302
    .local v10, "msgListMms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 305
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 307
    :cond_2
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 308
    .restart local v7    # "id":J
    const-string v0, "msg_box"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 310
    .restart local v12    # "type":I
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    invoke-direct {v9, p0, v7, v8, v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JI)V

    .line 311
    .restart local v9    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 316
    .end local v7    # "id":J
    .end local v9    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v12    # "type":I
    :cond_3
    iput-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    .line 317
    return-void
.end method

.method private moveDraftToOutbox(J)V
    .locals 8
    .param p1, "handle"    # J

    .prologue
    const/4 v2, 0x0

    .line 743
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 745
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-wide/16 v4, -0x1

    cmp-long v4, p1, v4

    if-eqz v4, :cond_1

    .line 746
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 747
    .local v3, "whereClause":Ljava/lang/String;
    const-string v4, "content://mms"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    move-object v4, v2

    move-object v5, v2

    .line 748
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 749
    .local v7, "queryResult":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 750
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 751
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 752
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 754
    .local v6, "data":Landroid/content/ContentValues;
    const-string v4, "msg_box"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 755
    invoke-virtual {v0, v1, v6, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 756
    const-string v2, "BluetoothMapContentObserver"

    const-string v4, "moved draft MMS to outbox"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    .end local v6    # "data":Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 763
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v7    # "queryResult":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 760
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v3    # "whereClause":Ljava/lang/String;
    .restart local v7    # "queryResult":Landroid/database/Cursor;
    :cond_2
    const-string v2, "BluetoothMapContentObserver"

    const-string v4, "Could not move draft to outbox "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pushMmsToFolder(ILjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)J
    .locals 15
    .param p1, "folder"    # I
    .param p2, "to_address"    # Ljava/lang/String;
    .param p3, "msg"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    .prologue
    .line 773
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 774
    .local v10, "values":Landroid/content/ContentValues;
    const-string v11, "msg_box"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 776
    const-string v11, "read"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    const-string v11, "seen"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    const-string v11, "sub"

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getSubject()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string v11, "sub_cs"

    const/16 v12, 0x6a

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 780
    const-string v11, "ct_t"

    const-string v12, "application/vnd.wap.multipart.related"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v11, "exp"

    const v12, 0x93a80

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 782
    const-string v11, "m_cls"

    const-string v12, "personal"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v11, "m_type"

    const/16 v12, 0x80

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 784
    const-string v11, "v"

    const/16 v12, 0x12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 785
    const-string v11, "pri"

    const/16 v12, 0x81

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 786
    const-string v11, "rr"

    const/16 v12, 0x81

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 787
    const-string v11, "tr_id"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "T"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v11, "d_rpt"

    const/16 v12, 0x81

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    const-string v11, "locked"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 790
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getTextOnly()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 791
    const-string v11, "text_only"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 793
    :cond_0
    const-string v11, "m_size"

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getSize()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 796
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 797
    .local v8, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 798
    const-string v11, "thread_id"

    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v12, v8}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 799
    const-string v11, "content://mms"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 801
    .local v9, "uri":Landroid/net/Uri;
    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 802
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v2, v9, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 804
    if-nez v9, :cond_2

    .line 806
    const-string v11, "BluetoothMapContentObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unabled to insert MMS "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Uri: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const-wide/16 v4, -0x1

    .line 898
    :cond_1
    :goto_0
    return-wide v4

    .line 810
    :cond_2
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 816
    .local v4, "handle":J
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getMimeParts()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    .line 817
    .local v7, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    const/4 v1, 0x0

    .line 818
    .local v1, "count":I
    add-int/lit8 v1, v1, 0x1

    .line 819
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 820
    iget-object v11, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    if-eqz v11, :cond_b

    iget-object v11, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "TEXT"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 821
    const-string v11, "ct"

    const-string v12, "text/plain"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v11, "chset"

    const/16 v12, 0x6a

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 823
    iget-object v11, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    if-eqz v11, :cond_8

    .line 824
    const-string v11, "fn"

    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v11, "name"

    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :cond_4
    :goto_2
    iget-object v11, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    if-eqz v11, :cond_5

    .line 832
    const-string v11, "cid"

    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :cond_5
    iget-object v11, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    if-eqz v11, :cond_6

    .line 835
    const-string v11, "cl"

    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :cond_6
    iget-object v11, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentDisposition:Ljava/lang/String;

    if-eqz v11, :cond_7

    .line 837
    const-string v11, "cd"

    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentDisposition:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :cond_7
    const-string v11, "text"

    new-instance v12, Ljava/lang/String;

    iget-object v13, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    const-string v14, "UTF-8"

    invoke-direct {v12, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "content://mms/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/part"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 840
    invoke-virtual {v2, v9, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 865
    :goto_3
    if-eqz v9, :cond_3

    goto/16 :goto_1

    .line 826
    :cond_8
    iget-object v11, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    if-nez v11, :cond_4

    iget-object v11, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    if-nez v11, :cond_4

    .line 828
    const-string v11, "fn"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "text_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".txt"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v11, "name"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "text_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".txt"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 869
    .end local v1    # "count":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    :catch_0
    move-exception v3

    .line 870
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v11, "BluetoothMapContentObserver"

    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 875
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_9
    :goto_4
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 876
    const-string v11, "contact_id"

    const-string v12, "null"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const-string v11, "address"

    const-string v12, "insert-address-token"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v11, "type"

    const/16 v12, 0x89

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 879
    const-string v11, "charset"

    const/16 v12, 0x6a

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 881
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "content://mms/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/addr"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 882
    invoke-virtual {v2, v9, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 883
    if-eqz v9, :cond_a

    .line 887
    :cond_a
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 888
    const-string v11, "contact_id"

    const-string v12, "null"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v11, "address"

    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string v11, "type"

    const/16 v12, 0x97

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 891
    const-string v11, "charset"

    const/16 v12, 0x6a

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 893
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "content://mms/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/addr"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 894
    invoke-virtual {v2, v9, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 895
    if-eqz v9, :cond_1

    goto/16 :goto_0

    .line 843
    .restart local v1    # "count":I
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    :cond_b
    :try_start_1
    iget-object v11, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    if-eqz v11, :cond_f

    iget-object v11, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SMIL"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 845
    const-string v11, "seq"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 846
    const-string v11, "ct"

    const-string v12, "application/smil"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    iget-object v11, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    if-eqz v11, :cond_c

    .line 848
    const-string v11, "cid"

    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :cond_c
    iget-object v11, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    if-eqz v11, :cond_d

    .line 850
    const-string v11, "cl"

    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :cond_d
    iget-object v11, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentDisposition:Ljava/lang/String;

    if-eqz v11, :cond_e

    .line 852
    const-string v11, "cd"

    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentDisposition:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_e
    const-string v11, "fn"

    const-string v12, "smil.xml"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v11, "name"

    const-string v12, "smil.xml"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v11, "text"

    new-instance v12, Ljava/lang/String;

    iget-object v13, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    const-string v14, "UTF-8"

    invoke-direct {v12, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "content://mms/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/part"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 858
    invoke-virtual {v2, v9, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    goto/16 :goto_3

    .line 862
    :cond_f
    invoke-direct {p0, v4, v5, v7, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->writeMmsDataPart(JLcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 871
    .end local v1    # "count":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    :catch_1
    move-exception v3

    .line 872
    .local v3, "e":Ljava/io/IOException;
    const-string v11, "BluetoothMapContentObserver"

    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4
.end method

.method private registerPhoneServiceStateListener()V
    .locals 3

    .prologue
    .line 1119
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1120
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1121
    return-void
.end method

.method private removeDeletedMessages()V
    .locals 4

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "thread_id = -1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1173
    return-void
.end method

.method private resendPendingMessages()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 1130
    const-string v3, "type = 4"

    .line 1131
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1134
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1136
    :cond_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1137
    .local v7, "id":J
    const-string v0, "body"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1138
    .local v9, "msgBody":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    .line 1139
    .local v10, "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    if-eqz v10, :cond_1

    iget-boolean v0, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->resend:Z

    if-nez v0, :cond_3

    .line 1143
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1146
    .end local v7    # "id":J
    .end local v9    # "msgBody":Ljava/lang/String;
    .end local v10    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    :cond_2
    return-void

    .line 1142
    .restart local v7    # "id":J
    .restart local v9    # "msgBody":Ljava/lang/String;
    .restart local v10    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    :cond_3
    invoke-virtual {p0, v10, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendMessage(Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    .locals 4
    .param p1, "evt"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    .prologue
    .line 261
    const-string v0, "BluetoothMapContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-nez v0, :cond_0

    .line 265
    const-string v0, "BluetoothMapContentObserver"

    const-string v1, "sendEvent: No MNS client registered - don\'t send event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_0
    return-void

    .line 270
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->encode()[B

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->sendEvent([BI)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unDeleteMessageMms(J)Z
    .locals 16
    .param p1, "handle"    # J

    .prologue
    .line 471
    const/4 v14, 0x0

    .line 472
    .local v14, "res":Z
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 473
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 475
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    const-string v2, "thread_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 477
    .local v15, "threadId":I
    const/4 v2, -0x1

    if-ne v15, v2, :cond_3

    .line 481
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 482
    .local v10, "id":J
    const-string v2, "msg_box"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 483
    .local v12, "msgBox":I
    const/4 v2, 0x1

    if-ne v12, v2, :cond_2

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/16 v4, 0x89

    invoke-static {v2, v10, v11, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v8

    .line 490
    .local v8, "address":Ljava/lang/String;
    :goto_0
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 491
    .local v13, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v8, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v2, v13}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadIdMms(Landroid/net/Uri;J)V

    .line 497
    .end local v8    # "address":Ljava/lang/String;
    .end local v10    # "id":J
    .end local v12    # "msgBox":I
    .end local v13    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    const/4 v14, 0x1

    .line 499
    .end local v15    # "threadId":I
    :cond_0
    if-eqz v9, :cond_1

    .line 500
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 502
    :cond_1
    return v14

    .line 487
    .restart local v10    # "id":J
    .restart local v12    # "msgBox":I
    .restart local v15    # "threadId":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/16 v4, 0x97

    invoke-static {v2, v10, v11, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "address":Ljava/lang/String;
    goto :goto_0

    .line 494
    .end local v8    # "address":Ljava/lang/String;
    .end local v10    # "id":J
    .end local v12    # "msgBox":I
    :cond_3
    const-string v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message not in deleted folder: handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " threadId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private unDeleteMessageSms(J)Z
    .locals 11
    .param p1, "handle"    # J

    .prologue
    const/4 v2, 0x0

    .line 539
    const/4 v9, 0x0

    .line 540
    .local v9, "res":Z
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 541
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 543
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const-string v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 545
    .local v10, "threadId":I
    const/4 v0, -0x1

    if-ne v10, v0, :cond_2

    .line 546
    const-string v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 547
    .local v6, "address":Ljava/lang/String;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 548
    .local v8, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v6, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 549
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadIdSms(Landroid/net/Uri;J)V

    .line 554
    .end local v6    # "address":Ljava/lang/String;
    .end local v8    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    const/4 v9, 0x1

    .line 556
    .end local v10    # "threadId":I
    :cond_0
    if-eqz v7, :cond_1

    .line 557
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 559
    :cond_1
    return v9

    .line 551
    .restart local v10    # "threadId":I
    :cond_2
    const-string v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message not in deleted folder: handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threadId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unRegisterPhoneServiceStateListener()V
    .locals 3

    .prologue
    .line 1124
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1125
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1126
    return-void
.end method

.method private updateThreadIdMms(Landroid/net/Uri;J)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "threadId"    # J

    .prologue
    const/4 v3, 0x0

    .line 465
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 466
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "thread_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 467
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 468
    return-void
.end method

.method private updateThreadIdSms(Landroid/net/Uri;J)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "threadId"    # J

    .prologue
    const/4 v3, 0x0

    .line 533
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 534
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "thread_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 535
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 536
    return-void
.end method

.method private writeMmsDataPart(JLcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;I)V
    .locals 7
    .param p1, "handle"    # J
    .param p3, "part"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 903
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 904
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "mid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 905
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 906
    const-string v4, "ct"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    :cond_0
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 908
    const-string v4, "cid"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :cond_1
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 910
    const-string v4, "cl"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    :cond_2
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentDisposition:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 912
    const-string v4, "cd"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentDisposition:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :cond_3
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 914
    const-string v4, "fn"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v4, "name"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    :cond_4
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 922
    .local v1, "partUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 925
    .local v2, "res":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 926
    .local v0, "os":Ljava/io/OutputStream;
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 927
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 928
    return-void

    .line 916
    .end local v0    # "os":Ljava/io/OutputStream;
    .end local v1    # "partUri":Landroid/net/Uri;
    .end local v2    # "res":Landroid/net/Uri;
    :cond_5
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    if-nez v4, :cond_4

    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 918
    const-string v4, "fn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "part_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const-string v4, "name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "part_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->unregister()V

    .line 1192
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unRegisterPhoneServiceStateListener()V

    .line 1193
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->failPendingMessages()V

    .line 1194
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->removeDeletedMessages()V

    .line 1195
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->register()V

    .line 1187
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->registerPhoneServiceStateListener()V

    .line 1188
    return-void
.end method

.method public pushMessage(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)J
    .locals 23
    .param p1, "msg"    # Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 639
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getRecipients()Ljava/util/ArrayList;

    move-result-object v20

    .line 640
    .local v20, "recipientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    const/4 v13, 0x0

    .line 642
    .local v13, "transparent":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v14

    .line 643
    .local v14, "retry":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v17

    .line 644
    .local v17, "charset":I
    const-wide/16 v11, -0x1

    .line 646
    .local v11, "handle":J
    if-nez v20, :cond_1

    .line 647
    const-string v1, "BluetoothMapContentObserver"

    const-string v5, "empty recipient list"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-wide/16 v5, -0x1

    .line 706
    :goto_1
    return-wide v5

    .line 640
    .end local v11    # "handle":J
    .end local v13    # "transparent":I
    .end local v14    # "retry":I
    .end local v17    # "charset":I
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v13

    goto :goto_0

    .line 651
    .restart local v11    # "handle":J
    .restart local v13    # "transparent":I
    .restart local v14    # "retry":I
    .restart local v17    # "charset":I
    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    :pswitch_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .line 652
    .local v19, "recipient":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getEnvLevel()I

    move-result v1

    if-nez v1, :cond_2

    .line 655
    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getFirstPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 656
    .local v3, "phone":Ljava/lang/String;
    const/4 v7, 0x0

    .line 657
    .local v7, "read":Z
    const/4 v8, 0x1

    .line 659
    .local v8, "deliveryReport":Z
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$3;->$SwitchMap$com$android$bluetooth$map$BluetoothMapUtils$TYPE:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_1
    move-object/from16 v1, p1

    .line 675
    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->getSmsBody()Ljava/lang/String;

    move-result-object v4

    .line 676
    .local v4, "msgBody":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://sms/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 677
    .local v2, "contentUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v5, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {v1 .. v8}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;

    move-result-object v16

    .line 680
    .local v16, "uri":Landroid/net/Uri;
    if-nez v16, :cond_3

    .line 681
    const-string v1, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pushMessage - failure on add to uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 685
    :cond_3
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 688
    const-string v1, "outbox"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 689
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    move-object/from16 v10, p0

    move-object v15, v3

    invoke-direct/range {v9 .. v16}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIILjava/lang/String;Landroid/net/Uri;)V

    .line 691
    .local v9, "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendMessage(Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v2    # "contentUri":Landroid/net/Uri;
    .end local v3    # "phone":Ljava/lang/String;
    .end local v4    # "msgBody":Ljava/lang/String;
    .end local v7    # "read":Z
    .end local v8    # "deliveryReport":Z
    .end local v9    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    .end local v16    # "uri":Landroid/net/Uri;
    .end local v19    # "recipient":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    :cond_4
    move-wide v5, v11

    .line 706
    goto/16 :goto_1

    .line 659
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public registerObserver(Lcom/android/bluetooth/map/BluetoothMnsObexClient;I)V
    .locals 4
    .param p1, "mns"    # Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    .param p2, "masId"    # I

    .prologue
    .line 248
    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    .line 249
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 250
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 251
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->initMsgList()V

    .line 252
    return-void
.end method

.method public sendMessage(Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;Ljava/lang/String;)V
    .locals 12
    .param p1, "msgInfo"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    .param p2, "msgBody"    # Ljava/lang/String;

    .prologue
    const/high16 v11, 0x8000000

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 933
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 934
    .local v0, "smsMng":Landroid/telephony/SmsManager;
    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 935
    .local v3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    .line 937
    new-instance v5, Ljava/util/ArrayList;

    iget v1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 938
    .local v5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v4, Ljava/util/ArrayList;

    iget v1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 940
    .local v4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    if-ge v6, v1, :cond_0

    .line 942
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_DELIVERY"

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 943
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "HANDLE"

    iget-wide v8, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-virtual {v7, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 944
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v1, v10, v7, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string v1, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 948
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v1, "HANDLE"

    iget-wide v8, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-virtual {v7, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 949
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v1, v10, v7, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 953
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "BluetoothMapContentObserver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendMessage to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->phone:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->phone:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 957
    return-void
.end method

.method public sendMmsMessage(Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)J
    .locals 6
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "to_address"    # Ljava/lang/String;
    .param p3, "msg"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    .prologue
    .line 723
    if-eqz p1, :cond_2

    const-string v3, "outbox"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "drafts"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 724
    :cond_0
    const/4 v3, 0x3

    invoke-direct {p0, v3, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->pushMmsToFolder(ILjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)J

    move-result-wide v0

    .line 726
    .local v0, "handle":J
    const-wide/16 v3, -0x1

    cmp-long v3, v3, v0

    if-eqz v3, :cond_1

    const-string v3, "outbox"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 727
    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->moveDraftToOutbox(J)V

    .line 729
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MMS_SEND_OUTBOX_MSG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    .local v2, "sendIntent":Landroid/content/Intent;
    const-string v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcasting intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 733
    .end local v2    # "sendIntent":Landroid/content/Intent;
    :cond_1
    return-wide v0

    .line 736
    .end local v0    # "handle":J
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot push message to other folders than outbox/drafts"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setMessageStatusDeleted(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;I)Z
    .locals 2
    .param p1, "handle"    # J
    .param p3, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .param p4, "statusValue"    # I

    .prologue
    .line 563
    const/4 v0, 0x0

    .line 567
    .local v0, "res":Z
    const/4 v1, 0x1

    if-ne p4, v1, :cond_3

    .line 568
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p3, v1, :cond_0

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_2

    .line 569
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deleteMessageSms(J)Z

    move-result v0

    .line 580
    :cond_1
    :goto_0
    return v0

    .line 570
    :cond_2
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_1

    .line 571
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deleteMessageMms(J)Z

    move-result v0

    goto :goto_0

    .line 573
    :cond_3
    if-nez p4, :cond_1

    .line 574
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p3, v1, :cond_4

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_5

    .line 575
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unDeleteMessageSms(J)Z

    move-result v0

    goto :goto_0

    .line 576
    :cond_5
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_1

    .line 577
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unDeleteMessageMms(J)Z

    move-result v0

    goto :goto_0
.end method

.method public setMessageStatusRead(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;I)Z
    .locals 9
    .param p1, "handle"    # J
    .param p3, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .param p4, "statusValue"    # I

    .prologue
    const/4 v2, 0x0

    .line 584
    const/4 v8, 0x1

    .line 592
    .local v8, "res":Z
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v0, :cond_2

    .line 593
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 594
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 596
    .local v6, "c":Landroid/database/Cursor;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 597
    .local v7, "contentValues":Landroid/content/ContentValues;
    const-string v0, "read"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v7, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 608
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "contentValues":Landroid/content/ContentValues;
    :cond_1
    :goto_0
    return v8

    .line 599
    :cond_2
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v0, :cond_1

    .line 600
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 601
    .restart local v1    # "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 603
    .restart local v6    # "c":Landroid/database/Cursor;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 604
    .restart local v7    # "contentValues":Landroid/content/ContentValues;
    const-string v0, "read"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 605
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v7, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterObserver()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 258
    return-void
.end method
