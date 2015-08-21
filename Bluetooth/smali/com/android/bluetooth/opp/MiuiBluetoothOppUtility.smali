.class public Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;
.super Ljava/lang/Object;
.source "MiuiBluetoothOppUtility.java"


# static fields
.field static final DBG:Z = true

.field static final END_BYTE:I = 0xff

.field static final TAG:Ljava/lang/String; = "MiuiBluetoothOppUtility"

.field static mTempFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->mTempFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToByteArray(J)[B
    .locals 7
    .param p0, "l"    # J

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    new-array v0, v6, [B

    .local v0, "b":[B
    const/4 v1, 0x0

    const/16 v2, 0x38

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    shr-long v2, p0, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    and-long v2, v4, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static convertToLong([B)J
    .locals 9
    .param p0, "b"    # [B

    .prologue
    const-wide/16 v3, 0x0

    .local v3, "result":J
    const-wide/16 v5, 0x0

    .local v5, "value":J
    const-wide/16 v1, 0x0

    .local v1, "power":J
    array-length v7, p0

    add-int/lit8 v0, v7, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    aget-byte v7, p0, v0

    int-to-long v5, v7

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_0

    const-wide/16 v7, 0x100

    add-long/2addr v5, v7

    :cond_0
    long-to-int v7, v1

    shl-long v7, v5, v7

    or-long/2addr v3, v7

    const-wide/16 v7, 0x8

    add-long/2addr v1, v7

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method public static genFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .local v6, "suffix":Ljava/lang/String;
    const/16 v8, 0x2e

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .local v4, "pointPos":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_0
    const/4 v1, 0x0

    .local v1, "digester":Ljava/security/MessageDigest;
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .local v0, "bs":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v0

    if-ge v3, v8, :cond_2

    aget-byte v8, v0, v3

    and-int/lit8 v7, v8, 0xf

    .local v7, "v":I
    if-gez v7, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "bs":[B
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "v":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v8, 0x0

    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    return-object v8

    .restart local v0    # "bs":[B
    .restart local v3    # "i":I
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_2
.end method

.method public static getFileAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->getOriginalUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v16

    .local v16, "scheme":Ljava/lang/String;
    const-string v3, "content"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v13, 0x0

    .local v13, "filepath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v9

    :goto_0
    if-eqz v9, :cond_1

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v3, "MiuiBluetoothOppUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filepath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v13, :cond_6

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v13    # "filepath":Ljava/lang/String;
    :goto_1
    return-object v13

    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "filepath":Ljava/lang/String;
    :catch_0
    move-exception v11

    .local v11, "e1":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v3, "MiuiBluetoothOppUtility"

    const-string v4, "query MediaColumns.DATA error!."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_2
    const/4 v9, 0x0

    :try_start_3
    const-string v3, "r"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v12

    .local v12, "fd":Landroid/content/res/AssetFileDescriptor;
    const-string v3, "temp"

    const-string v4, "tmp"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->mTempFile:Ljava/io/File;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .local v7, "bis":Ljava/io/BufferedInputStream;
    new-instance v17, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    sget-object v4, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->mTempFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v17, "tmpFile":Ljava/io/BufferedOutputStream;
    const v14, 0x19000

    .local v14, "length":I
    const/4 v15, 0x0

    .local v15, "readLen":I
    new-array v8, v14, [B

    .local v8, "buf":[B
    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v7, v8, v3, v14}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v15

    const/4 v3, -0x1

    if-eq v15, v3, :cond_3

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v3, v15}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    .end local v7    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "buf":[B
    .end local v12    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v14    # "length":I
    .end local v15    # "readLen":I
    .end local v17    # "tmpFile":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v10

    .local v10, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v13, 0x0

    goto :goto_0

    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "buf":[B
    .restart local v12    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v14    # "length":I
    .restart local v15    # "readLen":I
    .restart local v17    # "tmpFile":Ljava/io/BufferedOutputStream;
    :cond_3
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    sget-object v3, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->mTempFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v13

    goto/16 :goto_0

    .end local v7    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "buf":[B
    .end local v12    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v14    # "length":I
    .end local v15    # "readLen":I
    .end local v17    # "tmpFile":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_6 .. :try_end_6} :catch_4

    const/4 v13, 0x0

    goto/16 :goto_0

    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "e1":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v10

    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .end local v10    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_4
    move-exception v10

    .local v10, "e":Landroid/database/CursorWindowAllocationException;
    const/4 v9, 0x0

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .end local v10    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v13    # "filepath":Ljava/lang/String;
    :cond_5
    const-string v3, "file"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_1
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 7

    .prologue
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "wlan"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :goto_0
    return-object v5

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0    # "e":Ljava/net/SocketException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getOriginalUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "mUri":Ljava/lang/String;
    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "atIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :cond_0
    const-string v2, "MiuiBluetoothOppUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "originalUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static removeTempFile()V
    .locals 2

    .prologue
    sget-object v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->mTempFile:Ljava/io/File;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->mTempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MiuiBluetoothOppUtility"

    const-string v1, "delete temp file error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
