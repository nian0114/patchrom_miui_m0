.class public Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
.super Ljava/lang/Object;
.source "BluetoothOppReceiveFileInfo.java"


# static fields
.field private static final D:Z = true

.field private static final V:Z

.field private static sDesiredStoragePath:Ljava/lang/String;


# instance fields
.field public mData:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mLength:J

.field public mOutputStream:Ljava/io/FileOutputStream;

.field public mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v1, 0x0

    .line 86
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v4, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(Ljava/lang/String;JLjava/io/FileOutputStream;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "length"    # J
    .param p4, "status"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mData:Ljava/lang/String;

    .line 73
    iput p4, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    .line 74
    iput-wide p2, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/io/FileOutputStream;I)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "length"    # J
    .param p4, "outputStream"    # Ljava/io/FileOutputStream;
    .param p5, "status"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    .line 81
    iput p5, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    .line 82
    iput-wide p2, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    .line 83
    return-void
.end method

.method private static chooseUniquefilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "fullfilename":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    .line 241
    :goto_0
    return-object v5

    .line 217
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/bluetooth/opp/Constants;->filename_SEQUENCE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 229
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 230
    .local v3, "rnd":Ljava/util/Random;
    const/4 v4, 0x1

    .line 231
    .local v4, "sequence":I
    const/4 v2, 0x1

    .local v2, "magnitude":I
    :goto_1
    const v5, 0x3b9aca00

    if-ge v2, v5, :cond_3

    .line 232
    const/4 v1, 0x0

    .local v1, "iteration":I
    :goto_2
    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    .line 235
    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 231
    :cond_2
    mul-int/lit8 v2, v2, 0xa

    goto :goto_1

    .line 241
    .end local v1    # "iteration":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static choosefilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "hint"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2f

    .line 245
    const/4 v0, 0x0

    .line 248
    .local v0, "filename":Ljava/lang/String;
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    const/16 v2, 0x5c

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 253
    const-string v2, "\\s"

    const-string v3, " "

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 256
    const-string v2, "[:\"<>*?|]"

    const-string v3, "_"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 258
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 259
    .local v1, "index":I
    if-lez v1, :cond_1

    .line 260
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    .end local v1    # "index":I
    :cond_0
    :goto_0
    return-object v0

    .line 262
    .restart local v1    # "index":I
    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static generateFileInfo(Landroid/content/Context;I)Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    .locals 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 93
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 94
    .local v3, "contentUri":Landroid/net/Uri;
    const/4 v15, 0x0

    .local v15, "filename":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "hint":Ljava/lang/String;
    const/16 v21, 0x0

    .line 95
    .local v21, "mimeType":Ljava/lang/String;
    const-wide/16 v18, 0x0

    .line 96
    .local v18, "length":J
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "hint"

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const-string v9, "total_bytes"

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const-string v9, "mimetype"

    aput-object v9, v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 99
    .local v20, "metadataCursor":Landroid/database/Cursor;
    if-eqz v20, :cond_a

    .line 101
    :try_start_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 102
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 103
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    int-to-long v6, v4

    .line 104
    .end local v18    # "length":J
    .local v6, "length":J
    const/4 v4, 0x2

    :try_start_1
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v21

    .line 107
    :goto_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 111
    :goto_1
    const/4 v10, 0x0

    .line 112
    .local v10, "base":Ljava/io/File;
    const/16 v23, 0x0

    .line 114
    .local v23, "stat":Landroid/os/StatFs;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v8, "mounted"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    .line 116
    .local v22, "root":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    .end local v10    # "base":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/bluetooth"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v10    # "base":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    const-string v4, "BluetoothOpp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receive File aborted - can\'t create base directory "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    .line 186
    .end local v22    # "root":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 107
    .end local v6    # "length":J
    .end local v10    # "base":Ljava/io/File;
    .end local v23    # "stat":Landroid/os/StatFs;
    .restart local v18    # "length":J
    :catchall_0
    move-exception v4

    move-wide/from16 v6, v18

    .end local v18    # "length":J
    .restart local v6    # "length":J
    :goto_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    throw v4

    .line 122
    .restart local v10    # "base":Ljava/io/File;
    .restart local v22    # "root":Ljava/lang/String;
    .restart local v23    # "stat":Landroid/os/StatFs;
    :cond_0
    new-instance v23, Landroid/os/StatFs;

    .end local v23    # "stat":Landroid/os/StatFs;
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 133
    .restart local v23    # "stat":Landroid/os/StatFs;
    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v8, v4

    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x4

    sub-long v25, v25, v27

    mul-long v8, v8, v25

    cmp-long v4, v8, v6

    if-gez v4, :cond_2

    .line 134
    const-string v4, "BluetoothOpp"

    const-string v8, "Receive File aborted - not enough free space"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ee

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto :goto_2

    .line 124
    .end local v22    # "root":Ljava/lang/String;
    :cond_1
    const-string v4, "BluetoothOpp"

    const-string v8, "Receive File aborted - no external storage"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ed

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto :goto_2

    .line 138
    .restart local v22    # "root":Ljava/lang/String;
    :cond_2
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->choosefilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 139
    if-nez v15, :cond_3

    .line 141
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto :goto_2

    .line 143
    :cond_3
    const/4 v14, 0x0

    .line 144
    .local v14, "extension":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v15, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 145
    .local v12, "dotIndex":I
    if-gez v12, :cond_5

    .line 146
    if-nez v21, :cond_4

    .line 148
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto :goto_2

    .line 150
    :cond_4
    const-string v14, ""

    .line 156
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 158
    invoke-static {v15, v14}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->chooseUniquefilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "fullfilename":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->safeCanonicalPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 162
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto/16 :goto_2

    .line 153
    .end local v5    # "fullfilename":Ljava/lang/String;
    :cond_5
    invoke-virtual {v15, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 154
    const/4 v4, 0x0

    invoke-virtual {v15, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    .line 166
    .restart local v5    # "fullfilename":Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_8

    .line 168
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 169
    const/16 v4, 0x2f

    invoke-virtual {v5, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v17, v4, 0x1

    .line 171
    .local v17, "index":I
    if-lez v17, :cond_7

    .line 172
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 174
    .local v11, "displayName":Ljava/lang/String;
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 175
    .local v24, "updateValues":Landroid/content/ContentValues;
    const-string v4, "hint"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v4, v3, v0, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 179
    .end local v11    # "displayName":Ljava/lang/String;
    .end local v24    # "updateValues":Landroid/content/ContentValues;
    :cond_7
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(Ljava/lang/String;JLjava/io/FileOutputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 181
    .end local v17    # "index":I
    :catch_0
    move-exception v13

    .line 182
    .local v13, "e":Ljava/io/IOException;
    const-string v4, "BluetoothOpp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error when creating file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto/16 :goto_2

    .line 186
    .end local v13    # "e":Ljava/io/IOException;
    :cond_8
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto/16 :goto_2

    .line 107
    .end local v5    # "fullfilename":Ljava/lang/String;
    .end local v10    # "base":Ljava/io/File;
    .end local v12    # "dotIndex":I
    .end local v14    # "extension":Ljava/lang/String;
    .end local v22    # "root":Ljava/lang/String;
    .end local v23    # "stat":Landroid/os/StatFs;
    :catchall_1
    move-exception v4

    goto/16 :goto_3

    .end local v6    # "length":J
    .restart local v18    # "length":J
    :cond_9
    move-wide/from16 v6, v18

    .end local v18    # "length":J
    .restart local v6    # "length":J
    goto/16 :goto_0

    .end local v6    # "length":J
    .restart local v18    # "length":J
    :cond_a
    move-wide/from16 v6, v18

    .end local v18    # "length":J
    .restart local v6    # "length":J
    goto/16 :goto_1
.end method

.method private static safeCanonicalPath(Ljava/lang/String;)Z
    .locals 6
    .param p0, "uniqueFileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 193
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v2, "receiveFile":Ljava/io/File;
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/bluetooth"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    .line 198
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "canonicalPath":Ljava/lang/String;
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 208
    .end local v0    # "canonicalPath":Ljava/lang/String;
    .end local v2    # "receiveFile":Ljava/io/File;
    :goto_0
    return v3

    .line 205
    .restart local v0    # "canonicalPath":Ljava/lang/String;
    .restart local v2    # "receiveFile":Ljava/io/File;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "canonicalPath":Ljava/lang/String;
    .end local v2    # "receiveFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 208
    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method
