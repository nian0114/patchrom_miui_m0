.class public Lcom/miui/whetstone/WhetstoneConfig;
.super Ljava/lang/Object;
.source "WhetstoneConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/WhetstoneConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mWhiteList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/miui/whetstone/WhetstoneConfig$1;

    invoke-direct {v0}, Lcom/miui/whetstone/WhetstoneConfig$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/WhetstoneConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/WhetstoneConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/whetstone/WhetstoneConfig$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/miui/whetstone/WhetstoneConfig$1;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/miui/whetstone/WhetstoneConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "whiteList"    # [Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/whetstone/WhetstoneConfig;->mWhiteList:[Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public getWhiteList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mWhiteList:[Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mWhiteList:[Ljava/lang/String;

    .line 32
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mWhiteList:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mWhiteList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method
