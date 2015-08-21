.class Lcom/android/bluetooth/gatt/HandleMap$Entry;
.super Ljava/lang/Object;
.source "HandleMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/HandleMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field advertisePreferred:Z

.field charHandle:I

.field handle:I

.field instance:I

.field serverIf:I

.field serviceHandle:I

.field serviceType:I

.field started:Z

.field final synthetic this$0:Lcom/android/bluetooth/gatt/HandleMap;

.field type:I

.field uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/HandleMap;IIILjava/util/UUID;I)V
    .locals 2
    .param p2, "serverIf"    # I
    .param p3, "type"    # I
    .param p4, "handle"    # I
    .param p5, "uuid"    # Ljava/util/UUID;
    .param p6, "serviceHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 67
    iput-object p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->this$0:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 37
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 38
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 40
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 41
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    .line 42
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    .line 43
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    .line 44
    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->advertisePreferred:Z

    .line 68
    iput p2, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 69
    iput p3, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 70
    iput p4, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 71
    iput-object p5, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 72
    iget v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    iput v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 73
    iput p6, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    .line 74
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/HandleMap;IIILjava/util/UUID;II)V
    .locals 2
    .param p2, "serverIf"    # I
    .param p3, "type"    # I
    .param p4, "handle"    # I
    .param p5, "uuid"    # Ljava/util/UUID;
    .param p6, "serviceHandle"    # I
    .param p7, "charHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 76
    iput-object p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->this$0:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 37
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 38
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 40
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 41
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    .line 42
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    .line 43
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    .line 44
    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->advertisePreferred:Z

    .line 77
    iput p2, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 78
    iput p3, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 79
    iput p4, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 80
    iput-object p5, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 81
    iget v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    iput v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 82
    iput p6, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    .line 83
    iput p7, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    .line 84
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/HandleMap;IILjava/util/UUID;II)V
    .locals 2
    .param p2, "serverIf"    # I
    .param p3, "handle"    # I
    .param p4, "uuid"    # Ljava/util/UUID;
    .param p5, "serviceType"    # I
    .param p6, "instance"    # I

    .prologue
    const/4 v1, 0x0

    .line 47
    iput-object p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->this$0:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 37
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 38
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 40
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 41
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    .line 42
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    .line 43
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    .line 44
    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->advertisePreferred:Z

    .line 48
    iput p2, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 50
    iput p3, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 51
    iput-object p4, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 52
    iput p6, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 53
    iput p5, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    .line 54
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/HandleMap;IILjava/util/UUID;IIZ)V
    .locals 2
    .param p2, "serverIf"    # I
    .param p3, "handle"    # I
    .param p4, "uuid"    # Ljava/util/UUID;
    .param p5, "serviceType"    # I
    .param p6, "instance"    # I
    .param p7, "advertisePreferred"    # Z

    .prologue
    const/4 v1, 0x0

    .line 57
    iput-object p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->this$0:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 37
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 38
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 40
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 41
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    .line 42
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    .line 43
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    .line 44
    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->advertisePreferred:Z

    .line 58
    iput p2, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 60
    iput p3, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 61
    iput-object p4, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 62
    iput p6, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 63
    iput p5, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    .line 64
    iput-boolean p7, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->advertisePreferred:Z

    .line 65
    return-void
.end method
