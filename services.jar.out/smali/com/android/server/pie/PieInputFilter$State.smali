.class final enum Lcom/android/server/pie/PieInputFilter$State;
.super Ljava/lang/Enum;
.source "PieInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pie/PieInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/pie/PieInputFilter$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/pie/PieInputFilter$State;

.field public static final enum DETECTING:Lcom/android/server/pie/PieInputFilter$State;

.field public static final enum LISTEN:Lcom/android/server/pie/PieInputFilter$State;

.field public static final enum LOCKED:Lcom/android/server/pie/PieInputFilter$State;

.field public static final enum POSTSYNTHESIZE:Lcom/android/server/pie/PieInputFilter$State;

.field public static final enum SYNTHESIZE:Lcom/android/server/pie/PieInputFilter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/pie/PieInputFilter$State;

    const-string v1, "LISTEN"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pie/PieInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pie/PieInputFilter$State;->LISTEN:Lcom/android/server/pie/PieInputFilter$State;

    new-instance v0, Lcom/android/server/pie/PieInputFilter$State;

    const-string v1, "DETECTING"

    invoke-direct {v0, v1, v3}, Lcom/android/server/pie/PieInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pie/PieInputFilter$State;->DETECTING:Lcom/android/server/pie/PieInputFilter$State;

    new-instance v0, Lcom/android/server/pie/PieInputFilter$State;

    const-string v1, "LOCKED"

    invoke-direct {v0, v1, v4}, Lcom/android/server/pie/PieInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pie/PieInputFilter$State;->LOCKED:Lcom/android/server/pie/PieInputFilter$State;

    new-instance v0, Lcom/android/server/pie/PieInputFilter$State;

    const-string v1, "SYNTHESIZE"

    invoke-direct {v0, v1, v5}, Lcom/android/server/pie/PieInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pie/PieInputFilter$State;->SYNTHESIZE:Lcom/android/server/pie/PieInputFilter$State;

    new-instance v0, Lcom/android/server/pie/PieInputFilter$State;

    const-string v1, "POSTSYNTHESIZE"

    invoke-direct {v0, v1, v6}, Lcom/android/server/pie/PieInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pie/PieInputFilter$State;->POSTSYNTHESIZE:Lcom/android/server/pie/PieInputFilter$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/pie/PieInputFilter$State;

    sget-object v1, Lcom/android/server/pie/PieInputFilter$State;->LISTEN:Lcom/android/server/pie/PieInputFilter$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pie/PieInputFilter$State;->DETECTING:Lcom/android/server/pie/PieInputFilter$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/pie/PieInputFilter$State;->LOCKED:Lcom/android/server/pie/PieInputFilter$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/pie/PieInputFilter$State;->SYNTHESIZE:Lcom/android/server/pie/PieInputFilter$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/pie/PieInputFilter$State;->POSTSYNTHESIZE:Lcom/android/server/pie/PieInputFilter$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/pie/PieInputFilter$State;->$VALUES:[Lcom/android/server/pie/PieInputFilter$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/pie/PieInputFilter$State;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/server/pie/PieInputFilter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/pie/PieInputFilter$State;

    return-object v0
.end method

.method public static values()[Lcom/android/server/pie/PieInputFilter$State;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/pie/PieInputFilter$State;->$VALUES:[Lcom/android/server/pie/PieInputFilter$State;

    invoke-virtual {v0}, [Lcom/android/server/pie/PieInputFilter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/pie/PieInputFilter$State;

    return-object v0
.end method
