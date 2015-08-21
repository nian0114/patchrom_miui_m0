.class public final enum Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;
.super Ljava/lang/Enum;
.source "MiuiNanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/MiuiNanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

.field public static final enum DELETE:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

.field public static final enum GET:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

.field public static final enum HEAD:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

.field public static final enum OPTIONS:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

.field public static final enum POST:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

.field public static final enum PUT:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->GET:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    new-instance v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->PUT:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    new-instance v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v5}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->POST:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    new-instance v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v6}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->DELETE:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    new-instance v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v7}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->HEAD:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    new-instance v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    const-string v1, "OPTIONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->OPTIONS:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    sget-object v1, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->GET:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->PUT:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->POST:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->DELETE:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->HEAD:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->OPTIONS:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->$VALUES:[Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static lookup(Ljava/lang/String;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;
    .locals 5
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->values()[Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "m":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v3    # "m":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;
    :goto_1
    return-object v3

    .restart local v3    # "m":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "m":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    return-object v0
.end method

.method public static values()[Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->$VALUES:[Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    return-object v0
.end method
