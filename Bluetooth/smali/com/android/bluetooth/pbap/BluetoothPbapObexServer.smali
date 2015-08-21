.class public Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;
.super Ljavax/obex/ServerRequestHandler;
.source "BluetoothPbapObexServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;,
        Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$ContentType;
    }
.end annotation


# static fields
.field private static CALLLOG_NUM_LIMIT:I = 0x0

.field private static final CCH:Ljava/lang/String; = "cch"

.field private static final CCH_PATH:Ljava/lang/String; = "/telecom/cch"

.field private static final D:Z = true

.field private static final ICH:Ljava/lang/String; = "ich"

.field private static final ICH_PATH:Ljava/lang/String; = "/telecom/ich"

.field private static final LEGAL_PATH:[Ljava/lang/String;

.field private static final LEGAL_PATH_WITH_SIM:[Ljava/lang/String;

.field private static final MCH:Ljava/lang/String; = "mch"

.field private static final MCH_PATH:Ljava/lang/String; = "/telecom/mch"

.field private static final NEED_SEND_BODY:I = -0x1

.field private static final OCH:Ljava/lang/String; = "och"

.field private static final OCH_PATH:Ljava/lang/String; = "/telecom/och"

.field public static ORDER_BY_ALPHABETICAL:I = 0x0

.field public static ORDER_BY_INDEXED:I = 0x0

.field private static final PB:Ljava/lang/String; = "pb"

.field private static final PBAP_TARGET:[B

.field private static final PB_PATH:Ljava/lang/String; = "/telecom/pb"

.field private static final SIM1:Ljava/lang/String; = "SIM1"

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapObexServer"

.field private static final TYPE_LISTING:Ljava/lang/String; = "x-bt/vcard-listing"

.field private static final TYPE_PB:Ljava/lang/String; = "x-bt/phonebook"

.field private static final TYPE_VCARD:Ljava/lang/String; = "x-bt/vcard"

.field private static final UUID_LENGTH:I = 0x10

.field private static final V:Z = false

.field private static final VCARD_NAME_SUFFIX_LENGTH:I = 0x5

.field public static sIsAborted:Z


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentPath:Ljava/lang/String;

.field private mMissedCallSize:I

.field private mNeedNewMissedCallsNum:Z

.field private mNeedPhonebookSize:Z

.field private mOrderBy:I

.field private mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->PBAP_TARGET:[B

    .line 77
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/telecom"

    aput-object v1, v0, v3

    const-string v1, "/telecom/pb"

    aput-object v1, v0, v4

    const-string v1, "/telecom/ich"

    aput-object v1, v0, v5

    const-string v1, "/telecom/och"

    aput-object v1, v0, v6

    const-string v1, "/telecom/mch"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "/telecom/cch"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    .line 83
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/telecom"

    aput-object v1, v0, v3

    const-string v1, "/telecom/pb"

    aput-object v1, v0, v4

    const-string v1, "/telecom/ich"

    aput-object v1, v0, v5

    const-string v1, "/telecom/och"

    aput-object v1, v0, v6

    const-string v1, "/telecom/mch"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "/telecom/cch"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/SIM1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/SIM1/telecom"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/SIM1/telecom/ich"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/SIM1/telecom/och"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/SIM1/telecom/mch"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "/SIM1/telecom/cch"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "/SIM1/telecom/pb"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH_WITH_SIM:[Ljava/lang/String;

    .line 150
    const/16 v0, 0x32

    sput v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->CALLLOG_NUM_LIMIT:I

    .line 152
    sput v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    .line 154
    sput v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    .line 156
    sput-boolean v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    return-void

    .line 71
    :array_0
    .array-data 1
        0x79t
        0x61t
        0x35t
        -0x10t
        -0x10t
        -0x3bt
        0x11t
        -0x28t
        0x9t
        0x66t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 131
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 135
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 137
    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    .line 148
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    .line 172
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    .line 173
    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    .line 174
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .line 177
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 178
    const-string v0, "BluetoothPbapObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialize mMissedCallSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public static closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z
    .locals 5
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 942
    const/4 v1, 0x1

    .line 944
    .local v1, "returnvalue":Z
    if-eqz p0, :cond_0

    .line 945
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 953
    :try_start_1
    invoke-interface {p1}, Ljavax/obex/Operation;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 959
    :cond_1
    :goto_1
    return v1

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputStream close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v1, 0x0

    goto :goto_0

    .line 955
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 956
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)I
    .locals 13
    .param p1, "maxListCount"    # I
    .param p2, "listStartOffset"    # I
    .param p3, "searchValue"    # Ljava/lang/String;
    .param p4, "result"    # Ljava/lang/StringBuilder;
    .param p5, "type"    # Ljava/lang/String;

    .prologue
    .line 596
    const/4 v4, 0x0

    .line 597
    .local v4, "itemsFound":I
    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget v11, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    invoke-virtual {v10, v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookNameList(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 598
    .local v6, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v10, p1, :cond_1

    move v9, p1

    .line 599
    .local v9, "requestSize":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 600
    .local v5, "listSize":I
    const-string v1, ""

    .line 602
    .local v1, "compareValue":Ljava/lang/String;
    const-string v10, "BluetoothPbapObexServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "search by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", requestSize="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " offset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " searchValue="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-string v10, "number"

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 607
    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 608
    .local v7, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 609
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 610
    const-string v10, "BluetoothPbapObexServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "compareValue="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    move v8, p2

    .line 612
    .local v8, "pos":I
    :goto_2
    if-ge v8, v5, :cond_2

    if-ge v4, v9, :cond_2

    .line 613
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 614
    .local v2, "currentValue":Ljava/lang/String;
    const-string v10, "BluetoothPbapObexServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currentValue="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 616
    add-int/lit8 v4, v4, 0x1

    .line 617
    move-object/from16 v0, p4

    invoke-direct {p0, v8, v2, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 612
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 598
    .end local v1    # "compareValue":Ljava/lang/String;
    .end local v2    # "currentValue":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "listSize":I
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "pos":I
    .end local v9    # "requestSize":I
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto/16 :goto_0

    .line 620
    .restart local v1    # "compareValue":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "listSize":I
    .restart local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "pos":I
    .restart local v9    # "requestSize":I
    :cond_2
    if-lt v4, v9, :cond_4

    .line 638
    .end local v3    # "i":I
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "pos":I
    :cond_3
    return v4

    .line 608
    .restart local v3    # "i":I
    .restart local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "pos":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 625
    .end local v3    # "i":I
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "pos":I
    :cond_5
    if-eqz p3, :cond_6

    .line 626
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 628
    :cond_6
    move v8, p2

    .line 629
    .restart local v8    # "pos":I
    :goto_3
    if-ge v8, v5, :cond_3

    if-ge v4, v9, :cond_3

    .line 630
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 631
    .restart local v2    # "currentValue":Ljava/lang/String;
    const-string v10, "BluetoothPbapObexServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currentValue="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    if-eqz p3, :cond_7

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 633
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 634
    move-object/from16 v0, p4

    invoke-direct {p0, v8, v2, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 629
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method public static final createSelectionPara(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 968
    const/4 v0, 0x0

    .line 969
    .local v0, "selection":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 983
    :goto_0
    return-object v0

    .line 971
    :pswitch_0
    const-string v0, "type=1"

    .line 972
    goto :goto_0

    .line 974
    :pswitch_1
    const-string v0, "type=2"

    .line 975
    goto :goto_0

    .line 977
    :pswitch_2
    const-string v0, "type=3"

    .line 978
    goto :goto_0

    .line 969
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;)I
    .locals 11
    .param p1, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    .param p2, "size"    # I
    .param p3, "reply"    # Ljavax/obex/HeaderSet;
    .param p4, "op"    # Ljavax/obex/Operation;

    .prologue
    const/16 v10, 0x4c

    const/16 v9, 0x9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 694
    new-array v2, v7, [B

    .line 695
    .local v2, "misnum":[B
    new-instance v0, Ljavax/obex/ApplicationParameter;

    invoke-direct {v0}, Ljavax/obex/ApplicationParameter;-><init>()V

    .line 699
    .local v0, "ap":Ljavax/obex/ApplicationParameter;
    iget-boolean v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    if-eqz v6, :cond_2

    .line 701
    iput-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 703
    new-array v4, v8, [B

    .line 705
    .local v4, "pbsize":[B
    div-int/lit16 v6, p2, 0x100

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 706
    rem-int/lit16 v6, p2, 0x100

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v7

    .line 707
    const/16 v6, 0x8

    invoke-virtual {v0, v6, v8, v4}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 710
    iget-boolean v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    if-eqz v6, :cond_0

    .line 711
    iput-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 712
    iget v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    sub-int v3, p2, v6

    .line 713
    .local v3, "nmnum":I
    iput p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 715
    if-lez v3, :cond_1

    .line 716
    :goto_0
    int-to-byte v6, v3

    aput-byte v6, v2, v5

    .line 717
    invoke-virtual {v0, v9, v7, v2}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 719
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleAppParaForResponse(): mNeedNewMissedCallsNum=true,  num= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    .end local v3    # "nmnum":I
    :cond_0
    invoke-virtual {v0}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v5

    invoke-virtual {p3, v10, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 724
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Send back Phonebook size only, without body info! Size= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-direct {p0, p4, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushHeader(Ljavax/obex/Operation;Ljavax/obex/HeaderSet;)I

    move-result v5

    .line 756
    .end local v4    # "pbsize":[B
    :goto_1
    return v5

    .restart local v3    # "nmnum":I
    .restart local v4    # "pbsize":[B
    :cond_1
    move v3, v5

    .line 715
    goto :goto_0

    .line 732
    .end local v3    # "nmnum":I
    .end local v4    # "pbsize":[B
    :cond_2
    iget-boolean v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    if-eqz v6, :cond_3

    .line 734
    iput-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 736
    iget v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    sub-int v3, p2, v6

    .line 737
    .restart local v3    # "nmnum":I
    iput p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 739
    if-lez v3, :cond_4

    .line 740
    :goto_2
    int-to-byte v6, v3

    aput-byte v6, v2, v5

    .line 741
    invoke-virtual {v0, v9, v7, v2}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 743
    invoke-virtual {v0}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v5

    invoke-virtual {p3, v10, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 744
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleAppParaForResponse(): mNeedNewMissedCallsNum=true,  num= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :try_start_0
    invoke-interface {p4, p3}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    .end local v3    # "nmnum":I
    :cond_3
    const/4 v5, -0x1

    goto :goto_1

    .restart local v3    # "nmnum":I
    :cond_4
    move v3, v5

    .line 739
    goto :goto_2

    .line 751
    :catch_0
    move-exception v1

    .line 752
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "BluetoothPbapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/16 v5, 0xd0

    goto :goto_1
.end method

.method private final isLegalPath(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 426
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 434
    :cond_0
    :goto_0
    return v1

    .line 429
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 430
    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 434
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final logHeader(Ljavax/obex/HeaderSet;)V
    .locals 4
    .param p0, "hs"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 1035
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dumping HeaderSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :try_start_0
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "COUNT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc0

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NAME : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LENGTH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc3

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIME_ISO_8601 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x44

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIME_4_BYTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc4

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DESCRIPTION : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TARGET : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x46

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x47

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WHO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4a

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBJECT_CLASS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4f

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLICATION_PARAMETER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    :goto_0
    return-void

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump HeaderSet error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyUpdateWakeLock()V
    .locals 2

    .prologue
    .line 1029
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1030
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1031
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1032
    return-void
.end method

.method private final parseApplicationParameter([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;)Z
    .locals 8
    .param p1, "appParam"    # [B
    .param p2, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;

    .prologue
    .line 478
    const/4 v1, 0x0

    .line 479
    .local v1, "i":I
    const/4 v4, 0x1

    .line 480
    .local v4, "parseOk":Z
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_4

    .line 481
    aget-byte v5, p1, v1

    packed-switch v5, :pswitch_data_0

    .line 538
    const/4 v4, 0x0

    .line 539
    const-string v5, "BluetoothPbapObexServer"

    const-string v6, "Parse Application Parameter error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 483
    :pswitch_0
    add-int/lit8 v1, v1, 0x2

    .line 484
    add-int/lit8 v1, v1, 0x8

    .line 485
    goto :goto_0

    .line 487
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    .line 488
    aget-byte v5, p1, v1

    invoke-static {v5}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    .line 489
    add-int/lit8 v1, v1, 0x1

    .line 490
    goto :goto_0

    .line 492
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 494
    aget-byte v2, p1, v1

    .line 495
    .local v2, "length":I
    if-nez v2, :cond_0

    .line 496
    const/4 v4, 0x0

    .line 497
    goto :goto_0

    .line 499
    :cond_0
    add-int v5, v1, v2

    aget-byte v5, p1, v5

    if-nez v5, :cond_1

    .line 500
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v2, -0x1

    invoke-direct {v5, p1, v6, v7}, Ljava/lang/String;-><init>([BII)V

    iput-object v5, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    .line 504
    :goto_1
    add-int/2addr v1, v2

    .line 505
    add-int/lit8 v1, v1, 0x1

    .line 506
    goto :goto_0

    .line 502
    :cond_1
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v5, p1, v6, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v5, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    goto :goto_1

    .line 508
    .end local v2    # "length":I
    :pswitch_3
    add-int/lit8 v1, v1, 0x2

    .line 509
    aget-byte v5, p1, v1

    invoke-static {v5}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    .line 510
    add-int/lit8 v1, v1, 0x1

    .line 511
    goto :goto_0

    .line 513
    :pswitch_4
    add-int/lit8 v1, v1, 0x2

    .line 514
    aget-byte v5, p1, v1

    if-nez v5, :cond_2

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p1, v5

    if-nez v5, :cond_2

    .line 515
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 521
    :goto_2
    add-int/lit8 v1, v1, 0x2

    .line 522
    goto :goto_0

    .line 517
    :cond_2
    aget-byte v5, p1, v1

    and-int/lit16 v0, v5, 0xff

    .line 518
    .local v0, "highValue":I
    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v3, v5, 0xff

    .line 519
    .local v3, "lowValue":I
    mul-int/lit16 v5, v0, 0x100

    add-int/2addr v5, v3

    iput v5, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    goto :goto_2

    .line 524
    .end local v0    # "highValue":I
    .end local v3    # "lowValue":I
    :pswitch_5
    add-int/lit8 v1, v1, 0x2

    .line 525
    aget-byte v5, p1, v1

    and-int/lit16 v0, v5, 0xff

    .line 526
    .restart local v0    # "highValue":I
    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v3, v5, 0xff

    .line 527
    .restart local v3    # "lowValue":I
    mul-int/lit16 v5, v0, 0x100

    add-int/2addr v5, v3

    iput v5, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    .line 528
    add-int/lit8 v1, v1, 0x2

    .line 529
    goto/16 :goto_0

    .line 531
    .end local v0    # "highValue":I
    .end local v3    # "lowValue":I
    :pswitch_6
    add-int/lit8 v1, v1, 0x2

    .line 532
    aget-byte v5, p1, v1

    if-eqz v5, :cond_3

    .line 533
    const/4 v5, 0x0

    iput-boolean v5, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 535
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 536
    goto/16 :goto_0

    .line 544
    :cond_4
    invoke-virtual {p2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->dump()V

    .line 546
    return v4

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private final pullPhonebook([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;Ljava/lang/String;)I
    .locals 25
    .param p1, "appParam"    # [B
    .param p2, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    .param p3, "reply"    # Ljavax/obex/HeaderSet;
    .param p4, "op"    # Ljavax/obex/Operation;
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 877
    if-eqz p5, :cond_1

    .line 878
    const-string v5, "."

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 879
    .local v20, "dotIndex":I
    const-string v24, "vcf"

    .line 880
    .local v24, "vcf":Ljava/lang/String;
    if-ltz v20, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v20

    if-gt v0, v5, :cond_1

    .line 881
    add-int/lit8 v5, v20, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 882
    const-string v5, "BluetoothPbapObexServer"

    const-string v6, "name is not .vcf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/16 v21, 0xc6

    .line 936
    .end local v20    # "dotIndex":I
    .end local v24    # "vcf":Ljava/lang/String;
    :cond_0
    :goto_0
    return v21

    .line 888
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v22

    .line 889
    .local v22, "pbSize":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v22

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;)I

    move-result v21

    .line 890
    .local v21, "needSendBody":I
    const/4 v5, -0x1

    move/from16 v0, v21

    if-ne v0, v5, :cond_0

    .line 894
    if-nez v22, :cond_2

    .line 896
    const/16 v21, 0xa0

    goto :goto_0

    .line 899
    :cond_2
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    move/from16 v0, v22

    if-lt v0, v5, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    move/from16 v23, v0

    .line 901
    .local v23, "requestSize":I
    :goto_1
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    .line 902
    .local v13, "startPoint":I
    if-ltz v13, :cond_3

    move/from16 v0, v22

    if-lt v13, v0, :cond_5

    .line 903
    :cond_3
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "listStartOffset is not correct! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/16 v21, 0xa0

    goto :goto_0

    .end local v13    # "startPoint":I
    .end local v23    # "requestSize":I
    :cond_4
    move/from16 v23, v22

    .line 899
    goto :goto_1

    .line 908
    .restart local v13    # "startPoint":I
    .restart local v23    # "requestSize":I
    :cond_5
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    .line 909
    sget v5, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->CALLLOG_NUM_LIMIT:I

    move/from16 v0, v23

    if-le v0, v5, :cond_6

    .line 910
    sget v23, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->CALLLOG_NUM_LIMIT:I

    .line 914
    :cond_6
    add-int v5, v13, v23

    add-int/lit8 v8, v5, -0x1

    .line 915
    .local v8, "endPoint":I
    add-int/lit8 v5, v22, -0x1

    if-le v8, v5, :cond_7

    .line 916
    add-int/lit8 v8, v22, -0x1

    .line 918
    :cond_7
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pullPhonebook(): requestSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " startPoint="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " endPoint="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    move-object/from16 v0, p2

    iget-boolean v9, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 922
    .local v9, "vcard21":Z
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    .line 923
    if-nez v13, :cond_9

    .line 924
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v9, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(Z[B)Ljava/lang/String;

    move-result-object v10

    .line 925
    .local v10, "ownerVcard":Ljava/lang/String;
    if-nez v8, :cond_8

    .line 926
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v21

    goto/16 :goto_0

    .line 928
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v7, 0x1

    move-object/from16 v6, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;)I

    move-result v21

    goto/16 :goto_0

    .line 932
    .end local v10    # "ownerVcard":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/16 v16, 0x0

    move-object/from16 v12, p4

    move v14, v8

    move v15, v9

    invoke-virtual/range {v11 .. v16}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;)I

    move-result v21

    goto/16 :goto_0

    .line 936
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    add-int/lit8 v17, v13, 0x1

    add-int/lit8 v18, v8, 0x1

    move-object/from16 v16, p4

    move/from16 v19, v9

    invoke-virtual/range {v14 .. v19}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendCallLogVcards(ILjavax/obex/Operation;IIZ)I

    move-result v21

    goto/16 :goto_0
.end method

.method private final pullVcardEntry([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/Operation;Ljava/lang/String;Ljava/lang/String;)I
    .locals 15
    .param p1, "appParam"    # [B
    .param p2, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    .param p3, "op"    # Ljavax/obex/Operation;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "current_path"    # Ljava/lang/String;

    .prologue
    .line 822
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 823
    :cond_0
    const-string v1, "BluetoothPbapObexServer"

    const-string v2, "Name is Null, or the length of name < 5 !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/16 v1, 0xc6

    .line 871
    :goto_0
    return v1

    .line 826
    :cond_1
    const/4 v1, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 827
    .local v14, "strIndex":Ljava/lang/String;
    const/4 v3, 0x0

    .line 828
    .local v3, "intIndex":I
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 830
    :try_start_0
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 837
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v13

    .line 838
    .local v13, "size":I
    if-nez v13, :cond_3

    .line 840
    const/16 v1, 0xc4

    goto :goto_0

    .line 831
    .end local v13    # "size":I
    :catch_0
    move-exception v11

    .line 832
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catch number format exception "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/16 v1, 0xc6

    goto :goto_0

    .line 843
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v13    # "size":I
    :cond_3
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 844
    .local v4, "vcard21":Z
    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    if-nez v1, :cond_4

    .line 845
    const-string v1, "BluetoothPbapObexServer"

    const-string v2, "wrong path!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/16 v1, 0xc6

    goto :goto_0

    .line 847
    :cond_4
    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 848
    if-ltz v3, :cond_5

    if-lt v3, v13, :cond_6

    .line 849
    :cond_5
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The requested vcard is not acceptable! name= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/16 v1, 0xc4

    goto/16 :goto_0

    .line 851
    :cond_6
    if-nez v3, :cond_7

    .line 853
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(Z[B)Ljava/lang/String;

    move-result-object v12

    .line 854
    .local v12, "ownerVcard":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 856
    .end local v12    # "ownerVcard":Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    move-object/from16 v2, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;I)I

    move-result v1

    goto/16 :goto_0

    .line 860
    :cond_8
    if-lez v3, :cond_9

    if-le v3, v13, :cond_a

    .line 861
    :cond_9
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The requested vcard is not acceptable! name= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/16 v1, 0xc4

    goto/16 :goto_0

    .line 866
    :cond_a
    const/4 v1, 0x1

    if-lt v3, v1, :cond_b

    .line 867
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move-object/from16 v7, p3

    move v8, v3

    move v9, v3

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendCallLogVcards(ILjavax/obex/Operation;IIZ)I

    move-result v1

    goto/16 :goto_0

    .line 871
    :cond_b
    const/16 v1, 0xa0

    goto/16 :goto_0
.end method

.method private final pullVcardListing([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;)I
    .locals 15
    .param p1, "appParam"    # [B
    .param p2, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    .param p3, "reply"    # Ljavax/obex/HeaderSet;
    .param p4, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 761
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 763
    .local v12, "searchAttr":Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 765
    :cond_0
    const-string v3, "0"

    move-object/from16 v0, p2

    iput-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    .line 766
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "searchAttr is not set by PCE, assume search by name by default"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v14

    .line 780
    .local v14, "size":I
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {p0, v0, v14, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;)I

    move-result v10

    .line 781
    .local v10, "needSendBody":I
    const/4 v3, -0x1

    if-eq v10, v3, :cond_4

    .line 817
    .end local v10    # "needSendBody":I
    .end local v14    # "size":I
    :goto_1
    return v10

    .line 767
    :cond_1
    const-string v3, "0"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "1"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 768
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "search attr not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const-string v3, "2"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 771
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "do not support search by sound"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/16 v10, 0xd1

    goto :goto_1

    .line 774
    :cond_2
    const/16 v10, 0xcc

    goto :goto_1

    .line 776
    :cond_3
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchAttr is valid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 785
    .restart local v10    # "needSendBody":I
    .restart local v14    # "size":I
    :cond_4
    if-nez v14, :cond_5

    .line 787
    const/16 v10, 0xa0

    goto :goto_1

    .line 790
    :cond_5
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 791
    .local v11, "orderPara":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 793
    const-string v11, "0"

    .line 794
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "Order parameter is not set by PCE. Assume order by \'Indexed\' by default"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :goto_2
    const-string v3, "0"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 809
    sget v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    iput v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    .line 814
    :cond_6
    :goto_3
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    move-object v3, p0

    move-object/from16 v5, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sendVcardListingXml(ILjavax/obex/Operation;IILjava/lang/String;Ljava/lang/String;)I

    move-result v13

    .local v13, "sendResult":I
    move v10, v13

    .line 817
    goto/16 :goto_1

    .line 796
    .end local v13    # "sendResult":I
    :cond_7
    const-string v3, "0"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "1"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 798
    const-string v3, "2"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 800
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "Do not support order by sound"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/16 v10, 0xd1

    goto/16 :goto_1

    .line 803
    :cond_8
    const/16 v10, 0xcc

    goto/16 :goto_1

    .line 805
    :cond_9
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Order parameter is valid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 810
    :cond_a
    const-string v3, "1"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 811
    sget v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    iput v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    goto :goto_3
.end method

.method private final pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "vcardString"    # Ljava/lang/String;

    .prologue
    .line 669
    if-nez p2, :cond_1

    .line 670
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "vcardString is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/16 v2, 0xa0

    .line 689
    :cond_0
    :goto_0
    return v2

    .line 674
    :cond_1
    const/4 v1, 0x0

    .line 675
    .local v1, "outputStream":Ljava/io/OutputStream;
    const/16 v2, 0xa0

    .line 677
    .local v2, "pushResult":I
    :try_start_0
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 678
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_1
    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 686
    const/16 v2, 0xd0

    goto :goto_0

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open/write outputstrem failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/16 v2, 0xd0

    goto :goto_1
.end method

.method private final pushHeader(Ljavax/obex/Operation;Ljavax/obex/HeaderSet;)I
    .locals 5
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 646
    const/4 v1, 0x0

    .line 648
    .local v1, "outputStream":Ljava/io/OutputStream;
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "Push Header"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v3, "BluetoothPbapObexServer"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/16 v2, 0xa0

    .line 653
    .local v2, "pushResult":I
    :try_start_0
    invoke-interface {p1, p2}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 654
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 655
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 661
    :goto_0
    const/16 v2, 0xd0

    .line 664
    :cond_0
    return v2

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "BluetoothPbapObexServer"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 658
    const/16 v2, 0xd0

    .line 660
    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 661
    const/16 v2, 0xd0

    .line 660
    :cond_1
    throw v3
.end method

.method private final sendVcardListingXml(ILjavax/obex/Operation;IILjava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "type"    # I
    .param p2, "op"    # Ljavax/obex/Operation;
    .param p3, "maxListCount"    # I
    .param p4, "listStartOffset"    # I
    .param p5, "searchValue"    # Ljava/lang/String;
    .param p6, "searchAttr"    # Ljava/lang/String;

    .prologue
    .line 553
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    .local v5, "result":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 555
    .local v8, "itemsFound":I
    const-string v1, "<?xml version=\"1.0\"?>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string v1, "<!DOCTYPE vcard-listing SYSTEM \"vcard-listing.dtd\">"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v1, "<vCard-listing version=\"1.0\">"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 561
    const-string v1, "0"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    const-string v6, "name"

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v8

    .line 587
    :cond_0
    :goto_0
    const-string v1, "</vCard-listing>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v1

    :goto_1
    return v1

    .line 564
    :cond_1
    const-string v1, "1"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 565
    const-string v6, "number"

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 569
    :cond_2
    const/16 v1, 0xcc

    goto :goto_1

    .line 574
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->loadCallHistoryList(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 575
    .local v10, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, p3

    if-lt v1, v0, :cond_5

    move/from16 v11, p3

    .line 576
    .local v11, "requestSize":I
    :goto_2
    move/from16 v12, p4

    .line 577
    .local v12, "startPoint":I
    add-int v7, v12, v11

    .line 578
    .local v7, "endPoint":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v7, v1, :cond_4

    .line 579
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 581
    :cond_4
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call log list, size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    move v9, v12

    .local v9, "j":I
    :goto_3
    if-ge v9, v7, :cond_0

    .line 584
    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v1, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 583
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 575
    .end local v7    # "endPoint":I
    .end local v9    # "j":I
    .end local v11    # "requestSize":I
    .end local v12    # "startPoint":I
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    goto :goto_2
.end method

.method private writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "vcfIndex"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1021
    const-string v0, "<card handle=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1023
    const-string v0, ".vcf\" name=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    invoke-direct {p0, p2, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1025
    const-string v0, "\"/>"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    return-void
.end method

.method private xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 990
    if-nez p1, :cond_1

    .line 1018
    :cond_0
    return-void

    .line 994
    :cond_1
    new-instance v1, Ljava/text/StringCharacterIterator;

    invoke-direct {v1, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 995
    .local v1, "iterator":Ljava/text/StringCharacterIterator;
    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->current()C

    move-result v0

    .line 996
    .local v0, "character":C
    :goto_0
    const v2, 0xffff

    if-eq v0, v2, :cond_0

    .line 997
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_2

    .line 998
    const-string v2, "&lt;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    :goto_1
    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->next()C

    move-result v0

    goto :goto_0

    .line 1000
    :cond_2
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_3

    .line 1001
    const-string v2, "&gt;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1003
    :cond_3
    const/16 v2, 0x22

    if-ne v0, v2, :cond_4

    .line 1004
    const-string v2, "&quot;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1006
    :cond_4
    const/16 v2, 0x27

    if-ne v0, v2, :cond_5

    .line 1007
    const-string v2, "&#039;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1009
    :cond_5
    const/16 v2, 0x26

    if-ne v0, v2, :cond_6

    .line 1010
    const-string v2, "&amp;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1014
    :cond_6
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 2
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 245
    const-string v0, "BluetoothPbapObexServer"

    const-string v1, "onAbort(): enter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 247
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 248
    const/16 v0, 0xa0

    return v0
.end method

.method public final onAuthenticationFailure([B)V
    .locals 0
    .param p1, "userName"    # [B

    .prologue
    .line 965
    return-void
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 306
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1388

    iput v1, v0, Landroid/os/Message;->what:I

    .line 307
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 308
    const-string v1, "BluetoothPbapObexServer"

    const-string v2, "onClose(): msg MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 12
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    const/16 v8, 0xd0

    const/16 v11, 0x10

    const/16 v7, 0xc6

    .line 184
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 186
    const/16 v6, 0x46

    :try_start_0
    invoke-virtual {p1, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v5, v0

    .line 187
    .local v5, "uuid":[B
    if-nez v5, :cond_0

    move v6, v7

    .line 226
    .end local v5    # "uuid":[B
    :goto_0
    return v6

    .line 190
    .restart local v5    # "uuid":[B
    :cond_0
    const-string v6, "BluetoothPbapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onConnect(): uuid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    array-length v6, v5

    if-eq v6, v11, :cond_1

    .line 193
    const-string v6, "BluetoothPbapObexServer"

    const-string v9, "Wrong UUID length"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 194
    goto :goto_0

    .line 196
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v11, :cond_3

    .line 197
    aget-byte v6, v5, v2

    sget-object v9, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->PBAP_TARGET:[B

    aget-byte v9, v9, v2

    if-eq v6, v9, :cond_2

    .line 198
    const-string v6, "BluetoothPbapObexServer"

    const-string v9, "Wrong UUID"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 199
    goto :goto_0

    .line 196
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    :cond_3
    const/16 v6, 0x4a

    invoke-virtual {p2, v6, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    const/16 v6, 0x4a

    :try_start_1
    invoke-virtual {p1, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v4, v0

    .line 210
    .local v4, "remote":[B
    if-eqz v4, :cond_4

    .line 211
    const-string v6, "BluetoothPbapObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConnect(): remote="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/16 v6, 0x46

    invoke-virtual {p2, v6, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    :cond_4
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 223
    .local v3, "msg":Landroid/os/Message;
    const/16 v6, 0x1389

    iput v6, v3, Landroid/os/Message;->what:I

    .line 224
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 226
    const/16 v6, 0xa0

    goto/16 :goto_0

    .line 203
    .end local v2    # "i":I
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "remote":[B
    .end local v5    # "uuid":[B
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "BluetoothPbapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 205
    goto/16 :goto_0

    .line 214
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v5    # "uuid":[B
    :catch_1
    move-exception v1

    .line 215
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "BluetoothPbapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 216
    goto/16 :goto_0
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 3
    .param p1, "req"    # Ljavax/obex/HeaderSet;
    .param p2, "resp"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 231
    const-string v1, "BluetoothPbapObexServer"

    const-string v2, "onDisconnect(): enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 234
    const/16 v1, 0xa0

    iput v1, p2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 235
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 238
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 241
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 17
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 315
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 316
    const/4 v14, 0x0

    .line 317
    .local v14, "request":Ljavax/obex/HeaderSet;
    new-instance v10, Ljavax/obex/HeaderSet;

    invoke-direct {v10}, Ljavax/obex/HeaderSet;-><init>()V

    .line 318
    .local v10, "reply":Ljavax/obex/HeaderSet;
    const-string v15, ""

    .line 319
    .local v15, "type":Ljava/lang/String;
    const-string v6, ""

    .line 320
    .local v6, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 321
    .local v3, "appParam":[B
    new-instance v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;)V

    .line 323
    .local v4, "appParamValue":Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v14

    .line 324
    const/16 v2, 0x42

    invoke-virtual {v14, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    .line 325
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 326
    const/16 v2, 0x4c

    invoke-virtual {v14, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    const-string v2, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OnGet type is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; name is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-nez v15, :cond_0

    .line 336
    const/16 v2, 0xc6

    .line 420
    :goto_0
    return v2

    .line 327
    :catch_0
    move-exception v13

    .line 328
    .local v13, "e":Ljava/io/IOException;
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "request headers error"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/16 v2, 0xd0

    goto :goto_0

    .line 346
    .end local v13    # "e":Ljava/io/IOException;
    :cond_0
    const/16 v16, 0x1

    .line 347
    .local v16, "validName":Z
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    const/16 v16, 0x0

    .line 351
    :cond_1
    if-eqz v16, :cond_2

    if-eqz v16, :cond_8

    const-string v2, "x-bt/vcard"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 352
    :cond_2
    const-string v2, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Guess what carkit actually want from current path ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/pb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 356
    const/4 v2, 0x1

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 370
    :goto_1
    const-string v2, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGet(): appParamValue.needTag="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_2
    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->parseApplicationParameter([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 404
    const/16 v2, 0xc0

    goto :goto_0

    .line 357
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/ich"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 358
    const/4 v2, 0x2

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_1

    .line 359
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/och"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 360
    const/4 v2, 0x3

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_1

    .line 361
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/mch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 362
    const/4 v2, 0x4

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 363
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    goto :goto_1

    .line 364
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/cch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 365
    const/4 v2, 0x5

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_1

    .line 367
    :cond_7
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "mCurrentpath is not valid path!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/16 v2, 0xc6

    goto/16 :goto_0

    .line 373
    :cond_8
    const-string v2, "SIM1"

    const/4 v5, 0x0

    const-string v7, "SIM1"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 374
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "Not support access SIM card info!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/16 v2, 0xc6

    goto/16 :goto_0

    .line 381
    :cond_9
    const-string v2, "pb"

    const/4 v5, 0x0

    const-string v7, "pb"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 382
    const/4 v2, 0x1

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 383
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "download phonebook request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 384
    :cond_a
    const-string v2, "ich"

    const/4 v5, 0x0

    const-string v7, "ich"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 385
    const/4 v2, 0x2

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 386
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "download incoming calls request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 387
    :cond_b
    const-string v2, "och"

    const/4 v5, 0x0

    const-string v7, "och"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 388
    const/4 v2, 0x3

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 389
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "download outgoing calls request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 390
    :cond_c
    const-string v2, "mch"

    const/4 v5, 0x0

    const-string v7, "mch"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 391
    const/4 v2, 0x4

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 392
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 393
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "download missed calls request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 394
    :cond_d
    const-string v2, "cch"

    const/4 v5, 0x0

    const-string v7, "cch"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 395
    const/4 v2, 0x5

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 396
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "download combined calls request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 398
    :cond_e
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "Input name doesn\'t contain valid info!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/16 v2, 0xc6

    goto/16 :goto_0

    .line 408
    :cond_f
    const-string v2, "x-bt/vcard-listing"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 409
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v4, v10, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullVcardListing([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;)I

    move-result v2

    goto/16 :goto_0

    .line 412
    :cond_10
    const-string v2, "x-bt/vcard"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 413
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullVcardEntry([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/Operation;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 416
    :cond_11
    const-string v2, "x-bt/phonebook"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object/from16 v11, p1

    move-object v12, v6

    .line 417
    invoke-direct/range {v7 .. v12}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullPhonebook([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 419
    :cond_12
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "unknown type request!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/16 v2, 0xc6

    goto/16 :goto_0
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 2
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 253
    const-string v0, "BluetoothPbapObexServer"

    const-string v1, "onPut(): not support PUT request."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 255
    const/16 v0, 0xc0

    return v0
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 7
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;
    .param p3, "backup"    # Z
    .param p4, "create"    # Z

    .prologue
    .line 262
    const-string v4, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before setPath, mCurrentPath ==  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 264
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 265
    .local v1, "current_path_tmp":Ljava/lang/String;
    const/4 v3, 0x0

    .line 267
    .local v3, "tmp_path":Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    const-string v4, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backup="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " create="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-eqz p3, :cond_1

    .line 275
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    const/4 v4, 0x0

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 287
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isLegalPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 288
    if-eqz p4, :cond_3

    .line 289
    const-string v4, "BluetoothPbapObexServer"

    const-string v5, "path create is forbidden!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/16 v4, 0xc3

    .line 299
    :goto_1
    return v4

    .line 268
    :catch_0
    move-exception v2

    .line 269
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "BluetoothPbapObexServer"

    const-string v5, "Get name header fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/16 v4, 0xd0

    goto :goto_1

    .line 280
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    if-nez v3, :cond_2

    .line 281
    const-string v1, ""

    goto :goto_0

    .line 283
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 292
    :cond_3
    const-string v4, "BluetoothPbapObexServer"

    const-string v5, "path is not legal"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/16 v4, 0xc4

    goto :goto_1

    .line 296
    :cond_4
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 299
    const/16 v4, 0xa0

    goto :goto_1
.end method
