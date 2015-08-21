.class Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;
.super Ljava/lang/Object;
.source "ServiceDeclaration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ServiceDeclaration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field advertisePreferred:Z

.field instance:I

.field permissions:I

.field properties:I

.field serviceHandle:I

.field serviceType:I

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ServiceDeclaration;

.field type:B

.field uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;I)V
    .locals 2
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "permissions"    # I

    .prologue
    const/4 v1, 0x0

    .line 67
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->this$0:Lcom/android/bluetooth/gatt/ServiceDeclaration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-byte v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    .line 37
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    .line 38
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    .line 39
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    .line 40
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    .line 41
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceHandle:I

    .line 42
    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->advertisePreferred:Z

    .line 68
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    .line 69
    iput-object p2, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    .line 70
    iput p3, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    .line 71
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;II)V
    .locals 2
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "serviceType"    # I
    .param p4, "instance"    # I

    .prologue
    const/4 v1, 0x0

    .line 44
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->this$0:Lcom/android/bluetooth/gatt/ServiceDeclaration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-byte v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    .line 37
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    .line 38
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    .line 39
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    .line 40
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    .line 41
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceHandle:I

    .line 42
    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->advertisePreferred:Z

    .line 45
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    .line 46
    iput-object p2, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    .line 47
    iput p4, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    .line 48
    iput p3, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;III)V
    .locals 2
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "properties"    # I
    .param p4, "permissions"    # I
    .param p5, "instance"    # I

    .prologue
    const/4 v1, 0x0

    .line 59
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->this$0:Lcom/android/bluetooth/gatt/ServiceDeclaration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-byte v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    .line 37
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    .line 38
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    .line 39
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    .line 40
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    .line 41
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceHandle:I

    .line 42
    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->advertisePreferred:Z

    .line 60
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    .line 61
    iput-object p2, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    .line 62
    iput p5, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    .line 63
    iput p4, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    .line 64
    iput p3, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    .line 65
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;IIZ)V
    .locals 2
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "serviceType"    # I
    .param p4, "instance"    # I
    .param p5, "advertisePreferred"    # Z

    .prologue
    const/4 v1, 0x0

    .line 51
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->this$0:Lcom/android/bluetooth/gatt/ServiceDeclaration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-byte v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    .line 37
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    .line 38
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    .line 39
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    .line 40
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    .line 41
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceHandle:I

    .line 42
    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->advertisePreferred:Z

    .line 52
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    .line 53
    iput-object p2, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    .line 54
    iput p4, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    .line 55
    iput p3, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    .line 56
    iput-boolean p5, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->advertisePreferred:Z

    .line 57
    return-void
.end method
