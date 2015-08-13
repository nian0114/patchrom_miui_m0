.class final Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;
.super Ljava/lang/Object;
.source "WhetstonePackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 87
    new-instance v0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;-><init>(Landroid/os/Parcel;Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 90
    new-array v0, p1, [Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;->newArray(I)[Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    move-result-object v0

    return-object v0
.end method
