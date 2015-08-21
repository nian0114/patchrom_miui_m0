.class Lcom/android/bluetooth/gatt/ServiceDeclaration;
.super Ljava/lang/Object;
.source "ServiceDeclaration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BtGatt.ServiceDeclaration"

.field public static final TYPE_CHARACTERISTIC:B = 0x2t

.field public static final TYPE_DESCRIPTOR:B = 0x3t

.field public static final TYPE_INCLUDED_SERVICE:B = 0x4t

.field public static final TYPE_SERVICE:B = 0x1t

.field public static final TYPE_UNDEFINED:B


# instance fields
.field mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;",
            ">;"
        }
    .end annotation
.end field

.field mNumHandles:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    .line 79
    return-void
.end method


# virtual methods
.method addCharacteristic(Ljava/util/UUID;II)V
    .locals 7
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "properties"    # I
    .param p3, "permissions"    # I

    .prologue
    .line 99
    iget-object v6, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    new-instance v0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;-><init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;III)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I

    .line 101
    return-void
.end method

.method addDescriptor(Ljava/util/UUID;I)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "permissions"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    new-instance v1, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;-><init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I

    .line 106
    return-void
.end method

.method addIncludedService(Ljava/util/UUID;II)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "serviceType"    # I
    .param p3, "instance"    # I

    .prologue
    .line 92
    new-instance v0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;-><init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;II)V

    .line 93
    .local v0, "entry":Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;
    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    .line 94
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I

    .line 96
    return-void
.end method

.method addService(Ljava/util/UUID;IIIZ)V
    .locals 7
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "serviceType"    # I
    .param p3, "instance"    # I
    .param p4, "minHandles"    # I
    .param p5, "advertisePreferred"    # Z

    .prologue
    .line 83
    iget-object v6, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    new-instance v0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;-><init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;IIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    if-nez p4, :cond_0

    .line 85
    iget v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iput p4, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I

    goto :goto_0
.end method

.method getNext()Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;

    .line 111
    .local v0, "entry":Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method getNumHandles()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mNumHandles:I

    return v0
.end method

.method isServiceAdvertisePreferred(Ljava/util/UUID;)Z
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 116
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;

    .line 117
    .local v0, "entry":Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    iget-boolean v2, v0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->advertisePreferred:Z

    .line 121
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
