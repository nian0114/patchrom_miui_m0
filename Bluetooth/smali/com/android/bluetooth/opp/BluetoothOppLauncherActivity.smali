.class public Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;
.super Lmiui/app/Activity;
.source "BluetoothOppLauncherActivity.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothLauncherActivity"

.field private static final V:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->launchDevicePicker()V

    return-void
.end method

.method private creatFileForSharedContent(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shareContent"    # Ljava/lang/CharSequence;
    .param p3, "shareHtml"    # Ljava/lang/String;

    .prologue
    .line 243
    if-nez p2, :cond_1

    .line 244
    const/4 v4, 0x0

    .line 284
    :cond_0
    :goto_0
    return-object v4

    .line 247
    :cond_1
    const/4 v4, 0x0

    .line 248
    .local v4, "fileUri":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 250
    .local v5, "outStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f06008b

    invoke-virtual {p0, v8}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".html"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "fileName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 253
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, "uri":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/></head><body><a href=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</a></p>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</body></html>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "content":Ljava/lang/String;
    if-eqz p3, :cond_2

    move-object v1, p3

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, "byteBuff":[B
    const/4 v7, 0x0

    invoke-virtual {p1, v3, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v5, v0, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    new-instance v7, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v7, "BluetoothLauncherActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Created one file for shared content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v5, :cond_0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 280
    :catch_0
    move-exception v2

    .line 281
    .end local v0    # "byteBuff":[B
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v6    # "uri":Ljava/lang/String;
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 268
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 269
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v7, "BluetoothLauncherActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    if-eqz v5, :cond_0

    .line 278
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 280
    :catch_2
    move-exception v2

    goto :goto_1

    .line 271
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 272
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    const-string v7, "BluetoothLauncherActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 277
    if-eqz v5, :cond_0

    .line 278
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 280
    :catch_4
    move-exception v2

    goto :goto_1

    .line 273
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 274
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v7, "BluetoothLauncherActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 277
    if-eqz v5, :cond_0

    .line 278
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v2

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_4

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_4
    :goto_2
    throw v7

    :catch_7
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private final isBluetoothAllowed()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 211
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 214
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string v8, "airplane_mode_on"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_1

    move v2, v6

    .line 216
    .local v2, "isAirplaneModeOn":Z
    :goto_0
    if-nez v2, :cond_2

    .line 239
    :cond_0
    :goto_1
    return v6

    .end local v2    # "isAirplaneModeOn":Z
    :cond_1
    move v2, v7

    .line 214
    goto :goto_0

    .line 221
    .restart local v2    # "isAirplaneModeOn":Z
    :cond_2
    const-string v8, "airplane_mode_radios"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    if-nez v0, :cond_3

    move v3, v6

    .line 225
    .local v3, "isAirplaneSensitive":Z
    :goto_2
    if-eqz v3, :cond_0

    .line 230
    const-string v8, "airplane_mode_toggleable_radios"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "airplaneModeToggleableRadios":Ljava/lang/String;
    if-nez v1, :cond_4

    move v4, v7

    .line 234
    .local v4, "isAirplaneToggleable":Z
    :goto_3
    if-nez v4, :cond_0

    move v6, v7

    .line 239
    goto :goto_1

    .line 223
    .end local v1    # "airplaneModeToggleableRadios":Ljava/lang/String;
    .end local v3    # "isAirplaneSensitive":Z
    .end local v4    # "isAirplaneToggleable":Z
    :cond_3
    const-string v8, "bluetooth"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_2

    .line 232
    .restart local v1    # "airplaneModeToggleableRadios":Ljava/lang/String;
    .restart local v3    # "isAirplaneSensitive":Z
    :cond_4
    const-string v8, "bluetooth"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_3
.end method

.method private final launchDevicePicker()V
    .locals 4

    .prologue
    .line 189
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v0, "in":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    .end local v0    # "in":Landroid/content/Intent;
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, "in1":Landroid/content/Intent;
    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    const-string v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    const-string v3, "com.android.bluetooth"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super/range {p0 .. p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v15, 0x7f03000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->setContentView(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .local v2, "action":Ljava/lang/String;
    const-string v15, "android.intent.action.SEND"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 73
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->isBluetoothAllowed()Z

    move-result v15

    if-nez v15, :cond_2

    new-instance v6, Landroid/content/Intent;

    const-class v15, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v6, "in":Landroid/content/Intent;
    const/high16 v15, 0x10000000

    invoke-virtual {v6, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v15, "title"

    const v16, 0x7f060033

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "content"

    const v16, 0x7f060034

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .end local v6    # "in":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v15, "android.intent.action.SEND"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    .local v12, "type":Ljava/lang/String;
    const-string v15, "android.intent.extra.STREAM"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .local v10, "stream":Landroid/net/Uri;
    const-string v15, "android.intent.extra.TEXT"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, "extra_text":Ljava/lang/CharSequence;
    const-string v15, "android.intent.extra.HTML_TEXT"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "extra_html":Ljava/lang/String;
    if-eqz v10, :cond_3

    if-eqz v12, :cond_3

    new-instance v11, Ljava/lang/Thread;

    new-instance v15, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12, v10}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v11, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v11, "t":Ljava/lang/Thread;
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .end local v11    # "t":Ljava/lang/Thread;
    :cond_3
    if-eqz v4, :cond_5

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v3}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->creatFileForSharedContent(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .local v5, "fileUri":Landroid/net/Uri;
    if-eqz v5, :cond_4

    new-instance v11, Ljava/lang/Thread;

    new-instance v15, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12, v5}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v11, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .restart local v11    # "t":Ljava/lang/Thread;
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .end local v11    # "t":Ljava/lang/Thread;
    :cond_4
    const-string v15, "BluetoothLauncherActivity"

    const-string v16, "Error trying to do set text...File not created!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto :goto_0

    .end local v5    # "fileUri":Landroid/net/Uri;
    :cond_5
    const-string v15, "BluetoothLauncherActivity"

    const-string v16, "type is null; or sending file URI is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto :goto_0

    .end local v3    # "extra_html":Ljava/lang/String;
    .end local v4    # "extra_text":Ljava/lang/CharSequence;
    .end local v10    # "stream":Landroid/net/Uri;
    .end local v12    # "type":Ljava/lang/String;
    :cond_6
    const-string v15, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .local v9, "mimeType":Ljava/lang/String;
    const-string v15, "android.intent.extra.STREAM"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .local v14, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v9, :cond_7

    if-eqz v14, :cond_7

    new-instance v11, Ljava/lang/Thread;

    new-instance v15, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9, v14}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {v11, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .restart local v11    # "t":Ljava/lang/Thread;
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .end local v11    # "t":Ljava/lang/Thread;
    :cond_7
    const-string v15, "BluetoothLauncherActivity"

    const-string v16, "type is null; or sending files URIs are null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto/16 :goto_0

    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v14    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_8
    const-string v15, "android.btopp.intent.action.OPEN"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .local v13, "uri":Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .local v8, "intent1":Landroid/content/Intent;
    invoke-virtual {v8, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "com.android.bluetooth"

    const-class v16, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto/16 :goto_0

    .end local v8    # "intent1":Landroid/content/Intent;
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_9
    const-string v15, "BluetoothLauncherActivity"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unsupported action: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto/16 :goto_0
.end method
