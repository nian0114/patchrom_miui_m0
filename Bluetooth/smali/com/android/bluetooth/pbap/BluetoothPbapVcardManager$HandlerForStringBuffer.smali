.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerForStringBuffer"
.end annotation


# instance fields
.field private operation:Ljavax/obex/Operation;

.field private outputStream:Ljava/io/OutputStream;

.field private phoneOwnVCard:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    .locals 1
    .param p2, "op"    # Ljavax/obex/Operation;
    .param p3, "ownerVCard"    # Ljava/lang/String;

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->phoneOwnVCard:Ljava/lang/String;

    .line 608
    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->operation:Ljavax/obex/Operation;

    .line 609
    if-eqz p3, :cond_0

    .line 610
    iput-object p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->phoneOwnVCard:Ljava/lang/String;

    .line 614
    :cond_0
    return-void
.end method

.method private write(Ljava/lang/String;)Z
    .locals 4
    .param p1, "vCard"    # Ljava/lang/String;

    .prologue
    .line 618
    if-eqz p1, :cond_0

    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    const/4 v1, 0x1

    .line 625
    :goto_0
    return v1

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write outputstrem failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onEntryCreated(Ljava/lang/String;)Z
    .locals 1
    .param p1, "vcard"    # Ljava/lang/String;

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->write(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onInit(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 630
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->operation:Ljavax/obex/Operation;

    invoke-interface {v1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->outputStream:Ljava/io/OutputStream;

    .line 631
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->phoneOwnVCard:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 632
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->phoneOwnVCard:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->write(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 638
    :goto_0
    return v1

    .line 634
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open outputstrem failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->outputStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->operation:Ljavax/obex/Operation;

    invoke-static {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    :cond_0
    return-void
.end method
