.class public Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
.super Ljava/lang/Object;
.source "WhetstonePackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_APP_STOP:I = 0x40000000

.field public static final FLAG_APP_SYSTEM:I = -0x80000000

.field public static final FLAG_BACKGROUND_START:I = 0x100

.field public static final FLAG_BITMAPCACHE:I = 0x1

.field public static final FLAG_DEAL_SCHEDULE:I = 0x1000

.field public static final FLAG_DESTORYACTIVITY:I = 0x4

.field public static final FLAG_DISABLEOPENGL:I = 0x2

.field public static final FLAG_SOFT_RESET:I = 0x400

.field public static final FLAG_TRIMBACKGOUNDAPPS:I = 0x20

.field public static final FLAG_TRIMHEAPS:I = 0x40

.field public static final FLAG_TRIMHEAPSIZE:I = 0x2000

.field public static final FLAG_TRIMPROCESS_BY_ACTIVITY:I = 0x800

.field public static final FLAG_TRIMSERVICES:I = 0x10

.field public static final FLAG_TRIM_OPENGL:I = 0x200

.field public static final FLAG_UPDATESETTING:I = 0x8

.field public static final FLAG_ZRAM:I = 0x80

.field public static final TRIM_LEVEL_WHETSTONE_HEAP:I = 0x3e9

.field public static final TRIM_LEVLE_WHETSTONE_BITMAPCACHE:I = 0x3e8

.field public static final TRIM_LEVLE_WHETSTONE_DEFAULT:I = 0x44c

.field public static final TRIM_LEVLE_WHETSTONE_NATIVE:I = 0x3ea

.field public static final TYPE_AUTO_START:I = 0x40

.field public static final TYPE_GAME:I = 0x2

.field public static final TYPE_IM_PUSH:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x20

.field public static final TYPE_LARGE_MEMORY:I = 0x80

.field public static final TYPE_MUSIC:I = 0x4

.field public static final TYPE_NOTE:I = 0x8

.field public static final TYPE_NOTIFICATION:I = 0x10


# instance fields
.field public flag:I

.field public packageName:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;

    invoke-direct {v0}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "system"    # Z

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    .line 47
    if-eqz p2, :cond_0

    const/high16 v0, -0x80000000

    :goto_0
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    .line 48
    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    .line 49
    return-void

    :cond_0
    move v0, v1

    .line 47
    goto :goto_0
.end method


# virtual methods
.method public addType(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 60
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    .line 61
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public isEnable(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 52
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemApp()Z
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isType(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 56
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{WhetstonePackageInfo#PacakgeName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 103
    const-string v1, ",BitmapCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_0
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 106
    const-string v1, ",DestoryActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_1
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 109
    const-string v1, ",isOPENGLDiable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_2
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_3

    .line 112
    const-string v1, ",TRIMHEAPS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_3
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_4

    .line 115
    const-string v1, ",TRIM_OPENGL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_4
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_5

    .line 118
    const-string v1, ",SOFT_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_5
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 121
    const-string v1, ",APP_SYSTEM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_6
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 124
    const-string v1, ",ZRAM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_7
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_8

    .line 127
    const-string v1, ",TRIMPROCESS_BY_ACTIVITY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_8
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_9

    .line 130
    const-string v1, ",FLAG_DEAL_SCHEDULE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_9
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_a

    .line 133
    const-string v1, ",FLAG_TRIMHEAPSIZE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "] Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    .line 137
    const-string v1, ",IM_PUSH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_b
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    .line 140
    const-string v1, ",Game"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_c
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_d

    .line 143
    const-string v1, ",note"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_d
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_e

    .line 146
    const-string v1, ",notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_e
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_f

    .line 149
    const-string v1, ",AUTO_START"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_f
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_10

    .line 152
    const-string v1, ",TYPE_LARGE_MEMORY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_10
    const-string v1, "] }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return-void
.end method
